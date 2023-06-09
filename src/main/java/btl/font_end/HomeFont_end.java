package btl.font_end;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Map;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import btl.dao.DaoAll;
import btl.dao.DaoPro;
import btl.entities.Cart;
import btl.entities.Categories;
import btl.entities.Products;
import btl.entities.Account;
import btl.entities.Account_roles;
import btl.entities.Role;

@Controller
public class HomeFont_end {
	@Autowired
	private DaoPro daoPro;

	@Autowired
	private DaoAll<Categories> cat;

	@Autowired
	private DaoAll<Account> accountDao;
	@Autowired
	private DaoAll<Role> roleDao;
	@Autowired
	private DaoAll<Account_roles> arDao;

	@RequestMapping(value = { "/", "home" })
	public String home(Model model) {

		List<Products> listAll = daoPro.getAll();
		model.addAttribute("listAll", listAll);
		List<Products> listfeatured = daoPro.getFeatured();
		model.addAttribute("listFeatured", listfeatured);

		List<Categories> listCat = cat.getAll();
		model.addAttribute("listCat", listCat);

		return "font-end/home";
	}

	@RequestMapping("shop")
	public String shop(@RequestParam("catId") Integer catId, Model model) {

		List<Products> listAll = daoPro.getAll();
		model.addAttribute("listAll", listAll);
		List<Products> listbest = daoPro.getBestSellerList();
		model.addAttribute("listBest", listbest);
		List<Products> listsale = daoPro.getSale();
		model.addAttribute("listSale", listsale);
		List<Products> listnew = daoPro.getNewProduct();
		model.addAttribute("listNew", listnew);
		List<Products> listCatId = daoPro.getCatId(catId);
		model.addAttribute("listCatId", listCatId);

		List<Categories> listCat = cat.getAll();
		model.addAttribute("listCat", listCat);

		model.addAttribute("catId", catId);
		return "font-end/shop";
	}

	@RequestMapping("detail")
	public String detail(@RequestParam("proId") Long proId, Model model) {

		Cart cart = new Cart();
		model.addAttribute("cart", cart);

		Products proDetail = daoPro.findById(proId);
		model.addAttribute("pro", proDetail);

		List<Products> listAll = daoPro.getAll();
		model.addAttribute("listAll", listAll);

		List<Categories> listCat = cat.getAll();
		model.addAttribute("listCat", listCat);

		return "font-end/detail";
	}

	@RequestMapping("cart")
	public String cart(Model model) {

		model.addAttribute("cartU", new Cart());

		List<Categories> listCat = cat.getAll();
		model.addAttribute("listCat", listCat);

		return "font-end/cart";
	}

	@RequestMapping("/AddToCart")
	public String addToCart(@RequestParam("proId") Long proId, @ModelAttribute("cart") Cart cart, HttpSession session) {
		HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
		if (cartItems == null) {
			cartItems = new HashMap<>();
		}
		Products pro = daoPro.findById(proId);
		if (pro != null) {
			if (cartItems.containsKey(proId)) {
				Cart item = cartItems.get(proId);
				item.setPro(pro);
				item.setQuantity(item.getQuantity() + 1);
				cartItems.put(proId, item);
			} else {
				Cart item = new Cart();
				item.setPro(pro);
				item.setQuantity(cart.getQuantity());
				
				cartItems.put(proId, item);
			}
		}
		session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartItem", totalItem(cartItems));
		return "redirect:/cart";
	}


	@RequestMapping("/removeItem")
	public String viewRemove(@RequestParam("proId") Long proId, HttpSession session) {
		HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
		if (cartItems == null) {
			cartItems = new HashMap<>();
		}
		if (cartItems.containsKey(proId)) {
			cartItems.remove(proId);
		}
		session.setAttribute("myCartItems", cartItems);
		return "redirect:/cart";
	}

	@RequestMapping("/clearCart")
	public String viewClear(HttpSession session) {
		HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
		if (cartItems == null) {
			cartItems = new HashMap<>();
		}
		cartItems.clear();
		session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartItem", totalItem(cartItems));
		session.setAttribute("myCartNumber", cartItems.size());
		return "redirect:/cart";
	}

	 public double totalPrice(HashMap<Long, Cart> cartItems) {
	        int count = 0;
	        for (Map.Entry<Long, Cart> list : cartItems.entrySet()) {
	        	if(list.getValue().getPro().getSalePrice() == 0) {
	        		count += list.getValue().getPro().getPrice() * list.getValue().getQuantity();
	        	} else {
	        		count += list.getValue().getPro().getSalePrice() * list.getValue().getQuantity();
	        	}
	        }
	        return count;
	    }
	 
	 public int totalItem(HashMap<Long, Cart> cartItems) {
	        int count = 0;
	        for (Map.Entry<Long, Cart> list : cartItems.entrySet()) {
	        	count += list.getValue().getQuantity();
	        }
	        return count;
	    }
	 
		@RequestMapping("/updateCart")
		public String viewUpdate(@RequestParam("proId") Long proId, @ModelAttribute("cartU") Cart cart,HttpSession session) {
			HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
			if (cartItems == null) {
				cartItems = new HashMap<>();
			}

			if (cartItems.containsKey(proId)) {
				Cart item = cartItems.get(proId);
				item.setQuantity(cart.getQuantity());
				cartItems.put(proId, item);
				if (item.getQuantity()==0) {
					cartItems.remove(proId);
				}
			}
			session.setAttribute("myCartItems", cartItems);
	        session.setAttribute("myCartTotal", totalPrice(cartItems));
	        session.setAttribute("myCartItem", totalItem(cartItems));
			return "redirect:/cart";
		}

//	Đăng Ký Tài khoản
	@RequestMapping("/register")
	public String registerPage(Model model) {
		Account ac = new Account();
		model.addAttribute("ac", ac);
		return "font-end/register";
	}

	@RequestMapping("/createAccount")
	public String createAccount(@RequestParam("confirmPassword") String cp, @Valid @ModelAttribute("ac") Account accout,
			BindingResult result, Model model) {

		accout.setEnabled(true);

		if (result.hasErrors()) {
			model.addAttribute("ac", accout);
			return "font-end/register";
		} else if (!accout.getPassword().equalsIgnoreCase(cp)) {

			model.addAttribute("err", "Mật khẩu không phù hợp");
			return "font-end/register";
		} else {

			Account_roles ar = new Account_roles();
			String rl = "ROLE_USER";
			Role role = roleDao.findByName(rl);
			ar.setAc(accout);
			ar.setRole(role);

			boolean bl = accountDao.insert(accout);
			boolean bl2 = arDao.insert(ar);
			if (bl & bl2) {
				model.addAttribute("done", "Tạo tài khoản thành công");
				return "font-end/login";
			} else {
				model.addAttribute("err", "Có lỗi Tạo không thành công!");
				return "font-end/register";
			}
		}
	}

// Đăng Nhập và Đăng Xuất
	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error, Model model) {
		if (error != null) {
			model.addAttribute("mess", "Đăng nhập thất bại!");
		}
		return "font-end/login";
	}

	@RequestMapping("/logout")
	public String logout(Model model) {
		model.addAttribute("mess", "Đăng xuất thành công");
		return "font-end/login";
	}
}
