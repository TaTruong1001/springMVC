<%@ page contentType="text/html; ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring MVC Form Handling</title>
</head>
<body>
   <h2>User Registration Form</h2>
<%--@elvariable id="user" type=""--%>
<mvc:form modelAttribute="user" action="result">
<table>
    <tr>
        <td>First name (*)</td>
        <td><mvc:input path="name" required="true" placeholder="First Name"></td>
    </tr>
    <tr>
        <td>Last Name (*)</td>
        <td><mvc:input path="lastname"  required="true" placeholder="Last Name"></td>
    </tr>
    <tr>
        <td>Password (*)</td>
        <td><mvc:password path="password"  required="true" placeholder="Password"></td>
    </tr>
    <tr>
        <td>Detail</td>
        <td><mvc:textarea path="detail"  required="true" placeholder="Detail information" ></td>
    </tr>
    <tr>
        <td>BirthDate</td>
        <td><mvc:input path="birthDate" type="Date" ></td>
    </tr>
    <tr>
        <td>Gender</td>
        <td><mvc:radiobuttons path="gender" items="${genders}" ></td>
    </tr>
    <tr>
        <td>Country</td>
        <td><mvc:select path="country" items="${countries}" ></td>
    </tr>
    <tr>
        <td>Non Smoking</td>
        <td><mvc:form path="nonSmking" checked="true" ></td>
    </tr>
    <tr>
        <td>colspan="2"
        <input type="submit" value="Submit">
        </td>
    </tr>
</table>
   </mvc:form>
</body>
</html>