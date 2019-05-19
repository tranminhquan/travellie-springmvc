<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
                    <li class="nav-item"><a href="homestays.html" class="nav-link" >Homestays</a></li>
                    <li class="nav-item"><a href="blog.html" class="nav-link">News</a></li>
                    <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                    <li class="nav-item cta"><a class="nav-link" href="search.html"><span>Find homestay</span></a></li>
                </ul>
            </div>
        </div>
    </nav>
     <!--END nav-->
    <div class="hero-wrap js-fullheight" style="background-image: url('Resources/Content/images/bg_1.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
                 data-scrollax-parent="true">
                <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                    <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>Explore
                        <br></strong> your amazing homestay</h1>
                    <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Find great places to stay, eat, shop,
                        or visit from local experts</p>
                    <div class="block-17 my-4">
                        <form action="" method="post" class="d-block d-flex">
                            <div class="fields d-block d-flex">
                                <div class="textfield-search one-third">
                                    <input type="text" class="form-control" placeholder="Your name of homestay">
                                </div>
                            </div>
                            <input type="submit" class="search-submit btn btn-primary" value="Search">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="ftco-section services-section bg-light">
        <div class="container">
            <div class="row d-flex">
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon"><span class="flaticon-guarantee"></span></div>
                        </div>
                        <div class="media-body p-2 mt-2">
                            <h3 class="heading mb-3">Best Quality Guarantee</h3>
                            <p>2,000,000+ verified reviews from real homestay guests will help you make the right
                                decision.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon"><span class="flaticon-like"></span></div>
                        </div>
                        <div class="media-body p-2 mt-2">
                            <h3 class="heading mb-3">Travellers Love Us</h3>
                            <p>Every home has a host present and they do more than just hand over keys. They'll help you
                                settle
                                into life in a new place.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon"><span class="flaticon-detective"></span></div>
                        </div>
                        <div class="media-body p-2 mt-2">
                            <h3 class="heading mb-3">Best Travel Agent</h3>
                            <p>Use our helpful features to find the perfect host family.
                                Whether you want to borrow a bike or have full access to the kitchen we have the right room
                                for
                                your stay.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon"><span class="flaticon-support"></span></div>
                        </div>
                        <div class="media-body p-2 mt-2">
                            <h3 class="heading mb-3">Our Dedicated Support</h3>
                            <p>Offering quality and affordability, homestays are a great value accommodation option for
                                short or
                                long term stays.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-start mb-5 pb-3">
                <div class="col-md-7 heading-section ftco-animate">
                    <span class="subheading">Special Offers</span>
                    <h2 class="mb-4"><strong>Popular</strong> Homestays</h2>
                </div>
            </div>
        </div>
        <div class="container-fluid col-md-6">
            <div class="row">
                <div class="col-md-12">
                    <div class="destination-slider owl-carousel ftco-animate">
                        <c:forEach var="hs" items="${homestays}" varStatus="status" >
                                <div class="destination">
                                    <a href="#" class="img img-2 d-flex justify-content-center align-items-center"
                                       style="background-image: url(${hs.featureImage});">
                                        <div class="icon d-flex justify-content-center align-items-center">
                                            <span class="icon-search2"></span>
                                        </div>
                                    </a>
                                    <div class="text p-3">
                                        <div class="d-flex">
                                            <div class="one">
                                                <h3><a href="#">${hs.name}</a></h3>
                                                <p class="rate">
                                                    <i class="icon-star"></i>
                                                    <i class="icon-star"></i>
                                                    <i class="icon-star"></i>
                                                    <i class="icon-star"></i>
                                                    <i class="icon-star-o"></i>
                                                </p>
                                            </div>
<!--                                            <div class="two">
                                                <span class="price per-price">$40<br><small>/night</small></span>
                                            </div>-->
                                        </div>

                                        <hr>
                                        <p class="bottom-area d-flex">
                                            <span><i class="icon-map-o"></i>  ${hs.distance}</span>
                                            <span class="ml-auto"><a href="./homestays/${hs.id}.html">Discovery</span></a>
                                        </p>
                                    </div>
                                </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(Resources/Content/images/bg_1.jpg);">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                    <h2 class="mb-4">Some fun facts</h2>
                    <span class="subheading">More than 100,000 hosts</span>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center">
                                <div class="text">
                                    <strong class="number" data-number="100000">0</strong>
                                    <span>Happy Customers</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center">
                                <div class="text">
                                    <strong class="number" data-number="40000">0</strong>
                                    <span>Destination Places</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 d-flex justify-content-center counter-wrap ftco-animate">
                            <div class="block-18 text-center">
                                <div class="text">
                                    <strong class="number" data-number="87000">0</strong>
                                    <span>Homestays</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section testimony-section bg-light">
        <div class="container">
            <div class="row justify-content-start">
                <div class="col-md-5 heading-section ftco-animate">
                    <span class="subheading">Best Directory Website</span>
                    <h2 class="mb-4 pb-3"><strong>Why</strong> Choose Us?</h2>
                    <p>With a vision of taking an offline industry online, we do this to offer guests a wide range of rental
                        rooms at budget-friendly prices as well as give hosts an opportunity to broadcast their local
                        habit.</p>
                    <p><a href="#" class="btn btn-primary btn-outline-primary mt-4 px-4 py-3">Read more</a></p>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-6 heading-section ftco-animate">
                    <span class="subheading">Testimony</span>
                    <h2 class="mb-4 pb-3"><strong>Our</strong> Guests Says</h2>
                    <div class="row ftco-animate">
                        <div class="col-md-12">
                            <div class="carousel-testimony owl-carousel">
                                <div class="item">
                                    <div class="testimony-wrap d-flex">
                                        <div class="user-img mb-5" style="background-image: url(Resources/Content/images/person_1.jpg)">
                                        <span class="quote d-flex align-items-center justify-content-center">
                                          <i class="icon-quote-left"></i>
                                        </span>
                                        </div>
                                        <div class="text ml-md-4">
                                            <p class="mb-5">We enjoyed ourselves immensely at Michelle's.
                                                We stayed only for a few days but it almost felt like home.
                                                Michelle was nice and caring and at the same time greately respectful of our
                                                privacy.
                                                The location is very convenient to reach the city centre and Michelle's
                                                daughter
                                                Alysha is the most well-behaved,
                                                active and creative little girl I have ever met.</p>
                                            <p class="name">Dennis Green</p>
                                            <span class="position">Guest from italy</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimony-wrap d-flex">
                                        <div class="user-img mb-5" style="background-image: url(Resources/Content/images/person_2.jpg)">
                                        <span class="quote d-flex align-items-center justify-content-center">
                                          <i class="icon-quote-left"></i>
                                        </span>
                                        </div>
                                        <div class="text ml-md-4">
                                            <p class="mb-5">Definitely a place to try. Ann is unique and lovely.
                                                A super host who has become a friend for me. I felt like home.
                                                Perfect location to explore the areas, near to the city with the calm of the
                                                suburb.
                                                And the double room is sooooo comfortable,
                                                trust me you want to pay the extra if it's still available ;-)</p>
                                            <p class="name">Dennis Green</p>
                                            <span class="position">Guest from London</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimony-wrap d-flex">
                                        <div class="user-img mb-5" style="background-image: url(Resources/Content/images/person_3.jpg)">
                                        <span class="quote d-flex align-items-center justify-content-center">
                                          <i class="icon-quote-left"></i>
                                        </span>
                                        </div>
                                        <div class="text ml-md-4">
                                            <p class="mb-5">I enjoyed my stay with Ann.
                                                When I arrived in the evening Ann had prepared a nice salad for me which I
                                                really
                                                appreciated very much.
                                                She gave me a lot of information, which places to visit and it was very
                                                practical to
                                                be able to fetch the DART
                                                (running every half hour) into the center of Dublin or along the coast to
                                                visit other
                                                places.</p>
                                            <p class="name">Dennis Green</p>
                                            <span class="position">Guest from Philippines</span>
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

    <section class="ftco-section bg-light">
        <div class="container">
            <div class="row justify-content-start mb-5 pb-3">
                <div class="col-md-7 heading-section ftco-animate">
                    <span class="subheading">Recent News</span>
                    <h2><strong>Tips</strong> &amp; Articles</h2>
                </div>
            </div>
            <div class="row d-flex">
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url(Resources/Content/images/image_1.jpg);">
                        </a>
                        <div class="text p-4 d-block">
                            <span class="tag">Tips, Travel</span>
                            <h3 class="heading mt-3"><a href="#">8 Best homestay in Philippines that you don't miss out</a>
                            </h3>
                            <div class="meta mb-3">
                                <div><a href="#">December 21, 2018</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a class="meta-chat" href="#"><span class="icon-chat"></span> 100</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url(Resources/Content/images/image_2.jpg);">
                        </a>
                        <div class="text p-4">
                            <span class="tag">Culture</span>
                            <h3 class="heading mt-3"><a href="#">8 events to attend in Greater Palm Springs, California,
                                USA</a>
                            </h3>
                            <div class="meta mb-3">
                                <div><a href="#">December 19, 2018</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a class="meta-chat" href="#"><span class="icon-chat"></span> 75</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url(Resources/Content/images/image_3.jpg);">
                        </a>
                        <div class="text p-4">
                            <span class="tag">Tips, Travel</span>
                            <h3 class="heading mt-3"><a href="#">Q&A: Can I carry Christmas dinner in my hand luggage?</a>
                            </h3>
                            <div class="meta mb-3">
                                <div><a href="#">November 30, 2018</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a class="meta-chat" href="#"><span class="icon-chat"></span> 24</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 d-flex ftco-animate">
                    <div class="blog-entry align-self-stretch">
                        <a href="blog-single.html" class="block-20" style="background-image: url(Resources/Content/images/image_4.jpg);">
                        </a>
                        <div class="text p-4">
                            <span class="tag">Tips, Travel</span>
                            <h3 class="heading mt-3"><a href="#">Your car can earn you money when you park at Gatwick
                                Airport</a>
                            </h3>
                            <div class="meta mb-3">
                                <div><a href="#">November 15, 2018</a></div>
                                <div><a href="#">Admin</a></div>
                                <div><a class="meta-chat" href="#"><span class="icon-chat"></span> 30</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section-parallax">
        <div class="parallax-img d-flex align-items-center">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                        <h2>Subcribe to our Newsletter</h2>
                        <p>With a vision of taking an offline industry online, we do this to offer guests a wide range of
                            rental
                            rooms at budget-friendly prices as well as give hosts an opportunity to broadcast their local
                            habit.</p>
                        <div class="row d-flex justify-content-center mt-5">
                            <div class="col-md-8">
                                <form action="#" class="subscribe-form">
                                    <div class="form-group d-flex">
                                        <input type="text" class="form-control" placeholder="Enter email address">
                                        <input type="submit" value="Subscribe" class="submit px-3">
                                    </div>
                                </form>
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