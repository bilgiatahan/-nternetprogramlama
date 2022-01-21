<%-- 
    Document   : kayitol.jsp
    Created on : Jan 6, 2022, 10:57:12 PM
    Author     : bilgiatahan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
    <title>Seyahat Acente Kayıt Sayfası</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
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
                    font-size: 16px !important;
                    padding: 25px 7px !important;
                }
                #floatingPassword{
                    font-size: 16px;
                }
                .btn{
                    background: #F97432;
                    color : #fff;
                    border: none
                }
                .btn:hover{
                    color: #fff;
                    background: #F97432;
                }
                .kayıtol{
                    font-size: 18px;

                }
                .text-center {
                    margin-top: 30px
                }
                form{
                    width: 100%;
                    margin-top: 10px;
                }

            </style>
            </head>
            <body>

                <a href="anasayfa.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                         width="64" height="64"
                         viewBox="0 0 172 172"
                         style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#ff7000"><path d="M16.125,86c0,-38.58981 31.28519,-69.875 69.875,-69.875c38.58981,0 69.875,31.28519 69.875,69.875c0,38.58981 -31.28519,69.875 -69.875,69.875c-38.58981,0 -69.875,-31.28519 -69.875,-69.875zM123.625,91.375v-10.75l-51.51938,-2.64181l12.71456,-17.10863l-8.38769,-6.72412l-23.89188,27.64631l-3.6335,4.20325l3.6335,4.20325l23.89188,27.64631l8.38769,-6.72413l-12.71456,-17.10863z"></path></g></g></svg>
                </a>

            <div class="form-container">

                <!-- Sign In Form -->
                <form role="form" action="signup" method="POST" style="color:gray;font-size:14px">
                    <div class=" mb-3">
                        <input type="text" name="name" id="name" class="form-control input-sm floatlabel" placeholder="Ad Soyad">

                    </div>
                    <div class=" mb-3">
                        <input type="text" name="phone" id="phone" class="form-control input-sm" placeholder="orn 530 000 00 00">     

                    </div>
                    <div class=" mb-3">
                        <input type="email" name="email" id="email" class="form-control input-sm" placeholder="example@gmail.com">

                    </div>

                    <div class=" mb-3">
                        <input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">

                    </div>

                    <div class="f mb-3">
                        <input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="Password">

                    </div>

                    <div class="d-grid">
                        <button class="btn btn-lg btn-primary btn-login text-uppercase fw-bold mb-2" type="submit">Kayıt Ol</button>
                        <div class="text-center">
                            <a class="small kayıtol" href="/seyehatacente/login">Zaten Hesabınız Var Mı ? Giriş Yapın !</a>
                        </div>
                    </div>

                </form>
            </div>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>

            </body>
            </html>


































