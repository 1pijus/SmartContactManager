<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            background: #f4f6f9;
            font-family: 'Segoe UI', sans-serif;
        }
        .container {
            width: 80%;
            margin: 50px auto;
        }
        .welcome {
            font-size: 24px;
            color: #2c3e50;
            margin-bottom: 20px;
            text-align: center;
        }
        .card {
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            text-align: center;
        }
        .card a {
            display: inline-block;
            margin: 15px;
            padding: 10px 25px;
            border-radius: 5px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            font-weight: bold;
        }
        .card a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="welcome">
        Welcome, <c:out value="${user.name}"/>!
    </div>

    <div class="card">
        <h2>Your Dashboard</h2>
        <a href="add">Add New Contact</a>
        <a href="list">View All Contacts</a>
        <a href="profile">My Profile</a>
        <a href="logout">Logout</a>
    </div>
</div>

</body>
</html>
