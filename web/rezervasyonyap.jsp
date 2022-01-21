
<%@page import="java.lang.Thread.State"%>
<%@page import="jdk.jshell.spi.ExecutionControl.ExecutionControlException"%>
<%-- import java packets --%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
        body{
            background-color: #FFE9C9;
        }
        .mytext{
            font-size: 18px;
            text-decoration: none;
            color:black !important;
            cursor: pointer;
            user-select:none;
        }
    </style>
</head>
<body class="sb-nav-fixed">
<input type="hidden" value="<%=session.getAttribute("UserId")%>" id="session" >
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
            <main>
                <div class="container-fluid px-4 mt-3">
                    
                    <div class="row">
                        <div class="col-xl-3 col-md-6">
                            <div class="card  text-black mb-4">
                                <div class="card-body">Yapılan Rezervasyon Sayısı</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">

                            <%
                                        
                                String JDBC_DRIVER3 = "com.mysql.cj.jdbc.Driver";
                                String DB_URL3 = "jdbc:mysql://localhost:3306/seyehatacente?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey";
                                try {
                                Connection conn3=null;
                                          Class.forName(JDBC_DRIVER3);
                                          conn3= DriverManager.getConnection(DB_URL3,"root","root");
                                                        String SQL_QUERY3 = "SELECT COUNT(*) as rowcount FROM rezervasyon ";
                                     Statement statementProduct4=null;
                                     ResultSet rs4 = null;
                                     statementProduct4 = conn3.createStatement();
                                     rs4 = statementProduct4.executeQuery(SQL_QUERY3);
                                      while(rs4.next()) {
                                int count4 = rs4.getInt("rowcount");
                                                      %>
                                                      <a class="small text-white stretched-link mytext" href="#"><%=count4%></a>
                                                      <%
                                      }
                                   }catch(Exception  e) {
                                       System.out.print(e);
                                e.printStackTrace();
                                   }
                            %>


                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card  text-black mb-4">
                                <div class="card-body">Toplam Oda Sayısı</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <%
                                            
                                          String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
   String DB_URL = "jdbc:mysql://localhost:3306/seyehatacente?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey";
          try {
              Connection conn=null;
                        Class.forName(JDBC_DRIVER);
                        conn = DriverManager.getConnection(DB_URL,"root","root");
                                      String SQL_QUERY = "SELECT COUNT(*) as rowcount FROM odalarimiz ";
                   Statement statementProduct1=null;
                   ResultSet rs2 = null;
                   statementProduct1 = conn.createStatement();
                   rs2 = statementProduct1.executeQuery(SQL_QUERY);
                    while(rs2.next()) {
              int count = rs2.getInt("rowcount");
                                    %>
                                    <a class="small text-white stretched-link mytext" href="#"><%=count%></a>
                                    <%
                    }
                 }catch(Exception  e) {
                     System.out.print(e);
   e.printStackTrace();
                 }
                                            
                                            
                                   
                                        
                                    %>

                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6">
                            <div class="card  text-black mb-4">
                                <div class="card-body">Müşteri Sayısı</div>
                                <div class="card-footer d-flex align-items-center justify-content-between">


                                    <%
                                            
                                     String JDBC_DRIVER2 = "com.mysql.cj.jdbc.Driver";
String DB_URL2 = "jdbc:mysql://localhost:3306/seyehatacente?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey";
     try {
         Connection conn2=null;
                   Class.forName(JDBC_DRIVER2);
                   conn2 = DriverManager.getConnection(DB_URL2,"root","root");
                                 String SQL_QUERY2 = "SELECT COUNT(*) as rowcount FROM user ";
              Statement statementProduct2=null;
              ResultSet rs3 = null;
              statementProduct2 = conn2.createStatement();
              rs3 = statementProduct2.executeQuery(SQL_QUERY2);
               while(rs3.next()) {
         int count2 = rs3.getInt("rowcount");
                                    %>
                                    <a class="small text-white stretched-link mytext" href="#"><%=count2%></a>
                                    <%
                    }
                 }catch(Exception  e) {
                     System.out.print(e);
   e.printStackTrace();
                 }
                                            
                                            
                                   
                                        
                                    %>


                                </div>
                            </div>
                        </div>

                    </div>


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
