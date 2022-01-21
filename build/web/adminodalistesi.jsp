

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
        body {
            background-color: #FFE9C9;
        }

        .card {
            border: none;
            border-radius: 10px
                ;
                box-shadow: 4px 4px 16px #bfbcbc;
        }

        .c-details span {
            font-weight: 300;
            font-size: 13px
        }

        .icon {
            width: 50px;
            height: 50px;
            background-color: #eee;
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 39px
        }

        .badge span {
            background-color: #fffbec;
            width: 60px;
            height: 25px;
            padding-bottom: 3px;
            border-radius: 5px;
            display: flex;
            color: #fed85d;
            justify-content: center;
            align-items: center
        }

        .progress {
            height: 10px;
            border-radius: 10px
        }

        .progress div {
            background-color: red
        }

        .text1 {
            font-size: 14px;
            font-weight: 600
        }

        .text2 {
            color: #a5aec0
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
        <!-- Sidebar Toggle-->
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

                <div class="container-fluid px-4">

                </div>

            </div>


            <div class="container mt-5 mb-3" style="margin:0">
                <div class="row">
                    <%                        
                    String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
                    String DB_URL = "jdbc:mysql://localhost:3306/seyehatacente?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey";
                    String USER = "root";
                    String PASS = "root";
                    Connection dbConnection = null;
                    String SQL_QUERY = "SELECT * FROM odalarimiz";
                    Class.forName(JDBC_DRIVER);
                    dbConnection = DriverManager.getConnection(DB_URL, USER, PASS);
                    Statement statementProduct=null;
                    ResultSet rs = null;
                    statementProduct = dbConnection.createStatement();
                    rs = statementProduct.executeQuery(SQL_QUERY);
                    while(rs.next()) {
                    %>


                    <div class="col-md-4">
                        <div class="card p-3 mb-2">
                            <div class="d-flex justify-content-between">
                                <h6 class="mb-0" style="text-transform: uppercase"><%=rs.getString(2)%></h6> <span></span>
                            </div>
                            <div class="mt-3">
                                 <div style="color: black; font-size: 32px; font-weight: bold;" > <%=rs.getString(7)%>₺ </div>
                                <div class="mt-2">
                                    <a class="btn btn-danger" href="odasil.jsp?odaid=<%=rs.getString(1)%>" >Odayı Sil</a>
                                    <div class="mt-3"> <span class="text1">Manzara : <%=rs.getString(4)%> 
                                            <br>
                                            <span class="text2"> Oda Tipi : <%=rs.getString(3)%></span>
                                            <br>
                                            <%
                                        if(rs.getString(5).equals("1")) {
                            
                                            %>
                                            <span class="text2"> Oda Durum : <span style="color:green; background-color: white; font-size: 15px">UYGUN</span></span>


                                            <%
                            
                            
                            
                            
                                                }
                                                else {
                                            %>
                                            <span class="text2"> Oda Durum :  <span style="color:red; background-color: white; font-size: 15px">DOLU</span></span>


                                            <%
                            
                                        }
                                            %>
                                            <br>
                                            <span class="text2"> Oda Kapasite : <%=rs.getString(8)%> Kişilik</span>


                                        </span> </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <%

                }
                  
                    %>



                </div>
            </div>


        </main>
        
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="js/datatable.js" crossorigin="anonymous"></script>
<script src="js/datatables-simple-demo.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</body>
</html>
