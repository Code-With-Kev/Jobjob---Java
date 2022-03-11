<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<html>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<script type="text/javascript" src="/js/app.js"></script>
		<link rel="stylesheet" href="css/icon-font.css">
        <link rel="stylesheet" type="text/css" href="/sass/style.css">
		<title>Insert title here</title>
	</head>
    <body>
            <!----------------------------------------------------------------------------------------- BG VIDEO ------------------------------------------------------------------------------------------->
        <video playsinline autoplay muted loop poster="video_still" id="bgvid">
            <source src="/media/webmPhotos/webm/duck_edit.webm" type="video/mp4">
        </video>
            <!----------------------------------------------------------------------------------------- LOGIN FORM ------------------------------------------------------------------------------------------->
            <div class="row row-normal form-row">
                <div class="book__form col-1-of-3 reg">
                    <form:form class="login-reg-form" action="/register" method="post" modelAttribute="newUser">
                        <div class="u-margin-bottom-medium">
                            <h2 class="heading-secondary--gold heading-secondary--form">
                                Register
                            </h2>
                            <h1 style="color:tomato">${errorNotAllowed}</h1>
                        </div>

                        <div class="form__group">
                            <form:input path="username" class="form__input" placeholder="Username"/>
                            <form:label path="username" class="form__label"  style="color: white">Username</form:label>
                            <form:errors path="username" class="form__label" style="color:tomato"/>
                        </div>
                        <div class="form__group">
                            <form:input type="email" path="email" class="form__input" placeholder="Email"/>
                            <form:label path="email" class="form__label" style="color: white">Email</form:label>
                            <form:errors path="email" class="form__label" style="color:tomato"/>
                        </div>
                        <div class="form-group" style="margin-bottom: 2rem;">
                            <form:input type="password" path="password" class="form__input" placeholder="Password"/>
                            <form:label path="password" class="form__label" style="color: white">Password</form:label>
                            <form:errors path="password" class="form__label" style="color:tomato"/>
                        </div>
                        <div class="form__group">
                            <form:input type="password" path="confirm" class="form__input" placeholder="Confirm Password"/>
                            <form:label  path="confirm" class="form__label" style="color: white">Confirm Password</form:label>
                            <form:errors path="confirm" class="form__label" style="color:tomato"/>
                        </div>
                        <div class="submit-container submit-container--login"> 
                            <a href="/register" class="btn btn--white btn--animated btn--cover">REGISTER</a>
                            <input type="submit" class="hidden-button--login" value=""/>
                        </div>
                    </form:form>
                </div>

                <div class="book__form col-1-of-3 login-reg login">
                    <form:form class="login-reg-form" action="/login" method="post" modelAttribute="newLogin">
                        <div class="u-margin-bottom-medium">
                            <h2 class="heading-secondary--form heading-secondary--gold">
                                Login
                            </h2>
                        </div>

                        <div class="form__group">
                            <form:input  type="email" path="email" class="form__input" placeholder="Email"/>
                            <form:label path="email" class="form__label" style="color: white">Email</form:label>
                            <form:errors path="email" class="form__label" style="color:tomato"/>
                        </div>
                        <div class="form-group" style="margin-bottom: 2rem;">
                            <form:input type="password" path="password" class="form__input" placeholder="Password"/>
                            <form:label path="password" class="form__label" style="color: white">Password</form:label>
                            <form:errors path="password" class="form__label" style="color:tomato"/>
                        </div>
                        <div class="submit-container submit-container--login"> 
                            <a href="#" class="btn btn--white btn--animated btn--cover">LOGIN</a>
                            <input type="submit" class="hidden-button--login" value=""/>
                        </div>
                    </form:form>
                </div>
            </div>

    </body>
    </html>