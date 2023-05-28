<%@ page contentType="text/html; ISO-8859-1; charset=ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href='${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/css/bootstrap.min.css' />
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <style>
        <%@include file="/resources/css/main.css"%>
    </style>
    <title>Spring MVC Form Handling</title>
</head>
<body>

    <h2 class="d-flex justify-content-center">User Registration Form</h2>
    <mvc:form class="d-flex justify-content-center" modelAttribute="user" action="result">
        <table>
            <tr>
                <td>First name (*)</td>
                <td><mvc:input path="name" required="true" placeholder="First Name"/></td>
            </tr>
            <tr>
                <td>Last Name (*)</td>
                <td><mvc:input path="lastname"  required="true" placeholder="Last Name"/></td>
            </tr>
            <tr>
                <td>Password (*)</td>
                <td><mvc:password path="password"  required="true" placeholder="Password"/></td>
            </tr>
            <tr>
                <td>Detail</td>
                <td><mvc:textarea path="detail"  required="true" placeholder="Detail information"/></td>
            </tr>
            <tr>
                <td>BirthDate</td>
                <td><mvc:input path="birthDate" type="Date" /></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><mvc:radiobuttons path="gender" items="${genders}"/></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><mvc:select path="country" items="${countries}"/></td>
            </tr>
            <tr>
                <td>Non Smoking</td>
                <td><mvc:checkbox path="nonSmoking" checked="true"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input class="btn btn-primary" type="submit" value="Submit">
                </td>
            </tr>
        </table>
    </mvc:form>

</body>


