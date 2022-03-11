<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<script type="text/javascript" src="/js/app.js"></script>
		<link rel="stylesheet" href="css/icon-font.css">
        <link rel="stylesheet" type="text/css" href="/sass/style.css">
		<title>Jobjob</title>
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
                            <li class="navigation__item"><a href="/jobs/new" class="navigation__link">Add Job</a></li>
                            <li class="navigation__item"><a href="/" class="navigation__link">Login/Register</a></li>
                            <li class="navigation__item"><a href="/challenge" class="navigation__link">Quack Quack?</a></li>
                        </ul>
                    </nav>
                </div>
            
        <!------------------------------------------------------------------------------------------ HEADING --------------------------------------------------------------------------------------------->


        <header class="header header--dashboard">
            <div class="header__text-box header__text-box--dashboard">
                <p class="heading-primary heading-primary--main heading-primary--dashboard">
                    KEVNI WOODSIDE
                </p>
                <p class="heading-primary heading-primary--sub heading-primary--sub__dashboard">
                    754-837-1178 | Los Angeles, California | kevniwoodside@gmail.com |
                </p>
                <p class="heading-primary heading-primary--sub">
                    www.linkedin.com/in/kevni | github.com/Code-With-Kev
                </p>
            </div>
        </header>

        <!----------------------------------------------------------------------------------------- ABOUT ROW ------------------------------------------------------------------------------------------->
        
        <main>
            <section class="section-about section-about--dashboard">
                <div class="u-center-text u-margin-bottom-big">
                    <h2 class="heading-secondary">
                        Check out my projects!
                    </h2>
                </div>
                <div class="row row-normal row--margin">
                    <h3 class="heading-tertiary-blue u-margin-bottom-small center">"Paupa"</h3>
                    <p class="paragraph--padded center">
                        A task/expense tracker for people who have experienced the loss of a loved one. Can also be used by freelancers who deal with multiple forms of currency. Created so that my dad can always know what I'm doing from above.
                    </p>
                    <div class="col-1-of-3">
                        <h3 class="heading-tertiary u-margin-bottom-small">Technologies Used:</h3>
                        <ul class="paragraph">
                            <p>- Java</p>
                            <p>- React</p>
                        </ul>
                        <div class="language-box">
                            <h3 class="heading-tertiary u-margin-bottom-small">Languages Used:</h3>
                            <img src="/img/paupa-chart3.png" alt="#" class="language-chart">
                        </div>
                        <a href="https://github.com/Code-With-Kev/paupz" class="btn-text">Github &#8594;</a>
                    </div>
                    <div class="col-2-of-3">
                        <div class="composition composition--margin">
                            <img src="/img/paupa2.PNG" alt="Photo 1"  class="composition__photo composition__photo--p1">
                            <img src="/img/paupa3.PNG" alt="Photo 2" class="composition__photo composition__photo--p2">
                            <video playsinline autoplay muted loop poster="video_still" class="composition__photo composition__photo--p3">
                                <source src="/media/webmPhotos/webm/paupa.webm" type="video/mp4">
                            </video>
                        </div>
                    </div>
                </div>
                <div class="row row-normal row--margin">
                    <h3 class="heading-tertiary-blue u-margin-bottom-small center">{ "you" : happi }</h3>
                    <p class="paragraph--padded center">
                        "You" are the key to your own happiness. So I created an app meant to find out who you are. Take a test and have your answers guide the next question that appears. In the end, you and your friends will recieve a personality assesment!
                    </p>
                    <div class="col-1-of-3">
                        <h3 class="heading-tertiary u-margin-bottom-small">Technologies Used:</h3>
                        <ul class="paragraph">
                            <p>- Python</p>
                            <p>- Finite State Machine</p>
                        </ul>
                        <div class="language-box">
                            <h3 class="heading-tertiary u-margin-bottom-small">Languages Used:</h3>
                            <img src="/img/happi-chart2.png" alt="#" class="language-chart">
                        </div>
                        <a href="#" class="btn-text">Github &#8594;</a>
                    </div>
                    <div class="col-2-of-3">
                        <div class="composition composition--margin" style="margin: 0 auto; margin-left: 2rem">
                            <video playsinline autoplay muted loop poster="video_still"  class="composition__photo composition__photo--p3" style="transform: scale(1.5);">
                                <source src="/media/webmPhotos/webm/loading.webm" type="video/mp4">
                            </video>
                        </div>
                    </div>
                </div>
                <div class="row row-normal row--margin">
                    <h3 class="heading-tertiary-blue u-margin-bottom-small center">Job< job ></h3>
                    <p class="paragraph--padded center">
                        A task/expense tracker for people who have experienced the loss of a loved one. Can also be used by freelancers who deal with multiple forms of currency. Created so that my dad can always know what I'm doing from above.
                    </p>
                    <div class="col-1-of-3">
                        <h3 class="heading-tertiary u-margin-bottom-small">Technologies Used:</h3>
                        <ul class="paragraph">
                            <p>- Java</p>
                            <p>- React</p>
                        </ul>
                        <div class="language-box">
                            <h3 class="heading-tertiary u-margin-bottom-small">Languages Used:</h3>
                            <img src="/img/paupa-chart3.png" alt="#" class="language-chart">
                        </div>
                        <a href="#" class="btn-text">Github &#8594;</a>
                    </div>
                    <div class="col-2-of-3">
                        <div class="composition composition--margin" style="margin: 0 auto; margin-left: 2rem">
                            <video playsinline autoplay muted loop poster="video_still"  class="composition__photo composition__photo--p3" style="transform: scale(1.5);">
                                <source src="/media/webmPhotos/webm/duck_edit.webm" type="video/mp4">
                            </video>
                        </div>
                    </div>
                </div>
                </div>
            </section>

	</body>
</html>