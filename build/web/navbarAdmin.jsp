
<%@page import="java.lang.Thread.State"%>
<%@page import="jdk.jshell.spi.ExecutionControl.ExecutionControlException"%>
<%-- import java packets --%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<div class="nav">



    <%
        String sessionType = (String) session.getAttribute("sessionType");
        if(sessionType.equals("admin")) {
    %>
    <a class="nav-link" href="/seyehatacente/rezervasyonyap.jsp">
        Anasayfa
    </a>
    <a class="nav-link" href="/seyehatacente/odaekleme.jsp">
        Oda Ekleme
    </a>
    <a class="nav-link" href="/seyehatacente/adminodalistesi.jsp">
        Oda Listesi
    </a>
    <a class="nav-link" href="/seyehatacente/musterilistesi.jsp">
        Müşteri Listesi
    </a>
    <a class="nav-link" href="/seyehatacente/musteriekleme.jsp">
        Müşteri Ekleme
    </a>
    <a class="nav-link"  href="/seyehatacente/rezervasyonlistesi">
        Rezervasyon Listesi
    </a>
    <a class="nav-link"  href="/seyehatacente/manzaraekleme.jsp">
        Manzara Ekleme
    </a>
    <a class="nav-link" href="/seyehatacente/bilgilerimiguncelle.jsp" >

        Bilgilerimi Güncelle
    </a>
    <%   
        }
            else 
        {
    %>

    <a class="nav-link"  href="/seyehatacente/rezervasyonlarim.jsp" >
        Rezervasyonlar
    </a>
    <a class="nav-link"  href="/seyehatacente/odalistesi.jsp" >
        Rezervasyon Yap
    </a>
    <a class="nav-link" href="/seyehatacente/bilgilerimiguncelle.jsp" >
        Bilgilerimi Güncelle
    </a>


    <a class="nav-link" style="user-select:none;" >
        Rezervasyon Sayısı <%
        Cookie[] cookies = request.getCookies();

if (cookies != null) {
for (Cookie cookie : cookies) {
if (cookie.getName().equals("RezervasyonSayisi")) {
        %>
        <span style="margin-left: 20px"><%=cookie.getValue()%></span>

        <%
}
}
}                          
        %>
    </a>
    <%
}
     
     
     
     
    %>




    <a class="nav-link"  href="/seyehatacente/anasayfa.jsp">
        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
             width="30" height="30"
             viewBox="0 0 172 172"
             style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#ffffff"><path d="M86,3.61469c-0.7482,0 -1.49345,0.23731 -2.12985,0.71891l-79.12,61.75203c-1.4792,1.1696 -1.75413,3.33062 -0.58453,4.84422c1.1696,1.4792 3.33062,1.75413 4.84422,0.58453l4.75016,-3.70875v90.43437c0,1.892 1.548,3.44 3.44,3.44h48.16v-61.92h41.28v61.92h48.16c1.892,0 3.44,-1.548 3.44,-3.44v-90.43437l4.75015,3.70875c0.6536,0.4816 1.37305,0.72563 2.12985,0.72563c1.032,0 2.02638,-0.45015 2.71437,-1.31015c1.1696,-1.5136 0.89467,-3.67462 -0.58453,-4.84422l-79.12,-61.75203c-0.6364,-0.4816 -1.38165,-0.71891 -2.12985,-0.71891zM120.4,17.2v3.61469l20.64,16.09813v-19.71281z"></path></g></g></svg>
    </a>


    <%
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
        for (Cookie cookie : cookies) {
        if (cookie.getName().equals("USER_EPOSTA")) {
    %>

    <a class="nav-link mail"  style="opacity: .5; user-select:none;">
        <%=cookie.getValue()%>
    </a>
    <%
}
}
}
                           
    %>

</div>