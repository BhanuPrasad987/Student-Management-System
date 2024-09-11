<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalida");

if (session.getAttribute("username") == null) {
    response.sendRedirect("login.jsp");
}
%>
<%@ page import="com.dto.*" import="java.sql.*"
 %>
<%
ServletContext ctx = request.getServletContext();
String url=ctx.getInitParameter("url");
String pass=ctx.getInitParameter("pass");
String uname=ctx.getInitParameter("uname");
String query = "select * from data where uname = ?";
Connection con = DriverManager.getConnection(url, uname, pass);
PreparedStatement statement = con.prepareStatement(query);
String username = (String) session.getAttribute("username");
statement.setString(1, username);
ResultSet answer = statement.executeQuery();
if (answer.next()){
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
    
<script>
    function logout() {
        fetch('logout', { method: 'POST' })
            .then(() => window.location.href = 'login.jsp');
    }
</script>
</head>
<body>
<div class="navbar">
        <img src="images/hogwarts-logo.jpg" alt="Hogwarts Logo">
       
        <ul>
            <li><a href="Homepage.jsp">Home</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="login" onclick="logout()">Logout</a></li>
            <!-- Add this to your HTML page -->

        </ul>
       
    </div>
    <div class="main">
        <h1>Welcome to Your Dashboard!</h1>
        <table>
            <thead>
                <tr>
                    <th colspan="2">Your Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>First Name:</th>
                    <td><%= answer.getString(1) %></td>
                </tr>
                <tr>
                    <th>Last Name:</th>
                    <td><%= answer.getString(2) %></td>
                </tr>
                <tr>
                    <th>Gender:</th>
                    <td><%= answer.getString(3) %></td>
                </tr>
                <tr>
                    <th>Date Of Birth:</th>
                    <td><%= answer.getString(4) %></td>
                </tr>
                <tr>
                    <th>Mobile No:</th>
                    <td><%= answer.getInt(5) %></td>
                </tr>
                <tr>
                    <th>Alternate Mobile Number:</th>
                    <td><%= answer.getInt(6) %></td>
                </tr>
                <tr>
                    <th>Email:</th>
                    <td><%=  answer.getString(7) %></td>
                </tr>
            </tbody>
        </table>
        <%
} else {
    
  
}
%>     
    </div>
</body>
</html>
