
<%@page import="java.lang.Thread.State"%>
<%@page import="jdk.jshell.spi.ExecutionControl.ExecutionControlException"%>
<%-- import java packets --%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
    <title>Seyahat Acente Müşteri Paneli</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>

    <style>
        
         .form-group {
            margin-bottom: 20px;
        }
        body{
            background-color: #FFE9C9;
        }
        .form-group label{

            padding: 5px 0;
            font-size: 18px
                ;
            font-weight: bold;
        }
        .bb{
            color:#fff;
            font-weight: bold;
            background: #F97432;
        }
        .bb:hover{
            color: #fff;
        }
        input,select,textarea{
            width: 70% !important;
        }
        .text-area{
            padding: .5rem .25rem;
        }
    </style>
</head>
<body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" style="display:flex; align-items: center" href="index.html">

            <%
            String username = (String) session.getAttribute("UserName");
             String name="";
            if (username != null) {
                name = username;
            %>
            <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                 width="30" height="30"
                 viewBox="0 0 172 172"
                 style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#ffffff"><path d="M103.2,108.93333v-11.46667c2.58,-1.27853 9.9588,-10.062 10.7328,-16.9248c2.0296,-0.1548 5.21733,-2.01813 6.1576,-9.374c0.50453,-3.95027 -1.50213,-6.16907 -2.7176,-6.86853c0,0 3.0272,-5.75053 3.0272,-12.6936c0,-13.92053 -5.46387,-25.8 -17.2,-25.8c0,0 -4.0764,-8.6 -17.2,-8.6c-24.3208,0 -34.4,15.6004 -34.4,34.4c0,6.3296 3.0272,12.6936 3.0272,12.6936c-1.21547,0.69947 -3.22213,2.924 -2.7176,6.86853c0.94027,7.35587 4.128,9.2192 6.1576,9.374c0.774,6.8628 8.1528,15.64627 10.7328,16.9248v11.46667c-5.73333,17.2 -51.6,5.73333 -51.6,45.86667h137.6c0,-40.13333 -45.86667,-28.66667 -51.6,-45.86667z"></path></g></g></svg>
            <span style="margin-left:10px;"><%=name%></span>
            <%
                }
            %>

        </a>
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
            </div>
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="logout.jsp">Çıkış Yap</a></li>
                </ul>
            </li>
        </ul>
    </nav>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <%@ include file = "navbarAdmin.jsp" %>

            </div>
           
        </nav>
    </div>
    <div id="layoutSidenav_content">
        <main style="margin:10px; padding: 7px">
            
            <div class="container-fluid" >
                <%
                  String msg = (String) session.getAttribute("msg");
                if(msg!=null) {
                %>

                <div class="alert alert-success" > ${msg}</div>

                <%
                    session.setAttribute("msg",null);
                }
                %>

                <form action="odaekleme" method="POST">
                    <input type="hidden" value="odaekleme" name="oda"/>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label >Oda Adı</label>
                            <input type="text" autocomplete="off" class="form-control" id="odaadi" name="OdaAdi" placeholder="Oda Adı Giriniz" required>
                        </div>
                        <div class="form-group col-md-4">
                            <label >Oda Tipi</label>
                            <select id="OdaTipi" name="OdaTipi" class="form-control" required>
                                <option>Delux</option>
                                <option>Double Room</option>
                                <option>Single Room</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label >Oda Manzara</label>
                            <select id="OdaManzara" name="OdaManzara" class="form-control" required>

                                <%
                                  
                          String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
                          String DB_URL = "jdbc:mysql://localhost:3306/seyehatacente?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey";
                          String USER = "root";
                          String PASS = "root";
                          Connection dbConnection = null;
                          String SQL_QUERY = "SELECT * FROM manzara";
                          Class.forName(JDBC_DRIVER);
                          dbConnection = DriverManager.getConnection(DB_URL, USER, PASS);
                          Statement statementProduct=null;
                          ResultSet rs = null;
                          statementProduct = dbConnection.createStatement();
                          rs = statementProduct.executeQuery(SQL_QUERY);
                           while(rs.next()) {
                                %>
                                <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>

                                <%

                            }
                  
                                %>

                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label >Oda Durum</label>
                            <select id="OdaDurum" name="OdaDurum" class="form-control" required>
                                <option selected value="1">Aktif</option>
                                <option value="0" >Pasif</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="OdaDetay">OdaDetay</label>
                            <br>
                            <textarea cols="55"   class="form-control" rows="10" name="OdaDetay" placeholder="Oda Detayı Giriniz" required>

                            </textarea>
                        </div>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="OdaFiyat">Oda Fiyat</label>
                        <input autocomplete="off" type="number" class="form-control" id="OdaFiyat" name="OdaFiyat" placeholder="Oda Fiyatı Giriniz" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="OdaKapasite">Oda Kapasite</label>
                        <input autocomplete="off" type="number" required class="form-control" id="OdaKapasite" name="OdaKapasite" placeholder="Oda Kapasitesi Giriniz">
                    </div>
                    <br>

                    <button type="submit" class="btn bb">Oda Kaydet</button>
                </form>

            </div>
        </main>
        
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="js/datatables-simple-demo.js"></script>
</body>
</html>
