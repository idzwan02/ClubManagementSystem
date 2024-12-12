<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
<link rel="stylesheet" href="form.css">
</head>
<body>
<div class="wrapper">
        <div class="logo">
            <img src="https://cdn-b.heylink.me/media/users/og_image/a1adb54527104a50ac887d6a299ee511.webp" alt="uitm">
        </div>
        <div class="text-center mt-4 name">
            <h3 style=text-align:center>RESET PASSWORD</h3>
        </div>
        <form class="p-3 mt-3" action="ForgotServlet" method = "post">
            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <input type="text" name="student_id" id="student_id" placeholder="Student ID" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="fas fa-key"></span>
                <input type="password" name="password" id="pwd" placeholder="Password" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="fas fa-key"></span>
                <input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm Password" required>
            </div>
            <button class="btn mt-3">CHANGE PASSWORD</button>
        </form>
        <div class="text-center fs-6">
            <p style=text-align:center><a href="Login.jsp">Back to Login</a>
        </div>
    </div>
</body>
</html>