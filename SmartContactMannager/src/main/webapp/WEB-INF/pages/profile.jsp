<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>My Profile</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #eef2f5;
            margin: 0;
        }
        .container {
            max-width: 700px;
            margin: 60px auto;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
        }
        .info {
            font-size: 18px;
            line-height: 1.8;
            color: #34495e;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>My Profile</h2>
    <div class="info">
        <p><strong>Name:</strong> <c:out value="${user.name}" /></p>
        <p><strong>Email:</strong> <c:out value="${user.email}" /></p>
        <p><strong>Role:</strong> <c:out value="${user.role}" /></p>
        <p><strong>Account Created:</strong> <c:out value="${user.createdDate}" /></p>
    </div>
</div>

</body>
</html>
