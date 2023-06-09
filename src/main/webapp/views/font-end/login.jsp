<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<!-- Boxicons CSS -->
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'
	rel='stylesheet'>

</head>
<body>
	<section class="container forms">
		<div class="form login">
			<div class="form-content">
				<form name='loginForm'
					action="<c:url value='j_spring_security_login'/>" method='POST'>
					<header>Đăng nhập</header>
					<header style="color: red;">${mess}</header>
					<header style="color: green;">${done}</header>
					<div class="field input-field">
						<input type="text" name="username" placeholder="Tài Khoản"
							class="input">
						<form:errors path="username" cssClass="" />
					</div>

					<div class="field input-field">
						<input type="password" name="password" placeholder="Mật Khẩu"
							class="password">
						<form:errors path="password" cssClass="" />
						<i class='bx bx-hide eye-icon'></i>
					</div>

					<!--  <div class="form-link">
                            <a href="#" class="forgot-pass">Forgot password?</a>
                        </div> -->

					<div class="field button-field">
						<button name="submit" type="submit">Đăng nhập</button>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</div>

					<div class="form-link">
						<span>Chưa có tài khoản ? <a href="register"
							>Đăng Ký</a></span>
					</div>
				</form>
			</div>

			<a href="home"><div class="line"></div> </a>

			<%--  <div class="media-options">
                    <a href="#" class="field facebook">
                        <i class='bx bxl-facebook facebook-icon'></i>
                        <span>Login with Facebook</span>
                    </a>
                </div>

                <div class="media-options">
                    <a href="#" class="field google">
                        <img src="<c:url value="resources"/>/<c:url value="resources"/>/img/google.png" alt="" class="google-img">
                        <span>Login with Google</span>
                    </a>
                </div> --%>

		</div>
	</section>

	<!-- JavaScript -->
	<script src="<c:url value="resources"/>/js/script.js"></script>
</body>
</html>