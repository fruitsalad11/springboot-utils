<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.jiuzhi.manage.common.ueditor.ActionEnter"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    request.setCharacterEncoding( "utf-8" );
	response.setHeader("Content-Type" , "text/html");

	/* String rootPath = request.getServletContext().getRealPath("/statics/plugins/ueditor/"); */
	String rootPath = application.getRealPath( "/" );

	out.write( new ActionEnter( request, rootPath ).exec() );
%>
