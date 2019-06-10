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
                        <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="homestays.html">Homestays</a></li>
                        <li class="nav-item active"><a href="blog.html" class="nav-link">News</a></li>
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

        <div class="hero-wrap js-fullheight" style="background-image: url('Resources/Content/images/bg_4.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                    <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
                        <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a
                                    href="index.html">Home</a></span> <span>Blog</span></p>
                        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Tips &amp; Articles</h1>
                    </div>
                </div>
            </div>
        </div>


        <section class="ftco-section bg-light">
            <div class="container">
                <div class="row d-flex">
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Resources/Content/images/image_1.jpg');">
                            </a>
                            <div class="text p-4 d-block">
                                <span class="tag">Tips, Travel</span>
                                <h3 class="heading mt-3"><a href="#">8 Best homestay in Philippines that you don't miss out</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">August 12, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Resources/Content/images/image_2.jpg');">
                            </a>
                            <div class="text p-4">
                                <span class="tag">Culture</span>
                                <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">August 12, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Resources/Content/images/image_3.jpg');">
                            </a>
                            <div class="text p-4">
                                <span class="tag">Tips, Travel</span>
                                <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">August 12, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Resources/Content/images/image_4.jpg');">
                            </a>
                            <div class="text p-4">
                                <span class="tag">Tips, Travel</span>
                                <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">August 12, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Resources/Content/images/image_5.jpg');">
                            </a>
                            <div class="text p-4 d-block">
                                <span class="tag">Tips, Travel</span>
                                <h3 class="heading mt-3"><a href="#">8 Best homestay in Philippines that you don't miss out</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">August 12, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Resources/Content/images/image_6.jpg');">
                            </a>
                            <div class="text p-4">
                                <span class="tag">Culture</span>
                                <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">August 12, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Resources/Content/images/image_7.jpg');">
                            </a>
                            <div class="text p-4">
                                <span class="tag">Tips, Travel</span>
                                <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">August 12, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20" style="background-image: url('Resources/Content/images/image_8.jpg');">
                            </a>
                            <div class="text p-4">
                                <span class="tag">Tips, Travel</span>
                                <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                                <div class="meta mb-3">
                                    <div><a href="#">August 12, 2018</a></div>
                                    <div><a href="#">Admin</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
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
        </section>

        <footer class="ftco-footer ftco-bg-dark ftco-section">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Travelie</h2>
                            <p>With a vision of taking an offline industry online, we do this to offer guests a wide range of rental
                                rooms at budget-friendly prices as well as give hosts an opportunity to broadcast their local habit.</p>
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