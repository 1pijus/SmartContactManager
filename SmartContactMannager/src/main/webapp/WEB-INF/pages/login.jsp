<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            background: #eef2f7;
            font-family: 'Segoe UI', sans-serif;
        }
        .login-container {
            width: 400px;
            margin: 100px auto;
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #2c3e50;
        }
        .form-field {
            margin-bottom: 20px;
        }
        label {
            font-weight: 600;
        }
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #27ae60;
            color: white;
            font-weight: bold;
            padding: 10px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
        .register-link {
            text-align: center;
            margin-top: 20px;
        }
        .register-link a {
            color: #27ae60;
            font-weight: bold;
            text-decoration: none;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2>User Login</h2>

    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>

    <frm:form method="POST" action="login">
        <div class="form-field">
            <label>Email:</label>
            <input type="email" name="email" required />
        </div>
        <div class="form-field">
            <label>Password:</label>
            <input type="password" name="password" required />
        </div>
        <div class="form-field">
            <input type="submit" value="Login" />
        </div>
    </frm:form>

    <!-- Register Link -->
    <div class="register-link">
        <p>Don't have an account? <a href="register">Register here</a></p>
    </div>
</div>
</body>
</html>
