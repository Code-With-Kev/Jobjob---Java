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
        <div class="navigation__background">&nbsp;</div>
        <nav class="navigation__nav">
            <ul class="navigation__list">
                <li class="navigation__item"><a href="/jobs/user" class="navigation__link">Dashboard</a></li>
                <li class="navigation__item"><a href="/jobs" class="navigation__link">Job Listings</a></li>
                <li class="navigation__item"><a href="/home" class="navigation__link">Home</a></li>
                <li class="navigation__item"><a href="/jobs/new" class="navigation__link">Add Job</a></li>
                <li class="navigation__item"><a href="/" class="navigation__link">Login/Register</a></li>
                <li class="navigation__item"><a href="/challenge" class="navigation__link">Quack Quack?</a></li>
            </ul>
        </nav>
    </div>

    <!----------------------------------------------------------------------------------------- CARD ROW ------------------------------------------------------------------------------------------->

    <section class="section-tours">
        <div class="u-center-text u-margin-bottom-big">
            <h2 class="heading-secondary">
                Choose the life you want!
            </h2>
        </div>
                                                <!---------------------------------------------- CARD 1 -------------------------------------------------->
        
        <div class="row row-normal">
            <div class="col-1-of-3">
                <div class="card">
                    <div class="card__side card__side--front">
                        <div class="card__picture card__picture--1">
                            &nbsp;
                        </div>
                        <h4 class="card__heading">
                            <span class="card__heading-span card__heading-span--1">
                                The Front End <br> Dev
                            </span>
                        </h4>
                        <div class="card__details">
                            <ul>
                                <li>Prototype and build websites</li>
                                <li>Create responsive designs</li>
                                <li>Optimize graphics for the web</li>
                                <li>Debug across browsers</li>
                                <li>Manage user data</li>
                            </ul>
                        </div>
                    </div>
                    <div class="card__side card__side--back card__side--back-1">
                        <div class="card__cta">
                            <div class="card__price-box">
                                <p class="card__price-only">Avg &nbsp;&nbsp;Starting&nbsp;&nbsp; Salary</p>
                                <p class="card__price-value">$76,656</p>
                            </div>
                            <a href="#" class="btn btn--card">allJobs.contains("Front End")</a>
                        </div>
                    </div>
                </div>
            </div>


                                    <!---------------------------------------------- CARD 2 -------------------------------------------------->
            <div class="col-1-of-3">
                <div class="card">
                    <div class="card__side card__side--front">
                        <div class="card__picture card__picture--2">
                            &nbsp;
                        </div>
                        <h4 class="card__heading">
                            <span class="card__heading-span card__heading-span--2">
                                The Back End <br> Dev
                            </span>
                        </h4>
                        <div class="card__details">
                            <ul>
                                <li>Handle infrastructure of sites</li>
                                <li>Create server side features</li>
                                <li>Compile and analyze data</li>
                                <li>Study industry trends</li>
                                <li>Improve backend processes</li>
                            </ul>
                        </div>
                    </div>
                    <div class="card__side card__side--back card__side--back-2">
                        <div class="card__cta">
                            <div class="card__price-box">
                                <p class="card__price-only">Avg &nbsp;&nbsp;Starting&nbsp;&nbsp; Salary</p>
                                <p class="card__price-value">$81,906</p>
                            </div>
                            <a href="#" class="btn btn--card">allJobs.contains("Back End")</a>
                        </div>
                    </div>
                </div>
            </div>


                                    <!---------------------------------------------- CARD 3 -------------------------------------------------->
            <div class="col-1-of-3">
                <div class="card">
                    <div class="card__side card__side--front">
                        <div class="card__picture card__picture--3">
                            &nbsp;
                        </div>
                        <h4 class="card__heading">
                            <span class="card__heading-span card__heading-span--3">
                                The Full Stack <br> Dev
                            </span>
                        </h4>
                        <div class="card__details">
                            <ul>
                                <li>Communicate front to back</li>
                                <li>Write effective APIs</li>
                                <li>Develop and manage data</li>
                                <li>Create security settings</li>
                                <li>Supervise production</li>
                            </ul>
                        </div>
                    </div>
                    <div class="card__side card__side--back card__side--back-3">
                        <div class="card__cta">
                            <div class="card__price-box">
                                <p class="card__price-only">Avg &nbsp;&nbsp;Starting&nbsp;&nbsp; Salary</p>
                                <p class="card__price-value">$99,452</p>
                            </div>
                            <a href="#" class="btn btn--card">allJobs.contains("Full Stack")</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

            <!----------------------------------------------------------------------------------------- JOBS DISPLAY ------------------------------------------------------------------------------------------->
        <section class="section-stories">
            <div class="bg-video">
                <video class="bg-video__content" autoplay muted loop>
                    <source src="img/video.mp4" type="video/mp4">
                    <source src="img/video.webm" type="video/webm">
                    Your browser is not supported!
                </video>
            </div>

            <div class="u-center-text u-margin-bottom-big">
                <h2 class="heading-secondary">
                    Don't be afraid to get your feet wet!
                </h2>
            </div>

            <c:forEach var='job' items='${ allJobs }'>
                <div class="row row-story">
                    <div class="story">
                        <figure class="story__shape">
                            <img src="img/nat-8.jpg" alt="Person on a tour" class="story__img">
                            <figcaption class="story__caption">${job.salary}</figcaption>
                        </figure>
                        <div class="story__text">
                            <h3 class="heading-tertiary u-margin-bottom-small">${job.title}</h3>
                            <p>${job.description}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </section>

	</body>
</html>