<%-- 
    Document   : girisyap
    Created on : Jan 6, 2021, 10:56:33 PM
    Author     : mirza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
    <title>Seyahat Acente Giriş Sayfası</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
            <link href="css/font-awesome.min.css" rel="stylesheet">
                <link href="css/bootstrap.min.css" rel="stylesheet">
                    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">  
                        <link href="css/templatemo-style.css" rel="stylesheet">
                            <script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
                            <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
                            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
                                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
                                <link rel="stylesheet" href="css/mainStyle.css"/>
                                <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">  
                                    <link href="css/templatemo-style.css" rel="stylesheet">
                                        <link href="css/styles.css" rel="stylesheet">

                                            <style>
                                                body{
                                                    height: 100vh;
                                                    overflow: hidden;
                                                    background: #FFE9C9;
                                                }
                                                .form-container{
                                                    width: 450px;
                                                    margin: 10% auto 0
                                                        ;
                                                    display: flex;
                                                    flex-direction: column;
                                                    justify-content: center;
                                                    align-items: center;
                                                }
                                                input{
                                                    padding: 25px 7px !important;
                                                }
                                                #floatingPassword{
                                                    font-size: 16px;
                                                }
                                                .btn{
                                                    background: #F97432;
                                                    color : #fff;
                                                }
                                                .btn:hover{
                                                    color: #fff
                                                }
                                                .kayıtol{
                                                    font-size: 18px;

                                                }
                                                .text-center {
                                                    margin-top: 30px
                                                }
                                                form{
                                                    margin-top: 10px;
                                                }
                                               
                                            </style>
                                            <!--</head>-->
                                            <body>
                                                
                <a href="anasayfa.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                         width="64" height="64"
                         viewBox="0 0 172 172"
                         style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#ff7000"><path d="M16.125,86c0,-38.58981 31.28519,-69.875 69.875,-69.875c38.58981,0 69.875,31.28519 69.875,69.875c0,38.58981 -31.28519,69.875 -69.875,69.875c-38.58981,0 -69.875,-31.28519 -69.875,-69.875zM123.625,91.375v-10.75l-51.51938,-2.64181l12.71456,-17.10863l-8.38769,-6.72412l-23.89188,27.64631l-3.6335,4.20325l3.6335,4.20325l23.89188,27.64631l8.38769,-6.72413l-12.71456,-17.10863z"></path></g></g></svg>
                </a>

                                            <div class="form-container">
                                                <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                                                     width="40" height="40"
                                                     viewBox="0 0 172 172"
                                                     style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#000000"><path d="M86,17.2c-19.00027,0 -34.4,15.39973 -34.4,34.4v5.73333c0,19.00027 15.39973,34.4 34.4,34.4c19.00027,0 34.4,-15.39973 34.4,-34.4v-5.73333c0,-19.00027 -15.39973,-34.4 -34.4,-34.4zM85.9888,108.93333c-22.96773,0 -52.43707,12.42324 -60.91667,23.44844c-5.24027,6.81693 -0.25182,16.68489 8.34245,16.68489h105.15964c8.59427,0 13.58271,-9.86796 8.34245,-16.68489c-8.4796,-11.01947 -37.96013,-23.44844 -60.92786,-23.44844z"></path></g></g></svg>
                                                <!-- Sign In Form -->
                                                <form id="loginForm" class="form col-md-12 center-block"  style="font-size:14px;color:gray" method="POST">
                                                    <div class=" mb-3">
                                                        <input style="font-size:20px" id="floatingInput" type="text" name="email" class="form-control input-lg" placeholder="example@gmail.com">
                                                            
                                                    </div>
                                                    <div class=" mb-3">
                                                        <input type="password" name="password" id="floatingPassword" class="form-control input-lg" placeholder="Password">
                                                            
                                                    </div>

                                                    <div class="form-check mb-3">

                                                    </div>

                                                    <div class="d-grid">
                                                        <button class="btn btn-lg   text-uppercase fw-bold mb-2" type="submit">Giriş Yap</button>
                                                        <div class="text-center">
                                                            <a class="small kayıtol" href="/seyehatacente/signup"> Kayıt Olun </a>
                                                        </div>
                                                    </div>

                                                </form>
                                            </div>

                                            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
                                            <script src="js/bootstrap.min.js"></script>
                                            <script>
                                                $("#loginForm").submit(function (e) {
                                                    e.preventDefault();
                                                    var form = this;
                                                    var email = $("#floatingInput").val();
                                                    var sifre = $('#floatingPassword').val();
                                                    if (isEmail(email) && sifre != "" && sifre != null && sifre != 'undefined') {
                                                        form.submit();
                                                    } else {
                                                        alert("Lütfen E-Mail ve Şifre Giriniz");
                                                    }

                                                });
                                                function isEmail(email) {
                                                    console.log(email);
                                                    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                                                    return regex.test(email);
                                                }
                                            </script>

                                            </body>
                                            </html>