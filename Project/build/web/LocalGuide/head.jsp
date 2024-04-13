<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Go Tours</title>
        <link rel="stylesheet" href="../Assets/Template/main/css/bootstrap.min.css">
        <link rel="stylesheet" href="../Assets/Template/main/css/style.css">
        <link rel="stylesheet" href="../Assets/Template/form.css">
        <link rel="stylesheet" href="../Assets/Template/main/css/fontawesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto" rel="stylesheet">
    </head>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-light text-capitalize">
            <div class="container">
                <a class="navbar-brand" href="#"><img src="../Assets/Template/main/imgs/logo.png" alt="#" width="130"/></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#show-menu" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                 <div class="collapse navbar-collapse" id="show-menu">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" onclick="window.location='HomePage.jsp'">Home <span class="sr-only">(current)</span></a>
                        </li>
                        
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                My Account
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="background-color: transparent;">
                                <a class="dropdown-item" onclick="window.location = 'MyProfile.jsp'" style="background-color: grey">MyProfile</a>
                                <a class="dropdown-item" onclick="window.location = 'EditProfile.jsp'" style="background-color: grey">EditProfile</a>
                                <a class="dropdown-item"  onclick="window.location = 'ChangePassword.jsp'" style="background-color: grey">ChangePassword</a>
                            </div>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link"  onclick="window.location='ViewMyGBooking.jsp'">MyGBooking</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link"  onclick="window.location='../Guest/Login.jsp'">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <header id="home" style="height: 91px;">
            <div class="overlay" style="height: 91px;">
                <div class="container">
                    
                </div>
            </div>
        </header>
        <div id="tab" align="center">
            <br><br><br><br><br><br>