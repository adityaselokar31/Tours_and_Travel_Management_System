<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
    HttpSession sessionVar = request.getSession(false);
    if (sessionVar != null) {
        sessionVar.invalidate();
    }
    response.sendRedirect("login.jsp");
%>
