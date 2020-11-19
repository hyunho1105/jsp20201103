<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="memberInfo" class="chap08.member.MemberInfo"/>
<jsp:setProperty name="memberInfo" property="*"/>
<jsp:setProperty property="password" name="memberInfo" value="<%= memberInfo.getId() %>"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>가입</title>
</head>
<body>
<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>아이디 </td>
	<td><jsp:getProperty property="id" name="memberInfo"/></td>
	<td>password</td>
	<td><jsp:getProperty property="password" name="memberInfo"/></td>
</tr>
<tr>
	<td>name </td>
	<td><jsp:getProperty property="name" name="memberInfo"/></td>
	<td>email</td>
	<td><jsp:getProperty property="email" name="memberInfo"/></td>
</tr>
</table>
</body>
</html>