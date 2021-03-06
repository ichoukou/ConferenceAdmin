<%@page import="models.Teacher"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>广西大学会议管理系统后台 - 首页</title>

<%@include file="headcss.html"%>
</head>

<body>
	
	<div id="wrapper">
		<%@include file="nav.jsp"%>
		<%
			Teacher tea = (Teacher)session.getAttribute("tea");
			if(tea != null){
		%>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">欢迎您，<%=tea.getTea_name() %></h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->
		<%}else{ %>
			<script type="text/javascript">
				alert("您还未登录，请先登录！");
				window.location.href="login.jsp";
			</script>
		<%} %>
	</div>
	<!-- /#wrapper -->
	<%@include file="footerjs.html"%>

</body>

</html>
