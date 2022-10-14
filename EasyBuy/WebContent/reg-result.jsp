<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书商城 - 首页</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/function.js"></script>
<script type="text/javascript">
function selectname(){
	  var name = document.getElementById("selectname").value;
	  location.href='selectProductList?name='+name;
}
function searchHot(name){
	location.href='selectProductList?name='+name;
}
</script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="images/logo.jpg" /></div>
	<div class="help"><c:if test="${name!=null}"><a href="selectdd?dd=${name.EU_USER_ID }">个人订单</a></c:if><c:if test="${name!=null}">当前用户${name.EU_USER_ID }</c:if><a href="ShopSelect" class="shopping">购物车</a><c:if test="${name==null}"><a href="login.jsp">登录</a>|<a href="register.jsp">注册</a></c:if><c:if test="${name!=null}"><a href="zx">退出</a></c:if><a href="SelallServlet">留言</a><c:if test="${name.EU_STATUS==2}"><a href="manage/index.jsp" >去后台</a></c:if></div>
	<div class="navbar">
		<ul class="clearfix">
			<li class="current"><a href="indexSelect">首页</a></li>
		</ul>
	</div>
</div>
<div id="childNav">
	<div class="wrap">
		<ul class="clearfix">
			<li class="first"><a href="javascript:searchHot('文学')">文学</a></li>  
			<li><a href="javascript:searchHot('生活')">生活</a></li>
			<li><a href="javascript:searchHot('计算机')">计算机</a></li>
			<li><a href="javascript:searchHot('经营')">经营</a></li>
			<li><a href="javascript:searchHot('小说')">小说</a></li>
			<li><a href="javascript:searchHot('外语')">外语</a></li>
			<li><a href="javascript:searchHot('励志')">励志</a></li>
			<li><a href="javascript:searchHot('社科')">社科</a></li>
			<li><a href="javascript:searchHot('学术')">学术</a></li>
			<li><a href="javascript:searchHot('少儿')">少儿</a></li>
			<li><a href="javascript:searchHot('艺术')">艺术</a></li>
			<li><a href="javascript:searchHot('科技')">科技</a></li>
			<li><a href="javascript:searchHot('考试')">考试</a></li>
			<li class="last"><input type="text" id="selectname"/><a href="javascript:selectname()">搜索</a></li>
		</ul>
	</div>
</div>
<div id="register" class="wrap">
	<div class="shadow">
		<em class="corner lb"></em>
		<em class="corner rt"></em>
		<div class="box">
			<h1>欢迎注册图书商城</h1>
			<ul class="steps clearfix">
				<li class="finished"><em></em>填写注册信息</li>
				<li class="last-current"><em></em>注册成功</li>
			</ul>
			<div class="msg">
				<p>恭喜：注册成功！</p>
				<p>正在进入首页...</p>
				<script type="text/javascript">
					setTimeout("location.href='indexSelect'", 3000);
				</script>
			</div>
		</div>
	</div>
</div>
<div id="footer">
	Copyright &copy; 2020 lqq All Rights Reserved. 
</div>
</body>
</html>

