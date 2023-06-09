<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<style type="text/css">
.shoping__cart__item {
	width: 500px !important;
}
</style>
</head>

<body>
	<!-- Page Preloder -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="<c:url value="resources"/>/img/breadcrumb.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Giỏ hàng</h2>
						<div class="breadcrumb__option">
							<a href="home">Home</a> <span>Giỏ hàng</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__table">
						<table>
							<thead>
								<tr>
									<th class="shoping__product">Sản phẩm</th>
									<th>Giá</th>
									<th>Số lượng</th>
									<th>Tổng tiền</th>
									<th></th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${sessionScope.myCartItems}" var="cart">
									<form:form action="updateCart" modelAttribute="cartU"
										method='POST' id="myform">
										<input type="hidden" value="${cart.value.pro.id}" name="proId">
										<tr>
											<td class="shoping__cart__item"><img
												src="<c:url value="resources"/>/img/${cart.value.pro.img}"
												width="100px" height="100px" alt="">
												<h5>${cart.value.pro.name}</h5></td>
											<td class="shoping__cart__price"><c:if
													test="${cart.value.pro.salePrice > 0 }">
													<h5>
														<span style="text-decoration: line-through;"><fmt:formatNumber
																value="${cart.value.pro.price}" type="NUMBER" />đ</span> <br>
														<span class="text-danger"><fmt:formatNumber
																value="${cart.value.pro.salePrice}" type="NUMBER" />đ</span>
													</h5>
												</c:if> <c:if test="${cart.value.pro.salePrice == 0 }">
													<h5>
														<fmt:formatNumber value="${cart.value.pro.price}"
															type="NUMBER" />
														đ
													</h5>
												</c:if></td>
											<td class="shoping__cart__quantity">
												<div class="quantity">
													<div class="pro-qty">
														<input type="number" name="quantity"
															value="${cart.value.quantity}">
													</div>
												</div>
											</td>
											<c:if test="${cart.value.pro.salePrice == 0}">
												<td class="shoping__cart__total"><fmt:formatNumber
														value="${cart.value.quantity * cart.value.pro.price}" />đ</td>
											</c:if>
											<c:if test="${cart.value.pro.salePrice > 0}">
												<td class="shoping__cart__total"><fmt:formatNumber
														value="${cart.value.quantity * cart.value.pro.salePrice}" />đ</td>
											</c:if>

											<td class="shoping__cart__item__close"><a
												onclick="return confirm('Bạn có muốn xóa không?')"
												href="<c:url value="removeItem"/>?proId=${cart.value.pro.id}"
												class=" hov-btn3  trans-04"> <span class="icon_close"></span>
											</a></td>
											<td>
												<button type="submit" onclick="submitForm()"
													class="primary-btn cart-btn cart-btn-right"> Cập nhật
												</button>
											</td>
										</tr>

									</form:form>
								</c:forEach>


							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__btns">
						<a
							href="${pageContext.request.contextPath}/<c:url value="clearCart"/>"
							onclick="return confirm('Bạn có muốn xóa hết?')"
							class="primary-btn cart-btn">Xóa Hết</a>

					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__continue">
						<div class="shoping__discount">
							<h5>Mã giảm giá</h5>
							<form action="#">
								<input type="text" placeholder="Mời Nhập Mã">
								<button type="submit" class="site-btn">Nhập</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__checkout">
						<h5>Hóa Đơn</h5>
						<ul>
							<li>Tổng <span><fmt:formatNumber
										value="${sessionScope.myCartTotal}" />đ</span></li>
							<li>Thành Tiền <span><fmt:formatNumber
										value="${sessionScope.myCartTotal}" />đ</span></li>
						</ul>
						<a href="#" class="primary-btn">Thanh toán</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shoping Cart Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer spad">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<jsp:include page="link_js.jsp"></jsp:include>
	<script type="text/javascript">
		function submitForm() {
			document.getElementById('myform').submit();
		}
	</script>
</body>

</html>