<%@ page contentType="text/html; ISO-8859-1; charset=ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<html>
<head>
  <link rel="stylesheet" type="text/css" href='${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/css/bootstrap.min.css' />
  <script type="text/javascript" src="${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
  <style>
    <%@include file="/resources/css/main.css"%>
  </style>
  <title>Session</title>
</head>
<body>
           <h3>Hello ${username}</h3>
</body>
</html>
