<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>pageContext findAttribute</h1>
<%
pageContext.setAttribute("myattr1", "pageval1");
request.setAttribute("myattr1", "reqval1");
session.setAttribute("myattr1", "sesval1");
application.setAttribute("myattr1", "appval1");
//가장 좁은 영역을 찾는메소드 어트뷰트에 이름을 붙여서 찾을수있다 어트리뷰트는 오브젝트영역
%>

<%= pageContext.findAttribute("myattr1") %>
</body>
</html>