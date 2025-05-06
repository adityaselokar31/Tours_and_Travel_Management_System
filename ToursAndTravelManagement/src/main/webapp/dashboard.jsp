<%@ page contentType="text/html; charset=UTF-8" language="java" %>


<%
    HttpSession sessionVar = request.getSession(false);
    if (sessionVar == null || sessionVar.getAttribute("fullname") == null) {
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Welcome, <%= sessionVar.getAttribute("fullname") %>!</h2>
        <a href="logout.jsp" class="btn btn-danger">Logout</a>
    </div>
</body>
</html>
