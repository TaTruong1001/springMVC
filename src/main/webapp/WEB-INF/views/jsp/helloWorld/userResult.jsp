<%@ page contentType="text/html; ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>String MVC Form Handling</title>
</head>
<body>
<h2>User Registration Result</h2>
<table>
    <tr>
        <td>Name</td>
        <td>${user.name}</td>
    </tr>
    <tr>
        <td>Last Name</td>
        <td>${user.lastname}</td>
    </tr>
    <tr>
        <td>Password</td>
        <td>${user.password}</td>
    </tr>
    <tr>
        <td>Detail</td>
        <td>${user.detail}</td>
    </tr>
    <tr>
        <td>Birth Date</td>
        <td>${user.birthDate}</td>
    </tr>
    <tr>
        <td>Gender</td>
        <td>${user.gender}</td>
    </tr>
    <tr>
        <td>Country</td>
        <td>${user.country}</td>
    </tr>
    <tr>
        <td>Non-Smoking</td>
        <td>${user.nonSmoking}</td>
    </tr>
</table>
</body>
</html>