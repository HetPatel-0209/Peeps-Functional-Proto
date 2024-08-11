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
                
                <form class="signup-form" action="SignupServlet" method="post">
                    <input type="text" name="FirstName" placeholder="First Name" required class="name-field">
                    <input type="text" name="LastName" placeholder="Last Name" required class="name-field">
                    <input type="email" name="email" placeholder="Email" required class="email-field"  pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$">
                    <input type="password" name="pass" placeholder="Password" required class="pass-field">
                    <input type="password" name="Con-Pass"placeholder="Confirm Password" required class="confirm-pass-field">
                    <a href="login.jsp"><input type="submit" class="signup-btn" value = "Register"></a>
                </form>
                <% if(request.getAttribute("error") != null) { %>
    				<div class="error-message">
        				<%= request.getAttribute("error") %>
    				</div>
				<% } %>
                <p>Already have an account? <a href="login.jsp">Login</a></p>
            </div>
        </section>
    </main>
</body>
</html>