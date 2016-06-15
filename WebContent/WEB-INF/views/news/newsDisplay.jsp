<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import=" org.jasig.cas.client.util.*" %>
<%@ page import=" org.jasig.cas.client.authentication.*" %>
<%@ page import=" org.jasig.cas.client.validation.*" %>
<%@ page import=" java.util.*" %>
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
	AttributePrincipal principal = (AttributePrincipal) request.getUserPrincipal();
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<title>user Display</title>
<script type="text/javascript" src="scripts/jquery-1.11.1.min.js"></script>
</head>
<body>
<h1>最新新闻</h1>
<div id="d1"></div>
<a href="http://127.0.0.1:8080/cas/logout?service=http://127.0.0.1:8080/SpringWeb/news/getNews">注销</a>
<script type="text/javascript">
	$(function(){
		$.ajax({
			type:'GET',
			url:'news/getUsers',
			dataType:'json',
			success:function(data){
				$(data).each(function(i,item){
					$("#d1").append("<span>"+item.firstName+","+item.lastName+"<span>");
				});
			}
		});
	});
</script>
</body>
</html>