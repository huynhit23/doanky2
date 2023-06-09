<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ogani | Template</title>

<!-- Google Font -->
<jsp:include page="link_css.jsp"></jsp:include>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
		<div class="humberger__menu__logo">
			<a href="#"><img src="<c:url value="resources"/>/img/logo.png"
				alt=""></a>
		</div>
		<div class="humberger__menu__cart">
			<ul>
				<li><a href="#"><i class="fa fa-heart"></i></a></li>
				<li><a href="#"><i class="fa fa-shopping-bag"></i> </a></li>
			</ul>
			<!-- <div class="header__cart__price">
				item: <span>$150.00</span>
			</div> -->
		</div>

		<nav class="humberger__menu__nav mobile-menu">
			<ul>
				<li class="active"><a href="home">Home</a></li>
				<li class=""><a href="shop?catId=0">Shop</a></li>
				<li><a href="#">Pages</a>
					<ul class="header__menu__dropdown">
						<li><a href="./shop-details.html">Shop Details</a></li>
						<li><a href="./shoping-cart.html">Shoping Cart</a></li>
						<li><a href="./checkout.html">Check Out</a></li>
						<li><a href="./blog-details.html">Blog Details</a></li>
					</ul></li>
				<li><a href="./blog.html">Blog</a></li>
				<li><a href="./contact.html">Contact</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="header__top__right__social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a>
			<a href="#"><i class="fa fa-pinterest-p"></i></a>
		</div>
		<div class="humberger__menu__contact">
			<ul>
				<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
				<li>Miễn phí giao hàng cho trong 2km</li>
			</ul>
		</div>
	</div>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__top__left">
							<ul>
								<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
								<li>Miễn phí giao hàng cho trong 2km</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__top__right">
							<div class="header__top__right__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-linkedin"></i></a> <a href="#"><i
									class="fa fa-pinterest-p"></i></a>
							</div>

							<c:if test="${not empty pageContext.request.userPrincipal.name}">
								<div class="header__top__right__social">
								<p> Hello :<span style="color: red;">${pageContext.request.userPrincipal.name} </span> </p>
								</div>
								<div class="header__top__right__auth" style="background: none;">
									<form action="<c:url value="/j_spring_security_logout" />"
										method="post">
										<input style="background: none; border: none;" type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" /> <i class="fas fa-sign-out-alt"></i><input
											class="stext-102 cl2 hov-cl1 trans-04" type="submit"
											value="Logout" style="background: none;border: none;"/>
									</form>
								</div>

							</c:if>

							<c:if test="${empty pageContext.request.userPrincipal.name}">
								<div class="header__top__right__auth">
									<a
										href="${pageContext.request.contextPath}/<c:url value="login"/>"><i
										class="fa fa-user"></i> Login</a>
								</div>

							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="header__logo">
						<a href="home"><img
							src="<c:url value="resources"/>/img/logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-6">
					<nav class="header__menu">
						<ul>
							<li class="active"><a href="home">Home</a></li>
							<li class=""><a href="shop?catId=0">Shop</a></li>
							<li><a href="#">Pages</a>
								<ul class="header__menu__dropdown">
									<li><a href="detail">Shop Details</a></li>
									<li><a href="./shoping-cart.html">Shoping Cart</a></li>
									<li><a href="./checkout.html">Check Out</a></li>
									<li><a href="./blog-details.html">Blog Details</a></li>
								</ul></li>
							<li><a href="./blog.html">Blog</a></li>
							<li><a href="./contact.html">Contact</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-lg-3">
					<div class="header__cart">
						<ul>
							<li><a href="#"><i class="fa fa-heart"></i> </a></li>
							<li><a href="cart"><i class="fa fa-shopping-bag"></i></a></li>
						</ul>
						<!-- <div class="header__cart__price">
							item: <span>$150.00</span>
						</div> -->
					</div>
				</div>
			</div>
			<div class="humberger__open">
				<i class="fa fa-bars"></i>
			</div>
		</div>
	</header>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>Danh Mục</span>
						</div>
						<ul>
							<c:forEach items="${listCat }" var="c">
								<li><a href="shop?catId=${c.id}">${c.name }</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">

								<input type="text" placeholder="Tìm kiếm">
								<button type="submit" class="site-btn">Tìm</button>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>+65 11.188.888</h5>
								<span>Hỗ trợ 24/7</span>
							</div>
						</div>
					</div>
					<div class="hero__item set-bg"
						data-setbg="<c:url value="resources"/>/img/hero/banner.jpg">
						<div class="hero__text">
							<span>Giá Hợp Lý</span>
							<h2>
								Đảm Bảo <br />Tươi Ngon
							</h2>
							<p>Đã thông qua kiểm chứng từ bộ</p>
							<a href="shop?catId=0" class="primary-btn">Mua Ngay</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Categories Section Begin -->
	<section class="categories">
		<div class="container">
			<div class="row">
				<div class="categories__slider owl-carousel">
					<c:forEach items="${listAll }" var="ft">

						<div class="col-lg-3">
							<div class="categories__item set-bg"
								data-setbg="<c:url value="resources"/>/img/${ft.img}">
								<h5>
									<a href="detail?proId=${ft.id}">${ft.name }</a>
								</h5>
							</div>
						</div>
					</c:forEach>

				</div>
			</div>
		</div>
	</section>
	<!-- Categories Section End -->

	<!-- Featured Section Begin -->
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Sản Phẩm Nổi Bật</h2>
					</div>
					<div class="featured__controls">
						<ul>
							<li class="active" data-filter="*">Tất Cả</li>
							<li data-filter=".fastfood">Fastfood</li>
							<li data-filter=".TS">Trà Sữa</li>
							<li data-filter=".Pizza">Pizza</li>
							<li data-filter=".Cơm">Cơm</li>
							<li data-filter=".HS">Hải sản</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row featured__filter">
				<c:forEach items="${listFeatured }" begin="0" end="7" var="ft">
					<c:if test="${ft.catId.name == 'Fastfood'}">
						<div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
							<div class="featured__item">
								<div class="featured__item__pic set-bg"
									data-setbg="<c:url value="resources"/>/img/${ft.img}">
									<ul class="featured__item__pic__hover">
										<li><a href="#"><i class="fa fa-heart"></i></a></li>
										<li><a href="#"><i class="fa fa-retweet"></i></a></li>
										<li><a href="detail?proId=${ft.id}"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<div class="featured__item__text">
									<h6>
										<a href="detail?proId=${ft.id}">${ft.name }</a>
									</h6>
									<h5>
										<fmt:formatNumber value="${ft.price}" type="NUMBER" />
									</h5>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${ft.catId.name == 'Trà Sữa'}">

						<div class="col-lg-3 col-md-4 col-sm-6 mix TS">
							<div class="featured__item">
								<div class="featured__item__pic set-bg"
									data-setbg="<c:url value="resources"/>/img/${ft.img}">
									<ul class="featured__item__pic__hover">
										<li><a href="#"><i class="fa fa-heart"></i></a></li>
										<li><a href="#"><i class="fa fa-retweet"></i></a></li>
										<li><a href="detail?proId=${ft.id}"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<div class="featured__item__text">
									<h6>
										<a href="detail?proId=${ft.id}">${ft.name }</a>
									</h6>
									<h5>
										<fmt:formatNumber value="${ft.price}" type="NUMBER" />
									</h5>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${ft.catId.name == 'Pizza'}">

						<div class="col-lg-3 col-md-4 col-sm-6 mix Pizza">
							<div class="featured__item">
								<div class="featured__item__pic set-bg"
									data-setbg="<c:url value="resources"/>/img/${ft.img}">
									<ul class="featured__item__pic__hover">
										<li><a href="#"><i class="fa fa-heart"></i></a></li>
										<li><a href="#"><i class="fa fa-retweet"></i></a></li>
										<li><a href="detail?proId=${ft.id}"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<div class="featured__item__text">
									<h6>
										<a href="detail?proId=${ft.id}">${ft.name }</a>
									</h6>
									<h5>
										<fmt:formatNumber value="${ft.price}" type="NUMBER" />
									</h5>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${ft.catId.name == 'Cơm'}">

						<div class="col-lg-3 col-md-4 col-sm-6 mix Cơm">
							<div class="featured__item">
								<div class="featured__item__pic set-bg"
									data-setbg="<c:url value="resources"/>/img/${ft.img}">
									<ul class="featured__item__pic__hover">
										<li><a href="#"><i class="fa fa-heart"></i></a></li>
										<li><a href="#"><i class="fa fa-retweet"></i></a></li>
										<li><a href="detail?proId=${ft.id}"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<div class="featured__item__text">
									<h6>
										<a href="detail?proId=${ft.id}">${ft.name }</a>
									</h6>
									<h5>
										<fmt:formatNumber value="${ft.price}" type="NUMBER" />
									</h5>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${ft.catId.name == 'Hải sản'}">

						<div class="col-lg-3 col-md-4 col-sm-6 mix HS">
							<div class="featured__item">
								<div class="featured__item__pic set-bg"
									data-setbg="<c:url value="resources"/>/img/${ft.img}">
									<ul class="featured__item__pic__hover">
										<li><a href="#"><i class="fa fa-heart"></i></a></li>
										<li><a href="#"><i class="fa fa-retweet"></i></a></li>
										<li><a href="detail?proId=${ft.id}"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<div class="featured__item__text">
									<h6>
										<a href="detail?proId=${ft.id}">${ft.name }</a>
									</h6>
									<h5>
										<fmt:formatNumber value="${ft.price}" type="NUMBER" />
									</h5>
								</div>
							</div>
						</div>
					</c:if>

				</c:forEach>
			</div>
		</div>
	</section>
	<!-- Featured Section End -->

	<!-- Banner Begin -->
	<div class="banner">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="banner__pic">
						<img src="<c:url value="resources"/>/img/banner/banner-1.jpg"
							alt="">
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="banner__pic">
						<img src="<c:url value="resources"/>/img/banner/banner-2.jpg"
							alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Banner End -->



	<!-- Blog Section Begin -->
	<section class="from-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title from-blog__title">
						<h2>From The Blog</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img src="<c:url value="resources"/>/img/blog/blog-1.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
							<h5>
								<a href="#">Cooking tips make cooking simple</a>
							</h5>
							<p>Sed quia non numquam modi tempora indunt ut labore et
								dolore magnam aliquam quaerat</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img src="<c:url value="resources"/>/img/blog/blog-2.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
							<h5>
								<a href="#">6 ways to prepare breakfast for 30</a>
							</h5>
							<p>Sed quia non numquam modi tempora indunt ut labore et
								dolore magnam aliquam quaerat</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="blog__item">
						<div class="blog__item__pic">
							<img src="<c:url value="resources"/>/img/blog/blog-3.jpg" alt="">
						</div>
						<div class="blog__item__text">
							<ul>
								<li><i class="fa fa-calendar-o"></i> May 4,2019</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
							<h5>
								<a href="#">Visit the clean farm in the US</a>
							</h5>
							<p>Sed quia non numquam modi tempora indunt ut labore et
								dolore magnam aliquam quaerat</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer spad">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- Footer Section End -->

	<jsp:include page="link_js.jsp"></jsp:include>

</body>

</html>