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
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
                        <li class="nav-item active"><a href="about.html" class="nav-link">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="homestays.html">Homestays</a></li>
                        <li class="nav-item"><a href="blog.html" class="nav-link">News</a></li>
                        <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
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
        <!-- END nav -->

        <div class="hero-wrap js-fullheight" style="background-image: url('Resources/Content/images/bg_2.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                    <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                        <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a
                                    href="index.html">Home</a></span> <span>About</span></p>
                        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">About Us</h1>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section">
            <div class="container">
                <div class="row d-md-flex">
                    <div class="col-md-6 ftco-animate img about-image" style="background-image: url(Resources/Content/images/about.jpg);">
                    </div>
                    <div class="col-md-6 ftco-animate p-md-5">
                        <div class="row">
                            <div class="col-md-12 nav-link-wrap mb-5">
                                <div class="nav ftco-animate nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                    <a class="nav-link active" id="v-pills-whatwedo-tab" data-toggle="pill" href="#v-pills-whatwedo" role="tab" aria-controls="v-pills-whatwedo" aria-selected="true">What we do</a>

                                    <a class="nav-link" id="v-pills-mission-tab" data-toggle="pill" href="#v-pills-mission" role="tab" aria-controls="v-pills-mission" aria-selected="false">Our mission</a>

                                    <a class="nav-link" id="v-pills-goal-tab" data-toggle="pill" href="#v-pills-goal" role="tab" aria-controls="v-pills-goal" aria-selected="false">Our goal</a>
                                </div>
                            </div>
                            <div class="col-md-12 d-flex align-items-center">

                                <div class="tab-content ftco-animate" id="v-pills-tabContent">

                                    <div class="tab-pane fade show active" id="v-pills-whatwedo" role="tabpanel" aria-labelledby="v-pills-whatwedo-tab">
                                        <div>
                                            <h2 class="mb-4">Offering Reliable Hosting</h2>
                                            <p>With a vision of taking an offline industry online, we do this to offer guests a wide
                                                range of rental rooms at budget-friendly prices as well as give hosts an opportunity to
                                                broadcast their local habit. Separated they live in Bookmarksgrove right at the coast of
                                                the Semantics, a large language ocean.</p>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="v-pills-mission" role="tabpanel" aria-labelledby="v-pills-mission-tab">
                                        <div>
                                            <h2 class="mb-4">Exceptional Web Solutions</h2>
                                            <p>With a vision of taking an offline industry online, we do this to offer guests a wide
                                                range of rental rooms at budget-friendly prices as well as give hosts an opportunity to
                                                broadcast their local habit. Separated they live in Bookmarksgrove right at the coast of
                                                the Semantics, a large language ocean.</p>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="v-pills-goal" role="tabpanel" aria-labelledby="v-pills-goal-tab">
                                        <div>
                                            <h2 class="mb-4">Help Our Customer</h2>
                                            <p>With a vision of taking an offline industry online, we do this to offer guests a wide
                                                range of rental rooms at budget-friendly prices as well as give hosts an opportunity to
                                                broadcast their local habit. Separated they live in Bookmarksgrove right at the coast of
                                                the Semantics, a large language ocean.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section bg-light">
            <div class="container">
                <div class="row justify-content-start mb-5 pb-3">
                    <div class="col-md-7 heading-section ftco-animate">
                        <span class="subheading">FAQS</span>
                        <h2 class="mb-4"><strong>Frequently</strong> Ask Question</h2>
                    </div>
                </div>  
                <div class="row">
                    <div class="col-md-12 ftco-animate">
                        <div id="accordion">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <a class="card-link" data-toggle="collapse"  href="#menuone" aria-expanded="true" aria-controls="menuone">When she reached the first hills? <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
                                        </div>
                                        <div id="menuone" class="collapse show">
                                            <div class="card-body">
                                                <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-header">
                                            <a class="card-link" data-toggle="collapse"  href="#menutwo" aria-expanded="false" aria-controls="menutwo">Italic Mountains, she had a last <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
                                        </div>
                                        <div id="menutwo" class="collapse">
                                            <div class="card-body">
                                                <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-header">
                                            <a class="card-link" data-toggle="collapse"  href="#menu3" aria-expanded="false" aria-controls="menu3"> Bookmarksgrove, the headline? <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
                                        </div>
                                        <div id="menu3" class="collapse">
                                            <div class="card-body">
                                                <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <a class="card-link" data-toggle="collapse"  href="#menu4" aria-expanded="false" aria-controls="menu4">Alphabet Village and the subline of her own? <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
                                        </div>
                                        <div id="menu4" class="collapse">
                                            <div class="card-body">
                                                <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-header">
                                            <a class="card-link" data-toggle="collapse"  href="#menu5" aria-expanded="false" aria-controls="menu5">Then she continued her way? <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
                                        </div>
                                        <div id="menu5" class="collapse">
                                            <div class="card-body">
                                                <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-header">
                                            <a class="card-link" data-toggle="collapse"  href="#menu6" aria-expanded="false" aria-controls="menu6">Skyline of her hometown Bookmarksgrove? <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
                                        </div>
                                        <div id="menu6" class="collapse">
                                            <div class="card-body">
                                                <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
                                            </div>
                                        </div>
                                    </div>
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
                            <p>With a vision of taking an offline industry online, we do this to offer guests a wide range of rental
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
                                    <li><a href="#"><span class="icon icon-phone"></span><span class="text">(028) 372 52002</span></a>
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

        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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