<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Peep</title>
    <link rel="stylesheet" href="peep-style.css">
</head>
<body>
    <main class="container">
        <aside class="brand"></aside>
        
        <section class="signup-section">
            <div class="signup-wrapper">
                <h1>Register</h1>
                
                <form class="signup-form">
                    <input type="text" placeholder="Full Name" required class="name-field">
                    <input type="email" placeholder="Email" required class="email-field">
                    <input type="password" placeholder="Password" required class="pass-field">
                    <input type="password" placeholder="Confirm Password" required class="confirm-pass-field">
                    <button type="submit" class="signup-btn">Register</button>
                </form>
                
                <p>Already have an account? <a href="Login-page.html">Login</a></p>
            </div>
        </section>
    </main>
</body>
</html>