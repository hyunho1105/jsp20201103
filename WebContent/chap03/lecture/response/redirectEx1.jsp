<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<%
response.sendRedirect("redirectEx1target.jsp"); //다른 곳에 응답을 요청하라고 응답함
                     //요기로 다시 요청해라
%>                    