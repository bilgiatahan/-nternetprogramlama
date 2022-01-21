
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">
    <div class="col-lg-2 col-md-4 col-sm-3 tm-site-name-container">
        <a href="#"  style="font-size: 14px; color:white"></a>	
    </div>
    <div class="mobile-menu-icon">
        <i class="fa fa-bars"></i>
    </div>
    <nav class="tm-nav" style="float:right">
        <ul>
            <li><a href="anasayfa.jsp" >Anasayfa</a></li>

            <%
                String username = (String) session.getAttribute("UserName");
                String name="";
                if (username != null) {
                name = username;
                }
                else {
            %>

            <li><a href="/seyehatacente/login">Giriş Yap</a></li>

            <%
                }
                if(name!="") {
            %>



            <%
        
                String type = (String) session.getAttribute("sessionType");
                if(type.equals("admin")) {
            %>
            <li><a href="rezervasyonyap.jsp">Panel</a></li>

            <%
                }
                else {
            %>


            <li><a href="rezervasyonyap.jsp">Rezervasyon Yap</a></li>
                <%
                    }
    
                %>

            <li><a href="" >Hoş Geldin , <%=name%></a></li>
            <li>
                <a href="logout.jsp" class="logout">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                         width="30" height="30"
                         viewBox="0 0 172 172"
                         style=" fill:#000000;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,172v-172h172v172z" fill="none"></path><g fill="#ffffff"><path d="M172,86.03124l-37.05424,-36.78338v18.56938h-65.56618v36.3655h65.56618v18.56938z"></path><path d="M114.28996,162.44444h-109.88705c-2.43152,0 -4.40291,-1.97469 -4.40291,-4.41026v-144.06838c0,-2.43556 1.97138,-4.41026 4.40291,-4.41026h109.88705c2.43152,0 4.40291,1.97469 4.40291,4.41026v31.66858c0,2.43556 -1.97138,4.41026 -4.40291,4.41026c-2.43189,0 -4.40291,-1.97469 -4.40291,-4.41026v-27.25832h-101.08124v135.24786h101.08124v-12.55747c0,-2.43556 1.97102,-4.41026 4.40291,-4.41026c2.43152,0 4.40291,1.97469 4.40291,4.41026v16.96773c0,2.43556 -1.97138,4.41026 -4.40291,4.41026z"></path><ellipse cx="311.006" cy="331.16" transform="scale(0.36752,0.36752)" rx="13.977" ry="14"></ellipse></g></g></svg>
                </a>
            </li>

            <%
}
else {
            %>


            <%
    
}
            %>

        </ul>
    </nav>		
</div>
