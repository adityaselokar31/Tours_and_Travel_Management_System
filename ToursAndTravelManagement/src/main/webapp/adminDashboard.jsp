<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
    HttpSession sessionVar = request.getSession(false);
    if (sessionVar == null || !"admin".equals(sessionVar.getAttribute("role"))) {
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
</head>
<body>
    <h2>Welcome Admin, <%= sessionVar.getAttribute("fullname") %>!</h2>
    <a href="logout.jsp">Logout</a>
</body>
</html>