<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Peep</title>
    <link rel="stylesheet" href="peep-style.css">
</head>
<body>
    <main class="container">
        <aside class="brand"></aside>
        
        <section class="login-section">
            <div class="login-wrapper">
                <h1>Login</h1>
                
                <form class="login-form" action="LoginController" method="post">
                    <input type="email" name = "email" placeholder="Email" required class="email-field">
                    <input type="password" name = "password" placeholder="Password" required class="pass-field">
                    <input type="submit" class="login-btn" value = "Login">Login
                </form>
                
                <p>Don't have an account? <a href="signup.jsp">Register here</a></p>
            </div>
        </section>
    </main>
</body>
</html>