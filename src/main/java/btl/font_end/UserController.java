package btl.font_end;

import java.security.Principal;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import btl.entities.Cart;
import btl.entities.CustomAccountDetails;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@RequestMapping("/home")
	public String userPage(Principal principal,Model model) {
		
		model.addAttribute("mess", "Welcome user page");
		CustomAccountDetails ac = (CustomAccountDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("ac", ac);
			if(ac == null) {
				return "font-end/login";
			} else {
				return "font-end/home";			
			}
	}
	
//	 Order 
		 @RequestMapping("/order")
			public String orderPage(Model model) {
				CustomAccountDetails ac = (CustomAccountDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
				model.addAttribute("ac", ac);
				if(ac == null) {
					return "font-end/login";
				} else {		
					return "font-end/order";
				}
			}
	
}
