<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="for" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com-->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Responsive Login and Signup Form</title>

<!-- CSS -->
<link rel="stylesheet"
	href="<c:url value="resources"/>/css/style_login.css">
<style type="text/css">
.container{
    height: 160vh !important;
   
}

</style>
<!-- Boxicons CSS -->
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'
	rel='stylesheet'>

</head>
<body>
	<section class="container forms">
		<div class="form login">
			<div class="form-content">

				<for:form action="${pageContext.request.contextPath}/createAccount"
					modelAttribute="ac" method='POST'>
					<header>Đăng Ký</header>
					<header style="color: red;">${err}</header>

					<div class="field input-field">
						<for:input path="email" type="email" placeholder="Email"
							class="input" />
						<for:errors path="email" Class="text-danger" />
					</div>
					<div class="field input-field">
						<for:input path="userName" placeholder="Tài Khoản" class="input" />
						<for:errors path="userName" Class="text-danger" />
					</div>
					<div class="field input-field">
						<for:input path="fullName" placeholder="Tên của bạn" class="input" />
						<for:errors path="fullName" Class="text-danger" />
					</div>
					<div class="field input-field">
						<for:input path="address" placeholder="Địa chỉ giao hàng" class="input" />
						<for:errors path="address" Class="text-danger" />
					</div>
					<div class="field input-field">
						<div style="float: left">
								Nam<for:radiobutton path="gender" value="true" style="float: left" />
								<for:errors path="gender"
									class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 text-danger" />
							</div>
						<div style="float: right;">
								Nữ<for:radiobutton path="gender" value="false" style="float: left"/>
								<for:errors path="gender"
									class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30 text-danger" />
							</div>
					</div>
					<div class="field input-field">
						<for:input path="phone" placeholder="SĐT của bạn" class="input" />
						<for:errors path="phone" Class="text-danger" />
					</div>
					
					
					<div class="field input-field">
						<for:input path="password" type="password" placeholder="Mật Khẩu"
							class="password"/>
						<for:errors path="password" cssClass="text-danger" />
						<i class='bx bx-hide eye-icon'></i>
					</div>

					<div class="field input-field">
						<input name="confirmPassword" type="password" placeholder="Xác Nhận Mật Khẩu"
							class="password"/>
						<for:errors path="password" cssClass="text-danger" />
						<i class='bx bx-hide eye-icon'></i>
					</div>

					<div class="field button-field">
						<button name="submit" type="submit">Đăng Ký</button>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</div>


					<div class="form-link">
						<span>Bạn muốn đăng nhập ? <a
							href="${pageContext.request.contextPath}/<c:url value="login"/>">Đăng nhập</a></span>
					</div>
				</for:form>

			</div>
			<a href="home"><div class="line"></div> </a>
		</div>




	</section>

	<!-- JavaScript -->
	<script src="<c:url value="resources"/>/js/script.js"></script>
</body>
</html>