<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP</title>
    <style>
        body { font-family: Arial, Helvetica, sans-serif; margin: 2em; font-size: 14px; }
        h1 { color: #1f8a8a; }
        label { display: inline-block; width: 85px; }
    </style>
</head>
<body>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>
    <form action="emailList" method="post">
        <label>Email:</label>
        <input type="text" name="email"><br>
        <label>First Name:</label>
        <input type="text" name="firstName"><br>
        <label>Last Name:</label>
        <input type="text" name="lastName"><br>
        <label>&nbsp;</label>
        <input type="submit" value="Join Now">
    </form>
</body>
</html>

