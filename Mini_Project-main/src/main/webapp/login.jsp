<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
<head>
    <title>Login </title>
    <link rel="stylesheet" href="login.css" type="text/css">
</head>

<body>
<%@ include file="header.jsp" %>
    <div class="main">
        <div class="login">
            <h2> Login </h2>
            <form action="login" id="login" method="post">
                <label>UserName </label><br>
                <input type="text" id="name" name="uname"  autocomplete="off" autofocus placeholder="username" ><br><br>
                <label >Password</label><br>
                <input type="password" id="name" name="pass" autocomplete="off" placeholder="password"> <br><br>
                <input type="submit" id="submit" value="submit"
                name="submit" id="submit"><br><br>
                <span style="color:#fff;">Didn't have account ?<a href="register1.jsp" style="color: lightgreen;">Signup</a>
        
        
            </form>

        </div>

    </div>

    
</body>



</html>