<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>

    <!-- Custom CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 100%;
            max-width: 500px;
        }

        h1 {
            color: #333;
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            font-size: 16px;
        }

        input[type="text"], input[type="email"], input[type="password"], input[type="url"] {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 14px;
            margin-top: 5px;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px 20px;
            text-align: center;
            font-size: 16px;
            cursor: pointer;
            border-radius: 4px;
            margin-top: 20px;
            width: 48%;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #45a049;
        }

        input[type="reset"] {
            background-color: #f44336;
        }

        input[type="reset"]:hover {
            background-color: #e53935;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-size: 16px;
            font-weight: bold;
            color: #555;
        }

        .form-group input, .form-group select {
            font-size: 14px;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
        }

        .footer a {
            text-decoration: none;
            color: #007BFF;
        }

        .footer a:hover {
            text-decoration: underline;
        }

    </style>
</head>

<body>
    <div class="container">
        <h1>Register User</h1>

        <frm:form modelAttribute="user">
            <table>
                <tr>
                    <td><label for="name">Name:</label></td>
                    <td><frm:input path="name" id="name" placeholder="Enter your name" required="true" class="form-control" /></td>
                </tr>
                <tr>
                    <td><label for="email">Email:</label></td>
                    <td><frm:input path="email" id="email" placeholder="Enter your email" required="true" class="form-control" /></td>
                </tr>
                <tr>
                    <td><label for="password">Password:</label></td>
                    <td><frm:input path="password" id="password" type="password" placeholder="Enter your password" required="true" class="form-control" /></td>
                </tr>
                <tr>
                    <td><label for="role">Role:</label></td>
                    <td>
                        <frm:select path="role" class="form-control">
                            <frm:option value="USER">User</frm:option>
                            <frm:option value="ADMIN">Admin</frm:option>
                        </frm:select>
                    </td>
                </tr>
                <tr>
                    <td><label for="imageUrl">Profile Image URL:</label></td>
                    <td><frm:input path="imageUrl" id="imageUrl" placeholder="Profile image URL" class="form-control" /></td>
                </tr>
                <tr>
                    <td><label for="enabled">Enabled:</label></td>
                    <td><frm:checkbox path="enabled" id="enabled" checked="true" class="form-control" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Register" />
                        <input type="reset" value="Reset" />
                    </td>
                </tr>
            </table>
        </frm:form>

        <div class="footer">
            <p>Already have an account? <a href="/login">Login here</a></p>
        </div>
    </div>
</body>

</html>
