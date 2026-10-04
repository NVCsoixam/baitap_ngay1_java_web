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
    <h1>Thanks for joining our email list</h1>
    <p>Here is the information that you entered:</p>
    <label>Email:</label><span>${email}</span><br>
    <label>First Name:</label><span>${firstName}</span><br>
    <label>Last Name:</label><span>${lastName}</span><br>
    <p>To enter another email address, click on the Back button in your browser
       or the Return button shown below.</p>
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="return">
        <input type="submit" value="Return">
    </form>
</body>
</html>
