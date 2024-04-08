<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Go Tours</title>
        <link rel="stylesheet" href="../Assets/Template/main/css/bootstrap.min.css">
        <link rel="stylesheet" href="../Assets/Template/main/css/style.css">
        <link rel="stylesheet" href="../Assets/Template/main/css/fontawesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto" rel="stylesheet">
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-light text-capitalize">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="../Assets/Template/main/imgs/logo.png" alt="#" /></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#show-menu" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="show-menu">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" onclick="window.location = 'HomePage.jsp'">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                My Account
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="background-color: transparent;">
                                <a class="dropdown-item" onclick="window.location = 'ChangePassword.jsp'" style="background-color: grey">ChangePassword</a>
                                <a class="dropdown-item" onclick="window.location = 'EditProfile.jsp'" style="background-color: grey">EditProfile</a>
                                <a class="dropdown-item"  onclick="window.location = 'MyProfile.jsp'" style="background-color: grey">MyProfile</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Search
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="background-color: transparent;">
                                <a class="dropdown-item" onclick="window.location = 'SearchAdvisor.jsp'" style="background-color: grey">SearchAdvisor</a>
                                <a class="dropdown-item" onclick="window.location = 'SearchDriver.jsp'" style="background-color: grey">SearchDriver</a>
                                <a class="dropdown-item"  onclick="window.location = 'SearchGuide.jsp'" style="background-color: grey">SearchGuide</a>
                                <a class="dropdown-item"  onclick="window.location = 'SearchHotel.jsp'" style="background-color: grey">SearchHotel</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Booking
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="background-color: transparent;">
                                <a class="dropdown-item" onclick="window.location = 'ViewMyAdvisorBooking.jsp'" style="background-color: grey">ViewMyAdvisorBooking</a>
                                <a class="dropdown-item" onclick="window.location = 'ViewMyDriverBooking.jsp'" style="background-color: grey">ViewMyDriverBooking</a>
                                <a class="dropdown-item"  onclick="window.location = 'ViewMyGuideBooking.jsp'" style="background-color: grey">ViewMyGuideBooking</a>
                                <a class="dropdown-item"  onclick="window.location = 'ViewMyHotelBooking.jsp'" style="background-color: grey">ViewMyHotelBooking</a>
                            </div>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" onclick="window.location = '../Guest/Login.jsp'">Logout </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <header id="home">
            <div class="overlay">
                <div class="container">
                    <div>
                        <h1><span>Amazing</span><br>Santorini 10 Days Tour</h1>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as</p>
                        
                    </div>
                </div>
            </div>
        </header>

       

        <script src="../Assets/Template/main/js/jquery-3.3.1.min.js"></script>
        <script src="../Assets/Template/main/js/bootstrap.min.js"></script>
        <script>
                                $(function() {

                                    'use strict';

                                    var winH = $(window).height();

                                    $('header').height(winH);

                                    $('header .container > div').css('top', (winH / 2) - ($('header .container > div').height() / 2));

                                    $('.navbar ul li a.search').on('click', function(e) {
                                        e.preventDefault();
                                    });
                                    $('.navbar a.search').on('click', function() {
                                        $('.navbar form').fadeToggle();
                                    });

                                    $('.navbar ul.navbar-nav li a').on('click', function(e) {

                                        var getAttr = $(this).attr('href');

                                        e.preventDefault();
                                        $('html').animate({scrollTop: $(getAttr).offset().top}, 1000);
                                    });
                                })
        </script>
    </body>
</html>