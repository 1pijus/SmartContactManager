<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Contact</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f6f9;
        }
        .form-container {
            width: 600px;
            margin: 50px auto;
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #2c3e50;
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: 500;
        }
        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        textarea {
            height: 100px;
        }
        .actions {
            text-align: center;
            margin-top: 25px;
        }
        .actions input {
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            background-color: #3498db;
            color: white;
            cursor: pointer;
            font-weight: bold;
        }
        .actions input:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Add New Contact</h2>

    <frm:form modelAttribute="contact"  >
        <label for="name">Name:</label>
        <frm:input path="name" id="name"/>

        <label for="email">Email:</label>
        <frm:input path="email" id="email"/>

        <label for="phone">Phone:</label>
        <frm:input path="phone" id="phone"/>

        <label for="work">Work:</label>
        <frm:input path="work" id="work"/>

        <label for="description">Description:</label>
        <frm:textarea path="description" id="description"/>

        <label for="image">Image URL:</label>
        <frm:input path="image" id="image"/>

        <div class="actions">
            <input type="submit" value="Save Contact">
        </div>
    </frm:form>
</div>

</body>
</html>
