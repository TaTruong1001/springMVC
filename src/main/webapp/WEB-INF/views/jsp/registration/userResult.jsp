<%@ page contentType="text/html; ISO-8859-1; charset=ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<html>
<head>

    <title>String MVC Form Handling</title>
</head>
<body>
<h2>User Registration Result</h2>
<table>
    <tr>
        <td>Name: </td>
        <td>${user.name}</td>
    </tr>
    <tr>
        <td>Last Name: </td>
        <td>${user.lastname}</td>
    </tr>
    <tr>
        <td>Password: </td>
        <td>${user.password}</td>
    </tr>
    <tr>
        <td>Detail: </td>
        <td>${user.detail}</td>
    </tr>
    <tr>
        <td>Birth Date: </td>
        <td>${user.birthDate}</td>
    </tr>
    <tr>
        <td>Gender: </td>
        <td>${user.gender}</td>
    </tr>
    <tr>
        <td>Country: </td>
        <td>${user.country}</td>
    </tr>
    <tr>
        <td>Non-Smoking: </td>
        <td>${user.nonSmoking}</td>
    </tr>
    <button class="btn btn-sm btn-primary"
            onclick="location.href='remove-sisson'">Remove</button>
</table>
</body>
</html>
