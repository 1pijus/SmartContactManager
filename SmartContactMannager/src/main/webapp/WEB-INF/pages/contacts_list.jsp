<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>All Contacts</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 20px;
        }
        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 15px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .actions a {
            margin: 0 10px;
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
        }
        .actions a:hover {
            text-decoration: underline;
        }
        .no-data {
            text-align: center;
            color: red;
            font-size: 18px;
        }
    </style>
</head>
<body>

<h2>All Contacts</h2>

<c:choose>
    <c:when test="${not empty contacts}">
        <table>
           <thead>
    <tr>
        <th>Photo</th> <!-- New header -->
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Work</th>
        <th>Description</th>
        <th>Actions</th>
    </tr>
</thead>
<tbody>
    <c:forEach var="contact" items="${contacts}">
        <tr>
            <td>
                <img src="${contact.image}" alt="Contact Photo" style="width:60px;height:60px;border-radius:50%;">
            </td>
            <td>${contact.name}</td>
            <td>${contact.email}</td>
            <td>${contact.phone}</td>
            <td>${contact.work}</td>
            <td>${contact.description}</td>
            <td class="actions">
                <a href="edit/${contact.cid}">Edit</a>
                <a href="delete/${contact.cid}" onclick="return confirm('Are you sure you want to delete this contact?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</tbody>

        </table>
    </c:when>
    <c:otherwise>
        <div class="no-data">No contacts available!</div>
    </c:otherwise>
</c:choose>

</body>
</html>
