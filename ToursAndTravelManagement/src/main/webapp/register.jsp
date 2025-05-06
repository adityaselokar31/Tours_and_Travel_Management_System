<%@ page import="java.io.*,java.util.*,javax.servlet.http.*,com.demo.bean.UserBean" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background: url('images/bgr.jpg') no-repeat center center/cover;
            position: relative;
        }
        body::before {
            content: "";
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(5px);
            z-index: -1;
        }
        .register-container {
            max-width: 500px;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="register-container">
            <h3 class="text-center">Register</h3>
            <%
                String message = "";
                if ("POST".equalsIgnoreCase(request.getMethod())) {
                    UserBean user = new UserBean();
                    user.setFullname(request.getParameter("name"));
                    user.setEmail(request.getParameter("email"));
                    user.setPassword(request.getParameter("password"));

                    if (user.registerUser()) {
                        message = "<div class='alert alert-success'>Registration Successful! <a href='login.jsp'>Login</a></div>";
                    } else {
                        message = "<div class='alert alert-danger'>Registration Failed! Email may already exist.</div>";
                    }
                }
            %>
            <%= message %>
            <form action="register.jsp" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Full Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <button type="submit" class="btn btn-success w-100">Register</button>
            </form>
            <p class="text-center mt-3">Already have an account? <a href="login.jsp">Login</a></p>
        </div>
    </div>
</body>
</html>