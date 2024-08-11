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
                
                <form class="login-form">
                    <input type="email" placeholder="Email" required class="email-field">
                    <input type="password" placeholder="Password" required class="pass-field">
                    <button type="submit" class="login-btn">Login</button>
                </form>
                
                <p>Don't have an account? <a href="Sign-up-page.html">Register here</a></p>
            </div>
        </section>
    </main>
</body>
</html>