<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Homestay Assistant</title>
    <!-- custom-theme -->
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
    name="keywords"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //custom-theme -->
    <!-- js -->
    <script src="js/booking_form/jquery.min.js"></script>
    <!-- //js -->
    <!-- font-awesome-icons -->
    <link href="css/booking_form/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="css/booking_form/style.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link crossorigin="anonymous" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" rel="stylesheet">
</head>
<body>
<div class="main">
    <h1>Homestay Assistant</h1>
    <div class="w3_agile_main_grids">

        <div id='progress'>
            <div id='progress-complete'></div>
        </div>

        <form action="/travellie-springmvc/homestays.html" class="agile_form" id="SignupForm" method="post">
            <fieldset>
                <h3>Destination</h3>
                <h4 class="w3layouts_type">Where do you want to spend your time?</h4>
                <select name="province" id="" class="form-control">
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
                <div class="clear"></div>
            </fieldset>

            <fieldset>
                <h3>Room Type</h3>
                <h4 class="w3layouts_type">What kind of room would you want ?</h4>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fa fa-user"></span>
                        <label class="radio">
                            <input checked="" name="roomtype_radio" value="Single" type="radio">
                            <i></i>Single
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-home"></span>
                        <label class="radio">
                            <input name="roomtype_radio" value="Family" type="radio">
                            <i></i>Family
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-building"></span>
                        <label class="radio">
                            <input name="roomtype_radio" value="Business" type="radio">
                            <i></i>Business
                        </label>
                    </div>
                </div>
                <div class="clear"></div>
            </fieldset>

            <fieldset>
                <h3>Location Type</h3>
                <h4 class="w3layouts_type">What kind of areas would you have interest in ?</h4>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-mountain"></span>
                        <label class="radio">
                            <input checked="" name="locationtype_radio" value="Mountainous" type="radio">
                            <i></i>Mountainous
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-umbrella-beach"></span>
                        <label class="radio">
                            <input name="locationtype_radio" value="Seaside" type="radio">
                            <i></i>Seaside
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-kiwi-bird"></span>
                        <label class="radio">
                            <input name="locationtype_radio" value="Island" type="radio">
                            <i></i>Island
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-city"></span>
                        <label class="radio">
                            <input name="locationtype_radio" value="Urban" type="radio">
                            <i></i>Urban
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-tree"></span>
                        <label class="radio">
                            <input name="locationtype_radio" value="Rural" type="radio">
                            <i></i>Rural
                        </label>
                    </div>
                </div>
                <div class="clear"></div>
            </fieldset>

            <fieldset>
                <h3>Vacation Type</h3>
                <h4 class="w3layouts_type">What kind of vacation do you prefer ?</h4>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="material-icons">people</span>
                        <label class="radio">
                            <input checked="" name="vacationtype_radio" value="Residential Area" type="radio">
                            <i></i>Residential Area
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-mountain"></span>
                        <label class="radio">
                            <input name="vacationtype_radio" value="Expedition" type="radio">
                            <i></i>Expedition
                        </label>
                    </div>
                </div>
                <div class="clear"></div>
            </fieldset>

            <fieldset>
                <h3>The number of travellers</h3>
                <h4 class="w3layouts_type">How many people are proposed to be on this journey ?</h4>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fa fa-user"></span>
                        <label class="radio">
                            <input checked="" name="nbtravellers_radio" value="1" type="radio">
                            <i></i>By myself
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fa fa-home"></span>
                        <label class="radio">
                            <input name="nbtravellers_radio" value="2to4" type="radio">
                            <i></i>2 - 4 persons
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fa fa-group"></span>
                        <label class="radio">
                            <input name="nbtravellers_radio" value="4to8" type="radio">
                            <i></i>4 - 8 persons
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-building"></span>
                        <label class="radio">
                            <input name="nbtravellers_radio" value=">8" type="radio">
                            <i></i>> 8 persons
                        </label>
                    </div>
                </div>
                <div class="clear"></div>
            </fieldset>

            <fieldset>
                <h3>Duration</h3>
                <h4 class="w3layouts_type">How long would it take ?</h4>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-sun"></span>
                        <label class="radio">
                            <input checked="" name="duration_radio" value="1" type="radio">
                            <i></i>A day out
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-cloud-sun"></span>
                        <label class="radio">
                            <input name="duration_radio" value="2to4" type="radio">
                            <i></i>2 - 4 days
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-cloud-sun-rain"></span>
                        <label class="radio">
                            <input name="duration_radio" value="7" type="radio">
                            <i></i>A week
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="far fa-calendar-alt"></span>
                        <label class="radio">
                            <input name="duration_radio" value=">7" type="radio">
                            <i></i>> 1 week
                        </label>
                    </div>
                </div>
                <div class="clear"></div>
            </fieldset>

            <fieldset>
                <h3>Cuisine</h3>
                <h4 class="w3layouts_type">What kind of cuisine would you be fanatical about ?</h4>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-arrow-up"></span>
                        <label class="radio">
                            <input checked="" name="cuisine_radio" value="Northern" type="radio">
                            <i></i>Northern
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-dot-circle"></span>
                        <label class="radio">
                            <input name="cuisine_radio" value="Central" type="radio">
                            <i></i>Central
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-arrow-down"></span>
                        <label class="radio">
                            <input name="cuisine_radio" value="southern" type="radio">
                            <i></i>Southern
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="material-icons">location_on</span>
                        <label class="radio">
                            <input name="cuisine_radio" value="Local" type="radio">
                            <i></i>Local dishes
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="material-icons">more_horiz</span>
                        <label class="radio">
                            <input name="cuisine_radio" value="I am not so picky" type="radio">
                            <i></i>I am not so picky
                        </label>
                    </div>
                </div>
                <div class="clear"></div>
            </fieldset>

            <fieldset>
                <h3>Lifestyle</h3>
                <h4 class="w3layouts_type">What kind of lifestyle do you live ?</h4>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-gamepad"></span>
                        <label class="radio">
                            <input checked="" name="lifestyle_radio" value="I am a typically Leisure person"
                                   type="radio">
                            <i></i>I am a typically Leisure person
                        </label>
                    </div>
                </div>
                <div class="form-group agileits_circles">
                    <div class="wthree_radio">
                        <span aria-hidden="true" class="fas fa-calendar-check"></span>
                        <label class="radio">
                            <input name="lifestyle_radio" value="I am a Systems Savvy" type="radio">
                            <i></i>I am a Systems Savvy
                        </label>
                    </div>
                </div>
                <div class="clear"></div>
            </fieldset>

            <!--<fieldset>-->
                <!--<h3>Host</h3>-->
                <!--<h4 class="w3layouts_type">How is a homestay's host suitable for you ?</h4>-->
                <!--<div class="form-group agileits_circles">-->
                    <!--<div class="wthree_radio">-->
                        <!--<span aria-hidden="true" class="fas fa-child"></span>-->
                        <!--<label class="radio">-->
                            <!--<input checked="" name="host_radio" value="youthful" type="radio">-->
                            <!--<i></i>A youthful and energetic-->
                        <!--</label>-->
                    <!--</div>-->
                <!--</div>-->
                <!--<div class="form-group agileits_circles">-->
                    <!--<div class="wthree_radio">-->
                        <!--<span aria-hidden="true" class="fas fa-book-open"></span>-->
                        <!--<label class="radio">-->
                            <!--<input name="host_radio" value="experience" type="radio">-->
                            <!--<i></i>An experienced elderly-->
                        <!--</label>-->
                    <!--</div>-->
                <!--</div>-->
                <!--<div class="form-group agileits_circles">-->
                    <!--<div class="wthree_radio">-->
                        <!--<span aria-hidden="true" class="fa fa-user"></span>-->
                        <!--<label class="radio">-->
                            <!--<input name="host_radio" value="single" type="radio">-->
                            <!--<i></i>Single-->
                        <!--</label>-->
                    <!--</div>-->
                <!--</div>-->
                <!--<div class="form-group agileits_circles">-->
                    <!--<div class="wthree_radio">-->
                        <!--<span aria-hidden="true" class="fa fa-home"></span>-->
                        <!--<label class="radio">-->
                            <!--<input name="host_radio" value="married" type="radio">-->
                            <!--<i></i>Married-->
                        <!--</label>-->
                    <!--</div>-->
                <!--</div>-->
                <!--<div class="clear"></div>-->
            <!--</fieldset>-->

            <!--<fieldset>-->
                <!--<h3 class="w3_room">Room Details</h3>-->
                <!--<div class="form-group w3ls_description">-->
                    <!--<i aria-hidden="true" class="fa fa-align-right"></i>-->
                    <!--<textarea name="Message" placeholder="Your message here..." required=""></textarea>-->
                <!--</div>-->
            <!--</fieldset>-->

            <p>
                <button class="btn btn-primary agileinfo_primary submit" type="submit" id="SaveAccount">Submit form</button>
            </p>
        </form>

        <div class="agileits_copyright">
            <p> Copyright &copy;
                <script>document.write(new Date().getFullYear());</script>
                Absoluke Team
            </p>
        </div>
    </div>
</div>

<script src="js/booking_form/jquery.validate.min.js"></script>
<script src="js/booking_form/jquery.formtowizard.js"></script>

<script>
    $(function () {
        var $signupForm = $('#SignupForm');

        $signupForm.validate({errorElement: 'em'});

        $signupForm.formToWizard({
            submitButton: 'SaveAccount',
            nextBtnClass: 'btn btn-primary next',
            prevBtnClass: 'btn btn-primary prev',
            buttonTag: 'button',
            validateBeforeNext: function (form, step) {
                var stepIsValid = true;
                var validator = form.validate();
                $(':input', step).each(function (index) {
                    var xy = validator.element(this);
                    stepIsValid = stepIsValid && (typeof xy == 'undefined' || xy);
                });
                return stepIsValid;
            },
            progress: function (i, count) {
                $('#progress-complete').width('' + (i / count * 100) + '%');
            }
        });
    });
</script>
</body>
</html>