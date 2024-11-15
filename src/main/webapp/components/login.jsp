<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../styling/login.css">
</head>
<body>
<div class="container">
    <div class="login-form">
        <h2>Welcome Back</h2>

        <%
            String errorMessage = (String) session.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
        <div style="color: red; font-size: 14px;">
            <%= errorMessage %>
        </div>
        <%
                session.removeAttribute("errorMessage");
            }
        %>

        <form id="loginForm" method="POST" action="login">
            <div class="form-username">
                <p>Please login to your account</p>
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Kamu siapa"/>
            </div>
            <div class="form-password">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Passwordnya apa"/>
            </div>
            <button type="submit">Sign In</button>
        </form>
    </div>
</div>
<footer class="footer">
    <h6>&copy;2024 Dashboard App. All rights reserved.</h6>
</footer>

<script>
    $("#loginButton").on("click", function() {
        var username = $("#username").val().trim();
        var password = $("#password").val().trim();

        if (username === "" || password === "") {
            alert("Username dan password harus diisi.");
            return;
        }

        $("#loginForm").submit();
    });
</script>
</body>
</html>
