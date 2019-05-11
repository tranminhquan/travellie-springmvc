<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Travelie</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link crossorigin="anonymous" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" rel="stylesheet">

    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/animate.css">

    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/magnific-popup.css">

    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/aos.css">

    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/ionicons.min.css">

    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/jquery.timepicker.css">


    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/flaticon.css">
    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/icomoon.css">
    <link rel="stylesheet" href="/WEB-INF/Resources/Content/css/style.css">
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
                    <!--<li class="nav-item"><a href="tour.html" class="nav-link">Tour</a></li>-->
                    <li class="nav-item active"><a href="homestays.html" class="nav-link">Homestays</a></li>
                    <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                    <li class="nav-item cta"><a class="nav-link" href="search.html"><span>Find homestay</span></a></li>
                </ul>
            </div>
        </div>
    </nav>
     <!--END nav--> 


    <div class="hero-wrap">
        <div class="single-slider owl-carousel">
            <c:forEach var="hs" items="${homestays}" varStatus="status" >
                <div class="item">
                    <div class="hotel-img" style="background-image: url({{feature_images.[0].images}});">
                        <div class="carousel-caption text-left">
                            <div class="row p-0 slider-text js-fullheight align-items-end justify-content-left"
                                 data-scrollax-parent="true">
                                <div class="col-md-9 ftco-animate text-left"
                                     data-scrollax=" properties: { translateY: '70%' }">
                                    <div class="row">
                                        Left column
                                        <!--<a href="/detailHomestay?id=${hs.id}">-->
                                        <a href="./homestays/${hs.id}.html">                                            
                                        <div>
                                            <h1 class="mb-3 bread"
                                                data-scrollax="properties: { translateY: '10%', opacity: 0.5 }">
                                                ${hs.name}
                                            </h1>

                                            <h2 class="mb-3 bread text-warning"
                                                data-scrollax="properties: { translateY: '10%', opacity: 0.5 }">
                                                <p class="rate">

                                                    <i class="icon-star"></i>
                                                    <i class="icon-star"></i>
                                                    <i class="icon-star"></i>
                                                    <i class="icon-star"></i>
                                                    <i class="icon-star-half-o"></i>
                                                    <span>7.5 Rating</span>
                                            </h2>

                                            <p class="mb-3" data-scrollax="properties: { translateY: '10%', opacity: 0.5 }">

                                                                                    <span>
                                                                                            <i class="material-icons"
                                                   style="font-size:18px; vertical-align: middle;">access_time</i>
                                                ${hs.timeStart}:00 - ${hs.timeEnd}}:00
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
                    <div class="tagcloud">
                        <a href="#" class="tag-cloud-link">Single</a>
                        <a href="#" class="tag-cloud-link">Seaside</a>
                        <a href="#" class="tag-cloud-link">Expedition</a>
                        <a href="#" class="tag-cloud-link">By myself</a>
                        <a href="#" class="tag-cloud-link">A day out</a>
                        <a href="#" class="tag-cloud-link">Local cuisine</a>
                        <a href="#" class="tag-cloud-link">Leisure</a>
                    </div>

                    <div class="sidebar-wrap bg-light ftco-animate mt-3">
                        <h3 class="heading mb-4">Find City</h3>
                        <form action="#">
                            <div class="fields">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Homestay">
                                </div>
                                <div class="form-group">
                                    <div class="select-wrap one-third">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <select name="" id="" class="form-control">
                                            <option value="an giang">An Giang</option>
                                            <option value="ba ria - vung tau">BÃ  Rá»a - VÅ©ng TÃ u</option>
                                            <option value="bac lieu">Báº¡c LiÃªu</option>
                                            <option value="bac kan">Báº¯c Káº¡n</option>
                                            <option value="bac giang">Báº¯c Giang</option>
                                            <option value="bac ninh">Báº¯c Ninh</option>
                                            <option value="ben tre">Báº¿n Tre</option>
                                            <option value="binh duong">BÃ¬nh DÆ°Æ¡ng</option>
                                            <option value="binh dinh">BÃ¬nh Äá»nh</option>
                                            <option value="binh phuoc">BÃ¬nh PhÆ°á»c</option>
                                            <option value="binh thuan">BÃ¬nh Thuáº­n</option>
                                            <option value="ca mau">CÃ  Mau</option>
                                            <option value="cao bang">Cao Báº±ng</option>
                                            <option value="can tho">Cáº§n ThÆ¡</option>
                                            <option value="da nang">ÄÃ  Náºµng</option>
                                            <option value="dak lak">Äáº¯k Láº¯k</option>
                                            <option value="dak nong">Äáº¯k NÃ´ng</option>
                                            <option value="dien bien">Äiá»n BiÃªn</option>
                                            <option value="dong nai">Äá»ng Nai</option>
                                            <option value="dong thap">Äá»ng ThÃ¡p</option>
                                            <option value="gia lai">Gia Lai</option>
                                            <option value="ha giang">HÃ  Giang</option>
                                            <option value="ha nam">HÃ  Nam</option>
                                            <option value="ha noi">HÃ  Ná»i</option>
                                            <option value="ha tay">HÃ  TÃ¢y</option>
                                            <option value="ha tinh">HÃ  TÄ©nh</option>
                                            <option value="hai duong">Háº£i DÆ°Æ¡ng</option>
                                            <option value="hai phong">Háº£i PhÃ²ng</option>
                                            <option value="hoa binh">HÃ²a BÃ¬nh</option>
                                            <option value="ho chi minh">Há» ChÃ­ Minh</option>
                                            <option value="hau giang">Háº­u Giang</option>
                                            <option value="hung yen">HÆ°ng YÃªn</option>
                                            <option value="khanh hoa">KhÃ¡nh HÃ²a</option>
                                            <option value="kien giang">KiÃªn Giang</option>
                                            <option value="kon tum">Kon Tum</option>
                                            <option value="lai chau">Lai ChÃ¢u</option>
                                            <option value="lao cai">LÃ o Cai</option>
                                            <option value="lang son">Láº¡ng SÆ¡n</option>
                                            <option value="lam dong">LÃ¢m Äá»ng</option>
                                            <option value="long an">Long An</option>
                                            <option value="nam dinh">Nam Äá»nh</option>
                                            <option value="nghe an">Nghá» An</option>
                                            <option value="ninh binh">Ninh BÃ¬nh</option>
                                            <option value="ninh thuan">Ninh Thuáº­n</option>
                                            <option value="phu tho">PhÃº Thá»</option>
                                            <option value="phu yen">PhÃº YÃªn</option>
                                            <option value="quang binh">Quáº£ng BÃ¬nh</option>
                                            <option value="quang nam">Quáº£ng Nam</option>
                                            <option value="quang ngai">Quáº£ng NgÃ£i</option>
                                            <option value="quang ninh">Quáº£ng Ninh</option>
                                            <option value="quang tri">Quáº£ng Trá»</option>
                                            <option value="soc trang">SÃ³c TrÄng</option>
                                            <option value="son la">SÆ¡n La</option>
                                            <option value="tay ninh">TÃ¢y Ninh</option>
                                            <option value="thai binh">ThÃ¡i BÃ¬nh</option>
                                            <option value="thai nguyen">ThÃ¡i NguyÃªn</option>
                                            <option value="thanh hoa">Thanh HÃ³a</option>
                                            <option value="thua thien - hue">Thá»«a ThiÃªn - Huáº¿</option>
                                            <option value="tien giang">Tiá»n Giang</option>
                                            <option value="tra vinh">TrÃ  Vinh</option>
                                            <option value="tuyen quang">TuyÃªn Quang</option>
                                            <option value="vinh long">VÄ©nh Long</option>
                                            <option value="vinh phuc">VÄ©nh PhÃºc</option>
                                            <option value="yen bai">YÃªn BÃ¡i</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" id="checkin_date" class="form-control" placeholder="Date from">
                                </div>
                                <div class="form-group">
                                    <input type="text" id="checkin_date" class="form-control" placeholder="Date to">
                                </div>
                                <div class="form-group">
                                    <div class="range-slider">
                                      <span>
                                                    <input type="number" value="25000" min="0" max="120000"/>	-
                                                    <input max="120000" min="0" type="number" value="50000"/> km
                                                  </span>
                                        <input value="1000" min="0" max="120000" step="500" type="range"/>
                                        <input value="50000" min="0" max="120000" step="500" type="range"/>
                                        </svg>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="sidebar-wrap bg-light ftco-animate">
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
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        {{#each other_homestay}}
                        <c:forEach var="hs" items="${homestays}" varStatus="status" >
                            <div class="col-md-4 ftco-animate">
                                <div class="destination">
                                    <a href="/detailHomestay?id=${hs.id}"
                                    class="img img-2 d-flex justify-content-center align-items-center"
                                    style="background-image: url({{feature_images.[0].images}});">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="icon-search2"></span>
                                    </div>
                                    </a>
                                    <div class="text p-3">
                                        <div class="d-flex">
                                            <div>
                                                <h3><a href="/detailHomestay?id=${hs.id}">${hs.name}</a></h3>
                                                <p class="rate">
                                                    <i class="icon-star"></i>
                                                    <i class="icon-star"></i>
                                                    <i class="icon-star"></i>
                                                    <i class="icon-star"></i>
                                                    <i class="icon-star-o"></i>
                                                    <span>8 Ratings</span>
                                                </p>
                                            </div>
                                            <div class="two">
                                            <span class="price per-price">$40<br><small>/night</small></span>
                                            </div>
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
                </div>  .col-md-9 
            </div>
        </div>
    </section>  .section 

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


     loader 
    <div id="ftco-loader" class="show fullscreen">
        <svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                    stroke="#F96D00"/>
        </svg>
    </div>


    <script src="/WEB-INF/Resources/Scripts/js/jquery.min.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/popper.min.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/bootstrap.min.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/jquery.easing.1.3.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/jquery.waypoints.min.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/jquery.stellar.min.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/owl.carousel.min.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/jquery.magnific-popup.min.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/aos.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/jquery.animateNumber.min.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/bootstrap-datepicker.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/jquery.timepicker.min.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="/WEB-INF/Resources/Scripts/js/google-map.js"></script>
    <script src="/WEB-INF/Resources/Scripts/js/main.js"></script>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>