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
                <!----------------------------------------------------------------------------------------- NAVIGATION ------------------------------------------------------------------------------------------->
    <div class="navigation">
        <input type="checkbox" class="navigation__checkbox" id="navi-toggle">
        <label for="navi-toggle" class="navigation__button">
            <span class="navigation__icon">&nbsp;</span>
        </label>
        <div class="navigation__background">

        </div>
        <nav class="navigation__nav">
            <ul class="navigation__list">
                <li class="navigation__item"><a href="/jobs/user" class="navigation__link">Dashboard</a></li>
                <li class="navigation__item"><a href="/jobs" class="navigation__link">Job Listings</a></li>
                <li class="navigation__item"><a href="/jobs/new" class="navigation__link">Add Job</a></li>
                <li class="navigation__item"><a href="/" class="navigation__link">Login/Register</a></li>
                <li class="navigation__item"><a href="/challenge" class="navigation__link">Quack Quack?</a></li>
            </ul>
        </nav>
    </div>
                <!----------------------------------------------------------------------------------------- CREATE FORM ------------------------------------------------------------------------------------------->

        <section class="section-book">
            <div class="new-form-background "></div>
            <div class="row">
                <div class="book">
                    <div class="book__form">
                        <form:form action="/jobs/create" method="post" class="form" modelAttribute="job">
                            <div class="u-margin-bottom-medium">
                                <h2 class="heading-secondary heading-secondary--form">
                                    Enter your job!
                                </h2>
                            </div>

                            <div class="form__group">
                                <form:input path="title" class="form__input" placeholder="Job Title"/>
                                <form:label path="title" class="form__label">Job Title</form:label>
                                <form:errors path="title" class="form__label" style="color:tomato"/>
                            </div>
                            <div class="form__group">
                                <form:input path="pitch" class="form__input" placeholder="Elevator Pitch"/>
                                <form:label path="pitch" class="form__label">Pitch your position to candidates!</form:label>
                                <form:errors path="pitch" class="form__label" style="color:tomato"/>
                            </div>
                            <div class="form-group">
                                <form:textarea path="description" class="form__input" placeholder="Full Description"/>
                                <form:label path="pitch" class="form__label">Give us the nitty gritty!</form:label>
                                <form:errors path="description" class="form__label" style="color:tomato"/>
                            </div>
                            <div class="form__group form__group--salary">
                                <form:input type="number" min="50000" path="salary" class="form__input" placeholder="Salary"/>
                                <form:label path="salary" class="form__label">List the expected salary</form:label>
                                <form:errors path="salary" class="form__label" style="color:tomato"/>
                            </div>


                            <div class="form__group form__group--radio-box u-margin-bottom-medium">
                                <div class="form__radio-group">
                                    <input type="radio" class="form__radio-input" id="small" name="size">
                                    <label for="small" class="form__radio-label">
                                        <span class="form__radio-button"></span>
                                        Front-End
                                    </label>
                                </div>

                                <div class="form__radio-group">
                                    <input type="radio" class="form__radio-input" id="large" name="size">
                                    <label for="large" class="form__radio-label">
                                        <span class="form__radio-button"></span>
                                        Back-End
                                    </label>
                                </div>

                                <div class="form__radio-group form__radio-group--full">
                                    <input type="radio" class="form__radio-input" id="large" name="size">
                                    <label for="large" class="form__radio-label">
                                        <span class="form__radio-button"></span>
                                        Full-Stack
                                    </label>
                                </div>                            
                            </div>
                                <div class="submit-container submit-container--create"> 
                                    <a href="#" class="btn btn--white btn--animated btn--cover">Submit Job</a>
                                    <input type="submit" class="hidden-button" value=""/>
                                </div>
                        </form:form>
                    </div>
                </div>
            </div>                 
        </section>
    </body>
</html>