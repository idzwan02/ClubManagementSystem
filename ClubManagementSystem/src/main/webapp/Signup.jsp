<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" href="form.css">
<link rel="icon" type="image/x-icon" href="https://cdn-b.heylink.me/media/users/og_image/a1adb54527104a50ac887d6a299ee511.webp">
</head>
<body>
<div class="wrapper">
        <div class="logo">
            <img src="https://cdn-b.heylink.me/media/users/og_image/a1adb54527104a50ac887d6a299ee511.webp" alt="uitm">
        </div>
        <div class="text-center mt-4 name">
            <h1 style=text-align:center>SIGN UP</h1>
        </div>
        <form class="p-3 mt-3" action="SignupServlet" method = "post">
            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <input type="text" name="student_id" id="student_id" placeholder="Student ID" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <input type="text" name="name" id="name" placeholder="Full Name" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <input type="text" name="ic" id="ic" placeholder="IC Number" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <input type="text" name="email" id="email" placeholder="Student Email" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <input type="text" name="cont_num" id="cont_num" placeholder="Contact Number" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <input type="text" name="faculty" id="faculty" placeholder="Faculty" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <input type="text" name="program" id="program" placeholder="Program" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <input type="text" name="year" id="year" placeholder="Year of Study" required>
            </div>
            <div class="form-field d-flex align-items-center">
                <span class="fas fa-key"></span>
                <input type="password" name="password" id="pwd" placeholder="Password" required>
            </div>
            <button class="btn mt-3">SIGN UP</button>
        </form>
        <div class="text-center fs-6">
            <p style=text-align:center><a href="Login.jsp">Login</a></p>
        </div>
    </div>
</body>
</html>