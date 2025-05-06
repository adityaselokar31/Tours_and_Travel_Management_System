<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
    HttpSession sessionVar = request.getSession(false);
    if (sessionVar == null || !"agent".equals(sessionVar.getAttribute("role"))) {
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Agent Dashboard</title>
</head>
<body>
    <h2>Welcome Agent, <%= sessionVar.getAttribute("fullname") %>!</h2>
    <a href="logout.jsp">Logout</a>
</body>
</html>