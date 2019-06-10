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
                <button aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"
                        data-target="#ftco-nav" data-toggle="collapse" type="button">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="homestays.html">Homestays</a></li>
                        <li class="nav-item active"><a class="nav-link" href="blog.html">News</a></li>
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
        <!-- END nav -->

        <div class="hero-wrap js-fullheight" style="background-image: url('Resources/Content/images/bg_4.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
                     data-scrollax-parent="true">
                    <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
                        <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span
                                class="mr-2"><a
                                    href="index.html">Home</a></span> <span class="mr-2"><a href="blog.html">Blog</a></span> <span>Blog Single</span>
                        </p>
                        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Tips &amp;
                            Articles</h1>
                    </div>
                </div>
            </div>
        </div>


        <section class="ftco-section ftco-degree-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 ftco-animate">
                        <h2 class="mb-3">10 Tips For The Traveler</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit,
                            quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro
                            adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis,
                            enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta
                            architecto tempora.</p>
                        <p>
                            <img alt="" class="img-fluid" src="images/image_7.jpg">
                        </p>
                        <p>Molestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat sunt
                            doloribus nesciunt! Minima laborum magni reiciendis qui voluptate quisquam voluptatem soluta illo
                            eum ullam incidunt rem assumenda eveniet eaque sequi deleniti tenetur dolore amet fugit perspiciatis
                            ipsa, odit. Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p>
                        <h2 class="mb-3 mt-5">#1. Grade us 10</h2>
                        <p>Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in.
                            Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error
                            dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi
                            repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>
                        <p>
                            <img alt="" class="img-fluid" src="images/image_8.jpg">
                        </p>
                        <p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod,
                            est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab
                            consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit,
                            porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>
                        <p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem
                            pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo
                            soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni.
                            Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>
                        <p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique
                            asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates
                            beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum
                            provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur
                            recusandae!</p>
                        <p>Voluptas dolores dignissimos dolorum temporibus, autem aliquam ducimus at officia adipisci quasi nemo
                            a perspiciatis provident magni laboriosam repudiandae iure iusto commodi debitis est blanditiis
                            alias laborum sint dolore. Dolores, iure, reprehenderit. Error provident, pariatur cupiditate soluta
                            doloremque aut ratione. Harum voluptates mollitia illo minus praesentium, rerum ipsa debitis,
                            inventore?</p>
                        <div class="tag-widget post-tag-container mb-5 mt-5">
                            <div class="tagcloud">
                                <a class="tag-cloud-link" href="#">Life</a>
                                <a class="tag-cloud-link" href="#">Sport</a>
                                <a class="tag-cloud-link" href="#">Tech</a>
                                <a class="tag-cloud-link" href="#">Travel</a>
                            </div>
                        </div>

                        <div class="about-author d-flex p-5 bg-light">
                            <div class="bio align-self-md-center mr-5">
                                <img alt="Image placeholder" class="img-fluid mb-4" src="images/person_1.jpg">
                            </div>
                            <div class="desc align-self-md-center">
                                <h3>Lance Smith</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem
                                    necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente
                                    consectetur similique, inventore eos fugit cupiditate numquam!</p>
                            </div>
                        </div>


                        <div class="pt-5 mt-5">
                            <h3 class="mb-5">6 Comments</h3>
                            <ul class="comment-list">
                                <li class="comment">
                                    <div class="vcard bio">
                                        <img alt="Image placeholder" src="images/person_1.jpg">
                                    </div>
                                    <div class="comment-body">
                                        <h3>John Doe</h3>
                                        <div class="meta">June 27, 2018 at 2:21pm</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum
                                            necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente
                                            iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                        <p><a class="reply" href="#">Reply</a></p>
                                    </div>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img alt="Image placeholder" src="images/person_1.jpg">
                                    </div>
                                    <div class="comment-body">
                                        <h3>John Doe</h3>
                                        <div class="meta">June 27, 2018 at 2:21pm</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum
                                            necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente
                                            iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                        <p><a class="reply" href="#">Reply</a></p>
                                    </div>

                                    <ul class="children">
                                        <li class="comment">
                                            <div class="vcard bio">
                                                <img alt="Image placeholder" src="images/person_1.jpg">
                                            </div>
                                            <div class="comment-body">
                                                <h3>John Doe</h3>
                                                <div class="meta">June 27, 2018 at 2:21pm</div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem
                                                    laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe
                                                    enim sapiente iste iure! Quam voluptas earum impedit necessitatibus,
                                                    nihil?</p>
                                                <p><a class="reply" href="#">Reply</a></p>
                                            </div>


                                            <ul class="children">
                                                <li class="comment">
                                                    <div class="vcard bio">
                                                        <img alt="Image placeholder" src="images/person_1.jpg">
                                                    </div>
                                                    <div class="comment-body">
                                                        <h3>John Doe</h3>
                                                        <div class="meta">June 27, 2018 at 2:21pm</div>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur
                                                            quidem laborum necessitatibus, ipsam impedit vitae autem, eum
                                                            officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum
                                                            impedit necessitatibus, nihil?</p>
                                                        <p><a class="reply" href="#">Reply</a></p>
                                                    </div>

                                                    <ul class="children">
                                                        <li class="comment">
                                                            <div class="vcard bio">
                                                                <img alt="Image placeholder" src="images/person_1.jpg">
                                                            </div>
                                                            <div class="comment-body">
                                                                <h3>John Doe</h3>
                                                                <div class="meta">June 27, 2018 at 2:21pm</div>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                                                    Pariatur quidem laborum necessitatibus, ipsam impedit vitae
                                                                    autem, eum officia, fugiat saepe enim sapiente iste iure!
                                                                    Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                                <p><a class="reply" href="#">Reply</a></p>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img alt="Image placeholder" src="images/person_1.jpg">
                                    </div>
                                    <div class="comment-body">
                                        <h3>John Doe</h3>
                                        <div class="meta">June 27, 2018 at 2:21pm</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum
                                            necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente
                                            iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                        <p><a class="reply" href="#">Reply</a></p>
                                    </div>
                                </li>
                            </ul>
                            <!-- END comment-list -->

                            <div class="comment-form-wrap pt-5">
                                <h4 class="mb-4">Leave A Comment</h4>

                                <form action="/detailHomestay/submit-comment?id={{homestay._id}}" class="p-5 bg-light"
                                      method="post">
                                    <div class="rate1" style="float: none; margin: 0 auto;"></div>
                                    <!--<div class="form-group">-->
                                    <!--<label for="name">Name *</label>-->
                                    <!--<input type="text" class="form-control" name="name" required="">-->
                                    <!--</div>-->

                                    <!--<label for="message">Comment *</label>-->
                                    <div class="row mt-4 mb-4">
                                        <ul class="comment-list">
                                            <li class="comment">
                                                <div class="vcard bio">
                                                    <img alt="Image placeholder" src="images/person_1.jpg">
                                                </div>
                                            </li>
                                        </ul>

                                        <div class="col">
                                            <textarea class="form-control mr-3" name="content" placeholder="What do you think?" required=""
                                                      rows="2" style="min-width: 100%;"></textarea>
                                        </div>

                                        <div class="col-auto">
                                            <button class="btn py-3 px-1 btn-primary" type="submit">
                                                <i class="col material-icons" style="font-size: 20px; vertical-align: middle;">send</i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div> <!-- .col-md-8 -->

                    <div class="col-md-4 sidebar ftco-animate">
                        <div class="sidebar-box">
                            <form action="#" class="search-form">
                                <div class="form-group">
                                    <span class="icon fa fa-search"></span>
                                    <input class="form-control" placeholder="Type a keyword and hit enter" type="text">
                                </div>
                            </form>
                        </div>
                        <div class="sidebar-box ftco-animate">
                            <div class="categories">
                                <h3>Categories</h3>
                                <li><a href="#">Tour <span>(12)</span></a></li>
                                <li><a href="#">Hotel <span>(22)</span></a></li>
                                <li><a href="#">Coffee <span>(37)</span></a></li>
                                <li><a href="#">Drinks <span>(42)</span></a></li>
                                <li><a href="#">Foods <span>(14)</span></a></li>
                                <li><a href="#">Travel <span>(140)</span></a></li>
                            </div>
                        </div>

                        <div class="sidebar-box ftco-animate">
                            <h3>Recent Blog</h3>
                            <div class="block-21 mb-4 d-flex">
                                <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                                <div class="text">
                                    <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the
                                            blind texts</a></h3>
                                    <div class="meta">
                                        <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                        <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                        <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="block-21 mb-4 d-flex">
                                <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                                <div class="text">
                                    <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the
                                            blind texts</a></h3>
                                    <div class="meta">
                                        <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                        <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                        <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="block-21 mb-4 d-flex">
                                <a class="blog-img mr-4" style="background-image: url(images/image_3.jpg);"></a>
                                <div class="text">
                                    <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the
                                            blind texts</a></h3>
                                    <div class="meta">
                                        <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
                                        <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                        <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="sidebar-box ftco-animate">
                            <h3>Tag Cloud</h3>
                            <div class="tagcloud">
                                <a class="tag-cloud-link" href="#">dish</a>
                                <a class="tag-cloud-link" href="#">menu</a>
                                <a class="tag-cloud-link" href="#">food</a>
                                <a class="tag-cloud-link" href="#">sweet</a>
                                <a class="tag-cloud-link" href="#">tasty</a>
                                <a class="tag-cloud-link" href="#">delicious</a>
                                <a class="tag-cloud-link" href="#">desserts</a>
                                <a class="tag-cloud-link" href="#">drinks</a>
                            </div>
                        </div>

                        <div class="sidebar-box ftco-animate">
                            <h3>Paragraph</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus
                                voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur
                                similique, inventore eos fugit cupiditate numquam!</p>
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
        <div class="show fullscreen" id="ftco-loader">
            <svg class="circular" height="48px" width="48px">
            <circle class="path-bg" cx="24" cy="24" fill="none" r="22" stroke="#eeeeee" stroke-width="4"/>
            <circle class="path" cx="24" cy="24" fill="none" r="22" stroke="#F96D00" stroke-miterlimit="10"
                    stroke-width="4"/>
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