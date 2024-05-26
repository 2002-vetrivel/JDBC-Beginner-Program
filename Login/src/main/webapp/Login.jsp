<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kodnest</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container">
        <img class="image" src="Logo2.png" alt="Kodnest">
        <p class="p">Login</p>
        <form action="LoginServlet" method="post" class="forms">
            <input class="input" type="text" name="username" placeholder="Enter your name..." required><br>
            <input class="input" type="password" name="password" placeholder="Enter your password..." required><br><br>
            <button class="buttons" type="submit">Submit</button>
        </form>
        <% 
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
            <p style="color: red;"><%= errorMessage %></p>
        <% 
            }
        %>
    </div>
</body>
</html>
