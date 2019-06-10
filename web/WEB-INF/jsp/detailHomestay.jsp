<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Travelie - ${detailHomestays.name}</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- CSS LIBRARY -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">
        
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link crossorigin="anonymous" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
              integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" rel="stylesheet">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <link rel="stylesheet" href="../Resources/Content/css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="../Resources/Content/css/animate.css">

        <link rel="stylesheet" href="../Resources/Content/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../Resources/Content/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="../Resources/Content/css/magnific-popup.css">

        <link rel="stylesheet" href="../Resources/Content/css/aos.css">

        <link rel="stylesheet" href="../Resources/Content/css/ionicons.min.css">

        <link rel="stylesheet" href="../Resources/Content/css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="../Resources/Content/css/jquery.timepicker.css">


        <link rel="stylesheet" href="../Resources/Content/css/flaticon.css">
        <link rel="stylesheet" href="../Resources/Content/css/icomoon.css">
        <link rel="stylesheet" href="../Resources/Content/css/style.css">

        <link rel="stylesheet" href="../Resources/Content/css/reset.css"> <!-- CSS reset timeline -->

        <!--rating-->
<!--        <script src="http://code.jquery.com/jquery-1.11.3.min.js" charset="utf-8"></script>
        <script>
            $(document).ready(function () {
                $(".rate1").rate();
            });
        </script>-->

    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="../index.html">Travelie</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="../index.html" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="../about.html" class="nav-link">About</a></li>
                        <li class="nav-item active"><a class="nav-link" href="../homestays.html">Homestays</a></li>
                        <li class="nav-item"><a class="nav-link" href="../blog.html">News</a></li>
                        <li class="nav-item"><a href="../contact.html" class="nav-link">Contact</a></li>
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

        <!--Header-->
        <div class="hero-wrap">
            <div class="single-slider owl-carousel">
                <c:forEach var="hsImage" items="${detailHomestaysImage}" varStatus="status" >
                    <div class="item">
                        <div class="hotel-img" style="background-image: url(${hsImage.location});">
                            <div class="carousel-caption text-left">
                                <div class="row p-0 slider-text js-fullheight align-items-end justify-content-left"
                                     data-scrollax-parent="true">
                                    <div class="col-md-9 ftco-animate text-left"
                                         data-scrollax=" properties: { translateY: '70%' }">
                                        <h2 class="mb-3 bread text-white"
                                            data-scrollax="properties: { translateY: '10%', opacity: 0.5 }">
                                            ${hsImage.description}
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>


        <section class="ftco-section ftco-degree-bg pt-0 mt-3">
            <div class="container">
                <div class="col-md-12 hotel-single mt-0 mb-5 ftco-animate">
                    <h1 class="display-4">${detailHomestays.name}</h1>
                    <p class="rate">
                        <span class="loc">
                            <a target="_blank"
                               href="https://www.google.com/maps/search/?api=1&query=${detailHomestays.fullAddress}">
                                <i class="icon-my_location"></i> ${detailHomestays.fullAddress}
                        </span></a>
                    </p>
<!--                    <p class="rate mb-5">
                        <span class="star">
                            {{#each stars}}
                            <i class={{this}}></i>
                            {{/each}}
                            8 Ratings</span>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-o"></i>
                            <span>8 Ratings</span>
                    </p>-->

                    <div class="hotel-single ftco-animate mb-5 mt-4">
                        <h4 class="mb-4">Highlights</h4>
                        <div class="card">
                            <div class="row">
                                <div class="col-md-3">
                                    <img src=${detailHomestays.ownerImage}
                                         class="w-100 rounded-circle p-4" style="max-height: 250px; max-width: 400px">
                                </div>

                                <div class="col-md-4 pt-3">
                                    <div class="product-detail_overview">
                                        <p class="p-1 pl-3 mt-2 mb-2">
                                            <i class="material-icons"
                                               style="font-size:24px; vertical-align: top;">person</i>
                                            ${detailHomestays.ownerName}
                                        </p>
                                        <p class="p-1 pl-3 mb-2">
                                            <i class="material-icons"
                                               style="font-size:24px; vertical-align: text-bottom;">cake</i>
                                            ${detailHomestays.ownerDoB}
                                        </p>
                                        <p class="p-1 pl-3 mb-2">
                                            <i class="fas fa-transgender mr-2"
                                               style="font-size:24px; vertical-align: top;"></i>
                                            ${detailHomestays.ownerGender}
                                        </p>
                                        <p class="p-1 pl-3 mb-2">
                                            <i class="fas fa-briefcase mr-2"
                                               style="font-size:18px; vertical-align: top;"></i>
                                            ${detailHomestays.ownerCareer}
                                        </p>
                                        <p class="p-1 pl-3 mb-2">
                                            <i class="material-icons mr-1"
                                               style="font-size:20px; vertical-align: top;">call</i>
                                            ${detailHomestays.ownerPhone}
                                        </p>
                                    </div>
                                </div>

                                <div class="col-md-5 pt-3">
                                    <div class="product-detail_overview">
                                        <p class="p-1 pl-3 mt-2 mb-2">
                                            <i class="icon-map"
                                               style="font-size:18px; vertical-align: top;"></i>
                                            ${detailHomestays.distance}
                                        </p>
                                        <p class="p-1 pl-3 mt-2 mb-2">
                                            <i class="material-icons"
                                               style="font-size:22px; vertical-align: center;">motorcycle</i>
                                            <i class="material-icons"
                                               style="font-size:22px; vertical-align: center;">directions_car</i>
                                            <i class="material-icons"
                                               style="font-size:20px; vertical-align: center;">airplanemode_active</i>
                                        </p>
                                        <p class="p-1 pl-3 mb-2">
                                            <i class="material-icons"
                                               style="font-size:20px; vertical-align: middle;">access_time</i>
                                            ${detailHomestays.timeStart}:00 - ${detailHomestays.timeEnd}:00
                                        </p>
                                        <p class="p-1 pl-3 mb-2">
                                            <i class="material-icons"
                                               style="font-size:20px; vertical-align: middle;">people</i>
                                            ${detailHomestays.numberPeople} persons
                                        </p>
                                        <p class="p-1 pl-3 mb-2">
                                            <i class="far fa-calendar-alt mr-1"
                                               style="font-size:20px; vertical-align: top;"></i>
                                            ${detailHomestays.numberDays} days
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- TAB -->
                    <div class="product-detail_tab">
                        <div class="row">
                            <div class="col-md-3">
                                <ul class="nav flex-column product-detail_tab-header">
                                    <li class="active"><a data-toggle="tab" href="#overview">OVERVIEW</a></li>
                                    <li><a data-toggle="tab" href="#tour">TOUR</a></li>
                                    <li><a data-toggle="tab" href="#food">FOOD</a></li>
                                    <li><a data-toggle="tab" href="#rules">RULES</a></li>
                                    <!--<li><a data-toggle="tab" href="#calendar">CALENDAR</a></li>-->
                                </ul>
                            </div>
                            <div class="col-md-9">
                                <div class="product-detail_tab-content tab-content">
                                    <!-- OVERVIEW -->
                                    <div class="tab-pane fade active show" id="overview">
                                        <div class="product-detail_amenities">
                                            <ul>
                                                <c:forEach var="hsOverview" items="${detailHomestaysOverview}" varStatus="status" >
                                                    <li>  ${hsOverview.overview}</li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- END / OVERVIEW -->
                                    <!-- TOUR -->
                                    <div class="tab-pane fade" id="tour">
                                        <div class="product-detail_overview">
                                            <div class="single-slider owl-carousel">
                                                <c:forEach var="hsTourImage" items="${detailHomestaysTourImage}" varStatus="status" >                
                                                    <div class="item">
                                                        <div class="hotel-img" style="background-image: url(${hsTourImage.location});">
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                            <section class="cd-horizontal-timeline">
                                                <div class="timeline">

                                                    <div class="events-wrapper">
                                                        <div class="events">
                                                            <ol>
                                                                <c:forEach var="hsTourDescription" items="${detailHomestaysTourDescription}" varStatus="status" >
                                                                    <li><a href="#0" data-date="${status.count}/05/2019" class="cd-h-timeline__date">Day ${status.count}</a></li>
                                                                </c:forEach>
                                                            </ol>

                                                            <span class="filling-line" aria-hidden="true"></span>
                                                        </div> <!-- .events -->
                                                    </div> <!-- .events-wrapper -->

                                                    <ul class="cd-timeline-navigation">
                                                        <li><a href="#0" class="prev inactive">Prev</a></li>
                                                        <li><a href="#0" class="next">Next</a></li>
                                                    </ul> <!-- .cd-timeline-navigation -->
                                                </div> <!-- .timeline -->

                                                <div class="events-content">
                                                    <ol>
                                                        <c:forEach var="hsTourDescription" items="${detailHomestaysTourDescription}" varStatus="status" >
                                                            <li data-date="${status.count}/05/2019">
                                                                <!--<h2>Horizontal Timeline</h2>-->
                                                                <p>
                                                                    ${hsTourDescription.description}
                                                                </p>
                                                            </li>
                                                        </c:forEach>


                                                    </ol>
                                                </div> <!-- .events-content -->
                                            </section>
                                        </div>
                                    </div>
                                    <!-- END / TOUR -->
                                    <!-- FOOD -->
                                    <div class="tab-pane fade" id="food">
                                        <div id="even_odd" class="product-detail_overview">
                                            <c:forEach var="hsFood" items="${detailHomestaysFood}" varStatus="status">
                                                <div class="row justify-content-center no-gutters mb-5">
                                                    <!--<div class="col-lg-6">-->
                                                    <div class="col-sm-6">
                                                        <img class="img-fluid" src="${hsFood.location}" alt="">
                                                    </div>
                                                    <!--<div class="col-lg-6">-->
                                                    <div class="col-sm-6 col-even_odd">
                                                        <div class="text-center h-100">
                                                            <div class="d-flex h-100">
                                                                <div id="text-lg-even_odd"
                                                                     class="w-100 my-auto text-center text-lg-left">
                                                                    <p class="mb-0 text-50 pl-3">${hsFood.description}</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <!-- END / FOOD -->
                                    <!-- RULES -->
                                    <div class="tab-pane fade" id="rules">
                                        <div class="tab-pane fade active show" id="overview">
                                            <div class="product-detail_overview">
                                                <ul>
                                                    <c:forEach var="hsRule" items="${detailHomestaysRule}" varStatus="status">
                                                        <li><i class="fas fa-exclamation"></i>  ${hsRule.rules}</li>
                                                        </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END / RULES -->
                                    <!-- CALENDAR -->
                                    <!--                            <div class="tab-pane fade" id="calendar">
                                                                    <div class="product-detail_calendar-wrap row">
                                                                        <div class="col-sm-6">
                                                                             CALENDAR ITEM 
                                                                            <div class="calendar_custom">
                                                                                <div class="calendar_title">
                                                                                    <span class="calendar_month">JUNE</span>
                                                                                    <span class="calendar_year">2017</span>
                                                                                    <a href="#" class="calendar_prev calendar_corner"><i
                                                                                            class="ion-ios-arrow-thin-left"></i></a>
                                                                                </div>
                                                                                <table class="calendar_tabel">
                                                                                    <thead>
                                                                                    <tr>
                                                                                        <th>Su</th>
                                                                                        <th>Mo</th>
                                                                                        <th>Tu</th>
                                                                                        <th>We</th>
                                                                                        <th>Th</th>
                                                                                        <th>Fr</th>
                                                                                        <th>Sa</th>
                                                                                    </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td class="apb-calendar_current-date">
                                                                                            <a href="#">
                                                                                                <small>1</small>
                                                                                            </a>
                                                                                        </td>
                                                                                        <td><a href="#">
                                                                                            <small>2</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>3</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>4</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>5</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>6</small>
                                                                                        </a></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td><a href="#">
                                                                                            <small>7</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>8</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>9</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>10</small>
                                                                                        </a></td>
                                                                                        <td class="apb-calendar_current-select"><a href="#">
                                                                                            <small>11</small>
                                                                                        </a></td>
                                                                                        <td class="apb-calendar_current-select"><a href="#">
                                                                                            <small>12</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>13</small>
                                                                                        </a></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td><a href="#">
                                                                                            <small>14</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>15</small>
                                                                                        </a></td>
                                                                                        <td class="not-available"><a href="#">
                                                                                            <small>16</small>
                                                                                        </a></td>
                                                                                        <td class="not-available"><a href="#">
                                                                                            <small>17</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>18</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>19</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>20</small>
                                                                                        </a></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td><a href="#">
                                                                                            <small>21</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>22</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>23</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>24</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>25</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>26</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>27</small>
                                                                                        </a></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td><a href="#">
                                                                                            <small>28</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>29</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>30</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>31</small>
                                                                                        </a></td>
                                                                                        <td></td>
                                                                                        <td></td>
                                                                                        <td></td>
                                                                                    </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                             END CALENDAR ITEM 
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                             CALENDAR ITEM 
                                                                            <div class="calendar_custom">
                                                                                <div class="calendar_title">
                                                                                    <span class="calendar_month">JUNE</span>
                                                                                    <span class="calendar_year">2017</span>
                                                                                    <a href="#" class="calendar_next calendar_corner"><i
                                                                                            class="ion-ios-arrow-thin-right"></i></a>
                                                                                </div>
                                                                                <table class="calendar_tabel">
                                                                                    <thead>
                                                                                    <tr>
                                                                                        <th>Su</th>
                                                                                        <th>Mo</th>
                                                                                        <th>Tu</th>
                                                                                        <th>We</th>
                                                                                        <th>Th</th>
                                                                                        <th>Fr</th>
                                                                                        <th>Sa</th>
                                                                                    </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                    <tr>
                                                                                        <td></td>
                                                                                        <td class="apb-calendar_current-date">
                                                                                            <a href="#">
                                                                                                <small>1</small>
                                                                                            </a>
                                                                                        </td>
                                                                                        <td><a href="#">
                                                                                            <small>2</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>3</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>4</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>5</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>6</small>
                                                                                        </a></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td><a href="#">
                                                                                            <small>7</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>8</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>9</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>10</small>
                                                                                        </a></td>
                                                                                        <td class="apb-calendar_current-select"><a href="#">
                                                                                            <small>11</small>
                                                                                        </a></td>
                                                                                        <td class="apb-calendar_current-select"><a href="#">
                                                                                            <small>12</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>13</small>
                                                                                        </a></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td><a href="#">
                                                                                            <small>14</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>15</small>
                                                                                        </a></td>
                                                                                        <td class="not-available"><a href="#">
                                                                                            <small>16</small>
                                                                                        </a></td>
                                                                                        <td class="not-available"><a href="#">
                                                                                            <small>17</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>18</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>19</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>20</small>
                                                                                        </a></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td><a href="#">
                                                                                            <small>21</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>22</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>23</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>24</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>25</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>26</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>27</small>
                                                                                        </a></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td><a href="#">
                                                                                            <small>28</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>29</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>30</small>
                                                                                        </a></td>
                                                                                        <td><a href="#">
                                                                                            <small>31</small>
                                                                                        </a></td>
                                                                                        <td></td>
                                                                                        <td></td>
                                                                                        <td></td>
                                                                                    </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                             END CALENDAR ITEM 
                                                                        </div>
                                                                        <div class="calendar_status text-center col-sm-12">
                                                                            <span>Available</span>
                                                                            <span class="not-available">Not Available</span>
                                                                        </div>
                                                                    </div>
                                                                </div>-->
                                    <!-- END / CALENDAR -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                    <h4 class="mb-4">Take A Tour</h4>
                    <!--<div class="block-16">-->
                    <!--<figure class="text-center">-->
                    <!--<img alt="Image placeholder" class="img-fluid" src="images/hotel-6.jpg">-->
                    <!--<a class="play-button popup-vimeo" href="{{homestay.video}}"><span class="icon-play"></span></a>-->
                    <!--</figure>-->
                    <!--</div>-->
                    <!-- 16:9 aspect ratio -->
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="${detailHomestays.video}" allowfullscreen></iframe>
                    </div>
                </div>

                <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                    <h4 class="mb-4">Review</h4>

                    <!-- comment-list -->
                    <ul class="comment-list">
                        <c:forEach var="hsComment" items="${comments}" varStatus="status" >
                            <li class="comment">
                                <div class="vcard bio">
                                    <img src=${hsComment.userImage} alt="Image placeholder">
                                </div>
                                <div class="comment-body">
                                    <h3>${hsComment.userName}</h3>
                                    <div class="meta">${hsComment.date}</div>
                                    <p>${hsComment.content}</p>
                                    <!--<p><a class="reply" href="#">Reply</a></p>-->
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <!-- END comment-list -->
                
                <c:if test="${sessionScope.userinfo!=null}">
                    <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                        <h4 class="mb-4">Leave A Comment</h4>

                        <spring:form action="#" class="p-5 bg-light" commandName="comment" method="post">
                            <div class="rate1" style="float: none; margin: 0 auto;"></div>
                            <!--<div class="form-group">
                            <label for="name">Name *</label>
                            <input type="text" class="form-control" name="name" required="">
                            </div>

                            <label for="message">Comment *</label>-->
                            <div class="row mt-4 mb-4">
                                <ul class="comment-list">
                                    <li class="comment">
                                        <div class="vcard bio">
                                            <h3>${sessionScope.userinfo.name}</h3>
                                            <img src="${sessionScope.userinfo.image}" alt="Image placeholder">                                            
                                        </div>
                                    </li>
                                </ul>

                                <div class="col">
                                    <spring:textarea name="content" rows="2" class="form-control mr-3" style="min-width: 100%;"
                                        required="" placeholder="What do you think?" path="content"/>
                                </div>

                                <div class="col-auto">
                                    <button type="submit" class="btn py-3 px-1 btn-primary">
                                        <i class="col material-icons" style="font-size: 20px; vertical-align: middle;">send</i>
                                    </button>
                                </div>
                            </div>
                        </spring:form>
                    </div>
                </c:if>

                <div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
                    <h4 class="mb-4">Other Homestays</h4>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="destination-slider owl-carousel ftco-animate">
                                <c:forEach var="hs" items="${homestays}" varStatus="status">
                                    <div class="destination">
                                        <a href="${hs.id}.html"
                                           class="img img-2 d-flex justify-content-center align-items-center"
                                           style="background-image: url(${hs.featureImage});">
                                            <div class="icon d-flex justify-content-center align-items-center">
                                                <span class="icon-search2"></span>
                                            </div>
                                        </a>
                                        <div class="text p-3">
                                            <div class="d-flex">
                                                <div>
                                                    <h3><a href="${hs.id}.html">${hs.name}</a></h3>
<!--                                                    <p class="rate">
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star"></i>
                                                        <i class="icon-star-o"></i>
                                                        <span>8 Ratings</span>
                                                    </p>-->
                                                </div>
                                                <!--<div class="two">-->
                                                <!--<span class="price per-price">$40<br><small>/night</small></span>-->
                                                <!--</div>-->
                                            </div>
                                            <p>
                                                <span>
                                                    <i class="material-icons" style="font-size:18px; vertical-align: middle;">access_time</i>
                                                    ${hs.timeStart}:00 - ${hs.timeEnd}:00
                                                </span>
                                                <br/>
                                                <span>
                                                    <i class="material-icons" style="font-size:18px; vertical-align: middle;">people_outline</i>
                                                    ${hs.numberPeople} persons
                                                </span>
                                                <br/>
                                                <span>
                                                    <i class="far fa-calendar-alt" style="font-size:18px; vertical-align: top;"></i>
                                                    ${hs.numberDays} days
                                                </span>
                                            </p>

                                            <hr>
                                            <p class="bottom-area d-flex">
                                                <span><i class="icon-map-o"></i> ${hs.distance} </span>
                                            </p>
                                        </div>
                                    </div>
                                </c:forEach>                        
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Button trigger modal -->
            <c:if test="${sessionScope.userinfo!=null}">
                <div class="zoom">
                    <span class="zoom-fab zoom-btn-large" id="zoomBtn" data-toggle="modal" data-target="#bookingModal">
                        <i class="fas fa-calendar-check" style="font-size: 20px; vertical-align: middle;"></i>
                    </span>
                </div>                
            </c:if>
            <c:if test="${sessionScope.userinfo==null}">
                <div class="zoom">
                    <a class="zoom-fab zoom-btn-large" id="zoomBtn" href="../index.html">
                        <i class="fas fa-calendar-check" style="font-size: 20px; vertical-align: middle;"></i>
                    </span>
                </div>                
            </c:if>
            <!-- Modal -->
            <div class="modal fade" id="bookingModal" tabindex="-1" role="dialog" aria-labelledby="bookingModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="bookingModalLabel">Booking Form</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="/travellie-springmvc/Booking" method="POST">
                                <input type="hidden" name="id" value=${detailHomestays.id}/>
                                <div class="form-group">
                                    <div class="wthree_input">
                                        <i aria-hidden="true" class="fa fa-user" style="font-size:18px;"></i>
                                        <input class="form-control" id="Name" name="name" value="${sessionScope.userinfo.name}" placeholder="Name" disabled="true"
                                               type="text"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="wthree_input">
                                        <i aria-hidden="true" class="material-icons" style="font-size:22px;">call</i>
                                        <input class="form-control" id="Phone" name="phone" value="${sessionScope.userinfo.phone}" placeholder="Phone" required="true"
                                               type="number"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="wthree_input">
                                        <i aria-hidden="true" class="fas fa-id-card" style="font-size:20px;"></i>
                                        <input class="form-control" id="ID card" name="id_card" value="${sessionScope.userinfo.idCard}" placeholder="ID card" required="true"
                                               type="number"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="wthree_input">
                                        <i aria-hidden="true" class="material-icons" style="font-size:22px;">people</i>
                                        <input class="form-control" id="Guests" name="nb_people" placeholder="Number of guests"
                                               required="true"
                                               type="number"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="wthree_input">
                                        <i aria-hidden="true" class="fas fa-calendar-alt" style="font-size:20px;"></i>
                                        <input class="form-control" id="Checkin" name="checkin" placeholder="Check in" required="true"
                                               type="date"/>
                                    </div>
                                </div>
                                <input type="submit" value="Submit" class="btn btn-primary">
                        </div>
                    </div>
                </div>
            </div>
        </section> <!-- .section -->

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
                                <li><a class="py-2 d-block" href="#">About</a></li>
                                <li><a class="py-2 d-block" href="#">Service</a></li>
                                <li><a class="py-2 d-block" href="#">Terms and Conditions</a></li>
                                <li><a class="py-2 d-block" href="#">Become a partner</a></li>
                                <li><a class="py-2 d-block" href="#">Best Price Guarantee</a></li>
                                <li><a class="py-2 d-block" href="#">Privacy and Policy</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Customer Support</h2>
                            <ul class="list-unstyled">
                                <li><a class="py-2 d-block" href="#">FAQ</a></li>
                                <li><a class="py-2 d-block" href="#">Payment Option</a></li>
                                <li><a class="py-2 d-block" href="#">Booking Tips</a></li>
                                <li><a class="py-2 d-block" href="#">How it works</a></li>
                                <li><a class="py-2 d-block" href="#">Contact Us</a></li>
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
        
        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen">
            <svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                    stroke="#F96D00"/>
            </svg>
        </div>

        <!--SCOLL TOP-->
        <!--<a href="#" title="sroll" class="scrollToTop"><i class="fa fa-angle-up"></i></a>-->
        <!--END / SROLL TOP-->

        <!-- LOAD JQUERY -->
        <script src="../Resources/Scripts/js/jquery.min.js"></script>
        <script src="../Resources/Scripts/js/jquery-migrate-3.0.1.min.js"></script>
        <script src="../Resources/Scripts/js/popper.min.js"></script>
        <script src="../Resources/Scripts/js/bootstrap.min.js"></script>
        <script src="../Resources/Scripts/js/jquery.easing.1.3.js"></script>
        <script src="../Resources/Scripts/js/jquery.waypoints.min.js"></script>
        <script src="../Resources/Scripts/js/jquery.stellar.min.js"></script>
        <script src="../Resources/Scripts/js/owl.carousel.min.js"></script>
        <script src="../Resources/Scripts/js/jquery.magnific-popup.min.js"></script>
        <script src="../Resources/Scripts/js/aos.js"></script>
        <script src="../Resources/Scripts/js/jquery.animateNumber.min.js"></script>
        <script src="../Resources/Scripts/js/bootstrap-datepicker.js"></script>
        <script src="../Resources/Scripts/js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="../Resources/Scripts/js/google-map.js"></script>
        <script src="../Resources/Scripts/js/main.js"></script>
        <script src="../Resources/Scripts/js/zoom-btn.js"></script>
        <script src="../Resources/Scripts/js/timeline.js"></script>
        <!--<script src="../Resources/Scripts/js/rating.js"></script>-->

        <script>
            $('[data-toggle^=tab]').click(function (e) {


                if ($(this).parent().hasClass('active')) {
                    console.log($(this).parent().removeClass('active'));
                    console.log($($(this).attr('href')).removeClass('in active'))

                } else {
                    $('[data-toggle^=tab]').parent().removeClass('active');
                    $('[class^=tab-pane]').removeClass('in active');

                    console.log($(this).parent().addClass('active'));
                    console.log($($(this).attr('href')).addClass('in active'))
                }
            })
        </script>

    </body>
</html>
