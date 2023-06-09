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
	<jsp:include page="header.jsp"></jsp:include>
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="<c:url value="resources"/>/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Organi Shop</h2>
						<div class="breadcrumb__option">
							<a href="home">Home</a> <span>Shop</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4>Danh Mục</h4>
							<ul>
								<c:forEach items="${listCat }" var="c">
									<li><a href="shop?catId=${c.id}">${c.name }</a></li>
								</c:forEach>

							</ul>
						</div>
						<br>
						<div class="sidebar__item">
							<!-- <h4>Price</h4>
							<div class="price-range-wrap">
								<div
									class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
									data-min="10000" data-max="500000">
									<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
								</div>
								<div class="range-slider">
									<div class="price-input">
										<input type="text" id="minamount"> <input type="text"
											id="maxamount">
									</div>
								</div>
							</div> -->
						</div>

						<hr>
						<div class="sidebar__item">
							<div class="latest-product__text">

								<div class="latest-product__slider owl-carousel">
									<div class="latest-prdouct__slider__item">
										<h4>Mới</h4>
										<c:forEach items="${listNew }" begin="1" end="4" var="n">
											<c:if test="${n.salePrice > 0}">
												<a href="detail?proId=${n.id}" class="latest-product__item">
													<div class="latest-product__item__pic">
														<img src="<c:url value="resources"/>/img/${n.img}" alt="">
													</div>
													<div class="latest-product__item__text">
														<h6>${n.name}</h6>
														<span style="text-decoration: line-through;"><fmt:formatNumber
																value="${n.price}" type="NUMBER" /></span><span><fmt:formatNumber
																value="${n.salePrice}" type="NUMBER" /></span>

													</div>
												</a>
											</c:if>
											<c:if test="${n.salePrice == 0}">
												<a href="detail?proId=${n.id}" class="latest-product__item">
													<div class="latest-product__item__pic">
														<img src="<c:url value="resources"/>/img/${n.img}" alt="">
													</div>
													<div class="latest-product__item__text">
														<h6>${n.name}</h6>
														<span><fmt:formatNumber value="${n.price}"
																type="NUMBER" /></span>

													</div>
												</a>
											</c:if>
										</c:forEach>

									</div>
									<div class="latest-prdouct__slider__item">
										<h4>Bán chạy</h4>
										<c:forEach items="${listBest }" begin="1" end="4" var="n">
											<c:if test="${n.salePrice > 0}">
												<a href="detail?proId=${n.id}" class="latest-product__item">
													<div class="latest-product__item__pic">
														<img src="<c:url value="resources"/>/img/${n.img}" alt="">
													</div>
													<div class="latest-product__item__text">
														<h6>${n.name}</h6>
														<span style="text-decoration: line-through;"><fmt:formatNumber
																value="${n.price}" type="NUMBER" /></span><span><fmt:formatNumber
																value="${n.salePrice}" type="NUMBER" /></span>

													</div>
												</a>
											</c:if>
											<c:if test="${n.salePrice == 0}">
												<a href="detail?proId=${n.id}" class="latest-product__item">
													<div class="latest-product__item__pic">
														<img src="<c:url value="resources"/>/img/${n.img}" alt="">
													</div>
													<div class="latest-product__item__text">
														<h6>${n.name}</h6>
														<span><fmt:formatNumber value="${n.price}"
																type="NUMBER" /></span>

													</div>
												</a>
											</c:if>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<h2>Giảm Giá</h2>
						</div>
						<div class="row">
							<div class="product__discount__slider owl-carousel">
								<c:forEach items="${listSale }" var="s">
									<div class="col-lg-4">
										<div class="product__discount__item">
											<div class="product__discount__item__pic set-bg"
												data-setbg="<c:url value="resources"/>/img/${s.img}">
												<div class="product__discount__percent">Sale</div>
												<ul class="product__item__pic__hover">
													<li><a href="#"><i class="fa fa-heart"></i></a></li>
													<li><a href="#"><i class="fa fa-retweet"></i></a></li>
													<li><a href="detail?proId=${s.id}"><i class="fa fa-shopping-cart"></i></a></li>
												</ul>
											</div>
											<div class="product__discount__item__text">
												<h5>
													<a href="#">${s.name }</a>
												</h5>
												<div class="product__item__price">
													<fmt:formatNumber value="${s.salePrice}" type="NUMBER" />
													<span><fmt:formatNumber value="${s.price}"
															type="NUMBER" /></span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>

							</div>
						</div>
					</div>
					<div class="filter__item">
						<div class="row">
							<div class="col-lg-4 col-md-5">
								<!-- <div class="filter__sort">
									<span>Xếp theo</span> <select>
										<option value="0">Default</option>
										<option value="1">Default</option>
									</select>
								</div> -->
							</div>
							<div class="col-lg-4 col-md-4">
								<div class="filter__found">
									<h2>
										<span>Sản Phẩm</span> 
									</h2>
								</div>
							</div>
							<div class="col-lg-4 col-md-3">
								<div class="filter__option">
									<!-- <span class="icon_grid-2x2"></span> <span class="icon_ul"></span> -->
								</div>
							</div>
						</div>
					</div>
					<div class="row">

						<c:if test='${ catId==0 }'>
							<c:forEach items="${listAll }" begin="1" end="18" var="a">
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="<c:url value="resources"/>/img/${a.img}">
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a href="detail?proId=${a.id}"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__item__text">
											<h6>
												<a href="detail?proId=${a.id}">${a.name }</a>
											</h6>
											<c:if test="${a.salePrice > 0 }">
												<h5>
													<span style="text-decoration: line-through;"><fmt:formatNumber
															value="${a.price}" type="NUMBER" /></span> <br>
													<span class="text-danger"><fmt:formatNumber
															value="${a.salePrice}" type="NUMBER" /></span>
												</h5>
											</c:if>
											<c:if test="${a.salePrice == 0 }">
												<h5>
													<fmt:formatNumber value="${a.price}" type="NUMBER" />
												</h5>
											</c:if>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:if>

						<c:forEach items="${listAll }" var="a">
							<c:if test='${ catId == a.catId.id }'>

								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="<c:url value="resources"/>/img/${a.img}">
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a href="#"><i class="fa fa-retweet"></i></a></li>
												<li><a href="detail?proId=${a.id}"><i class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__item__text">
											<h6>
												<a href="detail?proId=${a.id}">${a.name }</a>
											</h6>
											<c:if test="${a.salePrice > 0 }">
												<h5>
													<span style="text-decoration: line-through;"><fmt:formatNumber
															value="${a.price}" type="NUMBER" /></span> <br>
													<span class="text-danger"><fmt:formatNumber
															value="${a.salePrice}" type="NUMBER" /></span>
												</h5>
											</c:if>
											<c:if test="${a.salePrice == 0 }">
												<h5>
													<fmt:formatNumber value="${a.price}" type="NUMBER" />
												</h5>
											</c:if>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="product__pagination">
						<!-- <a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
							class="fa fa-long-arrow-right"></i></a> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer spad">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- Footer Section End -->

	<jsp:include page="link_js.jsp"></jsp:include>

</body>

</html>