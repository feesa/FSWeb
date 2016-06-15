<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import=" org.jasig.cas.client.util.*" %>
<%@ page import=" org.jasig.cas.client.authentication.*" %>
<%@ page import=" org.jasig.cas.client.validation.*" %>
<%@ page import=" java.util.*" %>
<% 
	AttributePrincipal principal = (AttributePrincipal) request.getUserPrincipal();
	out.println("username:"+principal.getName());
	Map<String,Object> attributes = principal.getAttributes();
	Iterator<Map.Entry<String,Object>> it=attributes.entrySet().iterator();
	while(it.hasNext()){
		Map.Entry<String,Object> map_value= it.next();
		out.println(map_value.getKey()+":"+map_value.getValue().toString());
	}
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>html5</title>
</head>
<body>
<h1>欢迎</h1>
<a href="news/getNews">查看数据</a>
</body>
</html>