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
<title>요청 파라미터 출력</title>
</head>
<body>
<b>request.getParameter()메소드 사용</b> <br />
name 파라미터 = <%= request.getParameter("name") %> <br />
address 파라미터 = <%= request.getParameter("address") %> <br />
<p>
<b>request.getParameterValues() 메소드 사용</b> <br />
<%
	String[] value = request.getParameterValues("pet");
	if(value != null) {
		for(int i=0; i < value.length; i++){
%>
			<%= value[i]%>\
<% 
		}
	}
%>			
<p>
<b>request.getParameterNames()메소드 사용</b> <br />
<%
	Enumeration paramEunm = request.getParameterNames();
	while(paramEunm.hasMoreElements()) {
		String name = (String)paramEunm.nextElement();
%>
		<%= name %>
<%		
	}
%>
<p>
<b>request.getParameterMap() 메소드 사용</b>
<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	if(nameParam != null){
%>
name = <%=nameParam[0] %>
<%
	}
%>
</body>
</html>