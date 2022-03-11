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
    <body style="padding: 2rem; margin: 1rem;">

<!----------------------------------------------------------------------------------------- BG VIDEO ------------------------------------------------------------------------------------------->
                    <video playsinline autoplay muted loop poster="video_still" class="cover">
                        <source src="/media/webmPhotos/webm/video.webm" type="video/mp4">
                    </video>
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


        <header class="header header--home">
            <div class="header__logo-box">
                <img src="img/logo-white.png" alt="Logo" class="header__logo">
            </div>
            
            <div class="header__text-box header__text-box--home">
                <h1 class="heading-primary">
                    <img src="img/logo-yellow-resize.png" alt="Photo 1"  class="heading-primary--main">
                    <span class="heading-primary--sub heading-primary--sub__home">for the developing developer</span>
                </h1>
                
                <a href="#" class="btn btn--white btn--animated">for&nbsp;(    &nbsp;&nbsp; String &nbsp;&nbsp;   job  &nbsp;&nbsp;  :  &nbsp;&nbsp;  allJobs &nbsp;&nbsp;   )</a>
            </div>
        </header>


<!----------------------------------------------------------------------------------------- ABOUT ROW ------------------------------------------------------------------------------------------->

        <main>
            <section class="section-about section-about--home">
                <div class="u-center-text u-margin-bottom-big">
                    <h2 class="heading-secondary">
                        Exciting jobs for new developers!
                    </h2>
                </div>
                <div class="row row-normal">
                    <div class="col-1-of-2">
                        <h3 class="heading-tertiary u-margin-bottom-small">Just graduated from a bootcamp? JOIN!</h3>
                        <p class="paragraph">
                            Our site is dedicated to bringing you positions from companies who want developers with junior level experience. We don't want you to be an expert. <br><br> We want to make you one.
                        </p>
                        <h3 class="heading-tertiary u-margin-bottom-small">The World's Easiest Application Process!</h3>
                        <p class="paragraph">
                            Cover letters? <span class="bold-text">Nope</span>. Retyped resume? <span class="bold-text">Nada.</span> Long wait times? <span class="bold-text bold-text--extra">NEVER!</span>
                            <br><br> Our staff is a team of developers who have been exactly where you are and know how bad applying for new developer positions can be.
                            So it's our mission to make it better.
                            <br><br> Simply upload your resume and you're done!
                        </p>
                        <a href="#" class="btn-text">Learn more &#8594;</a>
                    </div>
                    <div class="col-1-of-2">
                        <div class="composition">
                            <img src="img/code-cool-3.jpg" alt="Photo 1"  class="composition__photo composition__photo--p1">
                            <img src="img/code-cool-2.png" alt="Photo 2" class="composition__photo composition__photo--p2">
                            <img src="img/code-cool.jpg" alt="Photo 3" class="composition__photo composition__photo--p3">
                        </div>
                    </div>
                </div>
            </section>
<!----------------------------------------------------------------------------------------- FEATURES ROW ------------------------------------------------------------------------------------------->

            <section class="section-features">
                <div class="row row-normal">
                    <div class="col-1-of-4">
                        <div class="feature-box">
                            <i class="feature-box__icon icon-basic-smartphone"></i>
                            <h3 class="heading-tertiary u-margin-bottom-small">Front-End Jobs</h3>
                            <p class="feature-box__text">
                                Become stronger at making eye-popping designs by checking out these jobs!
                            </p>
                        </div>
                    </div>
                    <div class="col-1-of-4">
                        <div class="feature-box">
                            <i class="feature-box__icon icon-basic-compass"></i>
                            <h3 class="heading-tertiary u-margin-bottom-small">Back-End Jobs</h3>
                            <p class="feature-box__text">
                                Practice swimming in a sea of forms and databases by clicking here!
                            </p>
                        </div>
                    </div>
                    <div class="col-1-of-4">
                        <div class="feature-box">
                            <i class="feature-box__icon icon-basic-map"></i>
                            <h3 class="heading-tertiary u-margin-bottom-small">Full-Stack Jobs</h3>
                            <p class="feature-box__text">
                                Learn how to be a one many army by signing up for these positions! 
                            </p>
                        </div>
                    </div>
                    <div class="col-1-of-4">
                        <div class="feature-box">
                            <i class="feature-box__icon icon-basic-heart"></i>
                            <h3 class="heading-tertiary u-margin-bottom-small">Not Sure?</h3>
                            <p class="feature-box__text">
                                Click here for companies willing to expose you to everything so that you can make the decision for you! 
                            </p>
                        </div>
                    </div>
                </div>
            </section>
        </main>
	</body>
</html>