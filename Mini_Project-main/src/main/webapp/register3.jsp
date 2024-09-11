<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
<head>
    <title>Credentails</title>
    <link rel="stylesheet" href="form2.css" type="text/css">
</head>

<body>
<%@ include file="header.jsp" %>
    <div class="main">
        <div class="register1">
            <h2> Credentails </h2>
            <form action="register3" id="register1" method="post">
                
                <label>User Name </label><br>
                <input type="text" id="name" name="uname"  autocomplete="on" ><br><br>
                <label >password</label><br>
                <input type="password" id="name" name="pass" autocomplete="on"> <br><br>
                <label>Confirm-password</label><br>
                <input type="password" id="name" name="cpass" autocomplete="on"> <br><br>
                <input type="submit" id="submit" value="Register"
                name="sumbit" id="submit">
        
            </form>

        </div>

    </div>

    
</body>



</html>