<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Travelie</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

                        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link crossorigin="anonymous" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
              integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" rel="stylesheet">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <link rel="stylesheet" href="Resources/Content/css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="Resources/Content/css/animate.css">

        <link rel="stylesheet" href="Resources/Content/css/owl.carousel.min.css">
        <link rel="stylesheet" href="Resources/Content/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="Resources/Content/css/magnific-popup.css">

        <link rel="stylesheet" href="Resources/Content/css/aos.css">

        <link rel="stylesheet" href="Resources/Content/css/ionicons.min.css">

        <link rel="stylesheet" href="Resources/Content/css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="Resources/Content/css/jquery.timepicker.css">


        <link rel="stylesheet" href="Resources/Content/css/flaticon.css">
        <link rel="stylesheet" href="Resources/Content/css/icomoon.css">
        <link rel="stylesheet" href="Resources/Content/css/style.css">
    </head>
    <body>                       
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.html">Travelie</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
                        <li class="nav-item active"><a href="homestays.html" class="nav-link">Homestays</a></li>
                        <li class="nav-item"><a class="nav-link" href="blog.html">News</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                    </ul>
                    
                    <spring:form action="searchHomestay.html" method="post" class="d-block d-flex" commandName="homestay">
                            <spring:input type="search" class="form-control mr-sm-2" placeholder="Homestay, News" autocomplete="true" path="name"/>
                            <input type="submit" class="search-submit btn btn-primary" value="Search">
                        </spring:form>
                    
                    <ul class="navbar-nav ml-auto nav-flex-icons">
                        <li class="nav-item avatar dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-55" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
<!--                                    <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-2.jpg" class="rounded-circle z-depth-0" style="height: 50px;"
                                     alt="avatar image">-->
                                <img src="${sessionScope.userinfo.image}" class="rounded-circle z-depth-0" style="height: 50px;"
                                     alt="avatar image">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-secondary"
                                 aria-labelledby="navbarDropdownMenuLink-55">
                                <a class="dropdown-item" href="#">${sessionScope.userinfo.name}</a>
                                <c:if test="${sessionScope.userinfo==null}">
                                    <a class="dropdown-item" data-toggle="modal" data-target="#signinModal" href="#">Sign in</a>
                                </c:if>
                                <a class="dropdown-item" data-toggle="modal" data-target="#signupModal" href="#">Create an account</a>
                                <c:if test="${sessionScope.userinfo!=null}">    
                                    <a class="dropdown-item" data-toggle="modal" data-target="#signoutModal" href="#">Sign out</a>
                                </c:if>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--END nav--> 


        <div class="hero-wrap">
            <div class="single-slider owl-carousel">
                <c:forEach var="hs" items="${homestays}" varStatus="status" >
                    <div class="item">
                        <div class="hotel-img" style="background-image: url(${hs.featureImage});">
                            <div class="carousel-caption text-left">
                                <div class="row p-0 slider-text js-fullheight align-items-end justify-content-left"
                                     data-scrollax-parent="true">
                                    <div class="col-md-9 ftco-animate text-left"
                                         data-scrollax=" properties: { translateY: '70%' }">
                                        <div class="row">
                                            <!--Left column-->
                                            <!--<a href="/detailHomestay?id=${hs.id}">-->
                                            <a href="./homestays/${hs.id}.html">                                            
                                                <div>
                                                    <h1 class="mb-3 bread"
                                                        data-scrollax="properties: { translateY: '10%', opacity: 0.5 }">
                                                        ${hs.name}
                                                    </h1>

<!--                                                    <h2 class="mb-3 bread text-warning"
                                                        data-scrollax="properties: { translateY: '10%', opacity: 0.5 }">
                                                        <p class="rate">

                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star"></i>
                                                            <i class="icon-star-half-o"></i>
                                                            <span>7.5 Rating</span>
                                                    </h2>-->

                                                    <p class="mb-3" data-scrollax="properties: { translateY: '10%', opacity: 0.5 }">

                                                        <span>
                                                            <i class="material-icons"
                                                               style="font-size:18px; vertical-align: middle;">access_time</i>
                                                            ${hs.timeStart}:00 - ${hs.timeEnd}:00
                                                        </span>

                                                        <br/>

                                                        <span>
                                                            <i class="material-icons"
                                                               style="font-size:18px; vertical-align: middle;">people_outline</i>
                                                            ${hs.numberPeople} persons
                                                        </span>

                                                        <br/>

                                                        <span>
                                                            <i class="far fa-calendar-alt"
                                                               style="font-size:18px;"></i>
                                                            ${hs.numberDays} days
                                                        </span>
                                                    </p>

                                                    <hr>

                                                    <p class="bottom-area d-flex"
                                                       data-scrollax="properties: { translateY: '10%', opacity: 0.5 }">
                                                        <span><i class="icon-map-o"></i> ${hs.distance} </span>
                                                    </p>

                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>


        <section class="ftco-section ftco-degree-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 ftco-animate sidebar">
<!--                        <div class="tagcloud">
                            <a href="#" class="tag-cloud-link">Single</a>
                            <a href="#" class="tag-cloud-link">Seaside</a>
                            <a href="#" class="tag-cloud-link">Expedition</a>
                            <a href="#" class="tag-cloud-link">By myself</a>
                            <a href="#" class="tag-cloud-link">A day out</a>
                            <a href="#" class="tag-cloud-link">Local cuisine</a>
                            <a href="#" class="tag-cloud-link">Leisure</a>
                        </div>-->

                        <!--<div class="sidebar-wrap bg-light ftco-animate mt-3">-->
                        <div class="sidebar-wrap bg-light ftco-animate">
                            <h3 class="heading mb-4">Find Homestay</h3>
                            <spring:form method="post" commandName="homestay" action="homestaysFilter.html">
                                <div class="fields">
                                    <div class="form-group">
                                        <div class="select-wrap one-third">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <spring:select class="form-control" path="address">
                                                <spring:option value = "" label = "Location"/>
                                                <spring:options items = "${addressList}"/>
                                            </spring:select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <spring:input type="number" min="1" class="form-control" placeholder="Duration" path="numberDays" style="text-align: left;"/>
                                    </div>
                                    <div class="form-group">
                                        <spring:input type="number" min="1" class="form-control" placeholder="Quantity of People" path="numberPeople" style="text-align: left;"/>
                                    </div>
                                    <div class="form-group">
                                        <!--<div class="range-slider">-->
                                        <span>
                                            Time: <spring:input max="24" min="0" type="number" placeholder="start" path="timeStart"/> :00	-
                                            <spring:input max="24" min="0" type="number" placeholder="end" path="timeEnd"/> :00
                                        </span>
<!--                                            <input value="1000" min="0" max="120000" step="500" type="range"/>
                                            <input value="50000" min="0" max="120000" step="500" type="range"/>-->
                                            <!--</svg>-->
                                        <!--</div>-->
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Search" class="btn btn-primary py-3 px-5"/>
                                    </div>
                                </div>
                            </spring:form>
                        </div>
<!--                        <div class="sidebar-wrap bg-light ftco-animate">
                            <h3 class="heading mb-4">Star Rating</h3>
                            <form method="post" class="star-rating">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">
                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i
                                                    class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i></span>
                                        </p>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">
                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i
                                                    class="icon-star"></i><i class="icon-star"></i><i
                                                    class="icon-star-o"></i></span></p>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">
                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i
                                                    class="icon-star"></i><i class="icon-star-o"></i><i
                                                    class="icon-star-o"></i></span></p>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">
                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star"></i><i
                                                    class="icon-star-o"></i><i class="icon-star-o"></i><i
                                                    class="icon-star-o"></i></span></p>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">
                                        <p class="rate"><span><i class="icon-star"></i><i class="icon-star-o"></i><i
                                                    class="icon-star-o"></i><i class="icon-star-o"></i><i
                                                    class="icon-star-o"></i></span></p>
                                    </label>
                                </div>
                            </form>
                        </div>-->

                    </div>
                    <div class="col-lg-9">
                        <div class="row">
                            <c:forEach var="hs" items="${homestays}" varStatus="status" >
                                <div class="col-md-4 ftco-animate">
                                    <div class="destination">
                                        <!--<a href="/detailHomestay?id=${hs.id}"-->
                                        <a href="./homestays/${hs.id}.html"
                                           class="img img-2 d-flex justify-content-center align-items-center"
                                           style="background-image: url(${hs.featureImage});">
                                            <div class="icon d-flex justify-content-center align-items-center">
                                                <span class="icon-search2"></span>
                                            </div>
                                        </a>
                                        <div class="text p-3">
                                            <div class="d-flex">
                                                <div>
                                                    <h3><a href="./homestays/${hs.id}.html">${hs.name}</a></h3>
<!--                                                    <p class="rate">
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star-o"></i>
                                                        <span>8 Ratings</span>
                                                    </p>-->
                                                </div>
<!--                                                                                            <div class="two">
                                                                                            <span class="price per-price">$40<br><small>/night</small></span>
                                                                                            </div>-->
                                            </div>
                                            <p>
                                                <span>
                                                    <i class="material-icons"
                                                       style="font-size:18px; vertical-align: middle;">access_time</i>
                                                    ${hs.timeStart}:00 - ${hs.timeEnd}:00
                                                </span>
                                                <br/>
                                                <span>
                                                    <i class="material-icons"
                                                       style="font-size:18px; vertical-align: middle;">people_outline</i>
                                                    ${hs.numberPeople} persons
                                                </span>
                                                <br/>
                                                <span>
                                                    <i class="far fa-calendar-alt"
                                                       style="font-size:18px; vertical-align: top;"></i>
                                                    ${hs.numberDays} days
                                                </span>
                                            </p>

                                            <hr>
                                            <p class="bottom-area d-flex">
                                                <span><i class="icon-map-o"></i> ${hs.distance} </span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                        <div class="row mt-5">
                            <div class="col text-center">
                                <div class="block-27">
                                    <ul>
                                        <li><a href="#">&lt;</a></li>
                                        <li class="active"><span>1</span></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">&gt;</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> 

        <footer class="ftco-footer ftco-bg-dark ftco-section">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Travelie</h2>
                            <p>With a vision of taking an offline industry online, we do this to offer guests a wide range of
                                rental
                                rooms at budget-friendly prices as well as give hosts an opportunity to broadcast their local
                                habit.</p>
                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4 ml-md-5">
                            <h2 class="ftco-heading-2">Information</h2>
                            <ul class="list-unstyled">
                                <li><a href="#" class="py-2 d-block">About</a></li>
                                <li><a href="#" class="py-2 d-block">Service</a></li>
                                <li><a href="#" class="py-2 d-block">Terms and Conditions</a></li>
                                <li><a href="#" class="py-2 d-block">Become a partner</a></li>
                                <li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
                                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Customer Support</h2>
                            <ul class="list-unstyled">
                                <li><a href="#" class="py-2 d-block">FAQ</a></li>
                                <li><a href="#" class="py-2 d-block">Payment Option</a></li>
                                <li><a href="#" class="py-2 d-block">Booking Tips</a></li>
                                <li><a href="#" class="py-2 d-block">How it works</a></li>
                                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Have a Questions?</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <li><span class="icon icon-map-marker"></span><span class="text">Quarter 6, Linh Trung Ward, Thu Duc District, Ho Chi Minh City</span>
                                    </li>
                                    <li><a href="#"><span class="icon icon-phone"></span><span
                                                class="text">(028) 372 52002</span></a>
                                    </li>
                                    <li><a href="#"><span class="icon icon-envelope"></span><span
                                                class="text">absoluketeam@gmail.com</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">

                        <p> Copyright &copy;
                            <script>document.write(new Date().getFullYear());</script>
                            Absoluke Team
                        </p>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Signin Modal -->
            <div class="modal fade" id="signinModal" tabindex="-1" role="dialog" aria-labelledby="signinModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="signinModalLabel">Sign in</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        
                        <div class="modal-body">
                            <spring:form method="post" commandName="user" action="signin.html">
                                <div class="form-group">
                                    <div class="wthree_input">
                                        <i aria-hidden="true" class="fa fa-user" style="font-size:18px;"></i>
                                        <spring:input class="form-control" id="Email" name="email" placeholder="Email" required="true"
                                               type="email" path="email"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="wthree_input">
                                        <i aria-hidden="true" class="material-icons" style="font-size:22px;">vpn_key</i>
                                        <spring:input class="form-control" id="Password" name="password" placeholder="Password" required="true"
                                               type="password" path="password"/>
                                    </div>
                                </div>
                                    <input type="submit" value="Sign in" class="btn btn-primary">
                            </spring:form>
                        </div>
                    </div>
                </div>
            </div>
        <!--END Signin Modal-->
        
            <!-- Signup Modal -->
            <div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="signupModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="signupModalLabel">Create an account</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        
                        <div class="modal-body">
                            <spring:form method="post" commandName="user" action="signup.html">
                                <div class="form-group">
                                    <div class="wthree_input">
                                        <i aria-hidden="true" class="fa fa-user" style="font-size:18px;"></i>
                                        <spring:input class="form-control" id="Email" name="email" placeholder="Email" required="true"
                                               type="email" path="email"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="wthree_input">
                                        <i aria-hidden="true" class="material-icons" style="font-size:22px;">vpn_key</i>
                                        <spring:input class="form-control" id="Password" name="password" placeholder="Password" required="true"
                                               type="password" path="password"/>
                                    </div>
                                </div>
<!--                                <div class="form-group">
                                    <div class="wthree_input">
                                        <%--<spring:input class="form-control" id="ConfirmPassword" name="confirmPassword" placeholder="Confirm Password" required=""--%>
                                               type="password" path="password"/>
                                    </div>
                                </div>-->
                                <div class="form-group">
                                    <div class="wthree_input">                                      
                                        <i aria-hidden="true" class="fas fa-id-card" style="font-size:18px;"></i>
                                        <spring:input class="form-control" id="Name" name="name" placeholder="Name" required="true"
                                               type="text" path="name"/>
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <div class="wthree_input">                                      
                                        <i aria-hidden="true" class="fas fa-image" style="font-size:18px;"></i>
                                        <spring:input class="form-control" id="Image" name="image" placeholder="Image URL"
                                               type="url" path="image"/>
                                    </div>
                                </div>    

                                    <input type="submit" value="Create an account" class="btn btn-primary">
                            </spring:form>
                        </div>
                    </div>
                </div>
            </div>
        <!--END Signup Modal-->
        
        <!--Signout Modal-->
        <div class="modal fade" id="signoutModal" tabindex="-1" role="dialog" aria-labelledby="signoutModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="signoutModalLabel">Are you signing out?</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        
                        <div class="modal-body">
                            <spring:form method="post" action="signout.html">
                                <input type="submit" value="Yes" class="btn btn-primary">
                            </spring:form>
                        </div>
                    </div>
                </div>
            </div>
        <!--END Signout Modal-->
        
        <!--loader--> 
        <div id="ftco-loader" class="show fullscreen">
            <svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                    stroke="#F96D00"/>
            </svg>
        </div>


        <script src="Resources/Scripts/js/jquery.min.js"></script>
        <script src="Resources/Scripts/js/jquery-migrate-3.0.1.min.js"></script>
        <script src="Resources/Scripts/js/popper.min.js"></script>
        <script src="Resources/Scripts/js/bootstrap.min.js"></script>
        <script src="Resources/Scripts/js/jquery.easing.1.3.js"></script>
        <script src="Resources/Scripts/js/jquery.waypoints.min.js"></script>
        <script src="Resources/Scripts/js/jquery.stellar.min.js"></script>
        <script src="Resources/Scripts/js/owl.carousel.min.js"></script>
        <script src="Resources/Scripts/js/jquery.magnific-popup.min.js"></script>
        <script src="Resources/Scripts/js/aos.js"></script>
        <script src="Resources/Scripts/js/jquery.animateNumber.min.js"></script>
        <script src="Resources/Scripts/js/bootstrap-datepicker.js"></script>
        <script src="Resources/Scripts/js/jquery.timepicker.min.js"></script>
        <script src="Resources/Scripts/js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="Resources/Scripts/js/google-map.js"></script>
        <script src="Resources/Scripts/js/main.js"></script>

    </body>
</html>