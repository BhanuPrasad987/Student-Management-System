<!DOCTYPE html>
<html lang="eng">
<head>
    <title>Basic details</title>
    <link rel="stylesheet" href="form2.css" type="text/css">
    <%@ include file="header.jsp" %>
</head>

<body>
    <div class="main">
        <div class="register1">
            <h2> Basic Details </h2>
            <form  action="register1" id="register1" method="post">
                
                <label>First Name </label><br>
                <input type="text" id="name" name="fname"  autocomplete="off"placeholder="First name" autofocus ><br><br>
                <label >Last Name</label><br>
                <input type="text" id="name" name="lname" autocomplete="off"placeholder="Last name"> <br><br>
                <label>Date Of Birth</label><br>
                <input type="text" id="name" name="dob" autocomplete="off" placeholder="YYYY-MM-DD">  <br><br>
                <label>Gender</label><br>
                <input type="radio" id="male" name="gender" value="male">
                &nbsp;
                <label for="male">Male</label>
                &nbsp&nbsp;
                <input type="radio" id="female" name="gender" value="female">
                <label for="female">Female</label>
                &nbsp&nbsp;
                <input type="radio" id="other" name="gender" value="other">
                <label for="other">Other</label><br><br>
                <input type="submit" id="submit" value="submit"
                name="submit" id="submit">
        
            </form>

        </div>

    </div>

    
</body>



</html>