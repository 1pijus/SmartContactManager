<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Contact</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #eef2f5;
        }
        .container {
            width: 600px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #2c3e50;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Edit Contact</h2>
    <form action="${pageContext.request.contextPath}/update" method="post">

        <input type="hidden" name="cid" value="${contact.cid}" />
        <label>Name:</label>
        <input type="text" name="name" value="${contact.name}" required />

        <label>Email:</label>
        <input type="email" name="email" value="${contact.email}" required />

        <label>Phone:</label>
        <input type="text" name="phone" value="${contact.phone}" required />

        <label>Work:</label>
        <input type="text" name="work" value="${contact.work}" />

        <label>Description:</label>
        <textarea name="description">${contact.description}</textarea>

        <label>Photo URL:</label>
        <input type="text" name="image" value="${contact.image}" />

        <button type="submit">Update Contact</button>
    </form>
</div>

</body>
</html>
