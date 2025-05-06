<%@ page import="java.io.*,java.util.*,javax.servlet.http.*,com.demo.bean.UserBean" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background: url('images/bgl.jpg') no-repeat center center/cover;
            position: relative;
        }
        body::before {
            content: "";
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            z-index: -1;
        }
        .login-container {
            max-width: 400px;
            margin: 100px auto;
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="login-container">
            <h3 class="text-center">Login</h3>
            <%
                String message = "";
                HttpSession sessionVar = request.getSession();

                if ("POST".equalsIgnoreCase(request.getMethod())) {
                    UserBean user = new UserBean();
                    user.setEmail(request.getParameter("email"));
                    user.setPassword(request.getParameter("password"));

                    if (user.loginUser()) {
                        sessionVar.setAttribute("fullname", user.getFullname());
                        sessionVar.setAttribute("role", user.getRole());

                        if (user.getRole().equals("admin")) {
                            response.sendRedirect("adminDashboard.jsp");
                        } else if (user.getRole().equals("agent")) {
                            response.sendRedirect("agentDashboard.jsp");
                        } else {
                            response.sendRedirect("customerDashboard.jsp");
                        }
                    } else {
                        message = "<div class='alert alert-danger'>Invalid email or password.</div>";
                    }
                }
            %>
            <%= message %>
            <form action="login.jsp" method="post">
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">Login</button>
            </form>
            <p class="text-center mt-3">Don't have an account? <a href="register.jsp">Register</a></p>
        </div>
    </div>
</body>
</html>