<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>usermessage</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<script type="text/javascript" src="js/jquery-2.2.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
</head>
<body>
	<div class="panel panel-primary margin0 height585">
    <div class="panel-heading">
          <h3 class="panel-title">个人信息</h3>

    </div>
      <div class="panel-body clearallp">  
      <div class="container">
      <form class="form-signin" action="changemessage" method="post">
        <h2 class="form-signin-heading">你的个人信息</h2>
        
       <input name="userId" type="text"  class="form-control onhidden" value="${Umsg.userId}" >
        <label class="sr-only">真名</label>
        真名：<input name="userName" type="text"  class="form-control" value="${Umsg.userName}" >

        <label  class="sr-only">地址</label> 
        地址：<input name="userAddress" type="text"  class="form-control" value="${Umsg.userAddress}" >

        <label  class="sr-only">邮箱</label>
        邮箱：<input name="userEmail"  class="form-control" value="${Umsg.userEmail}" >

        <label  class="sr-only">电话号码</label>
        电话号码：<input name="userPhone" type="text"  class="form-control" value="${Umsg.userPhone}" >
        <br>

        <label class="sr-only">性别</label>
        <span>性别：</span>
        <c:if test="${Umsg.userSex==true}">
        男<input name="userSex" type="radio" value="1" checked="checked">
        女<input name="userSex" type="radio" value="0">
        </c:if>
        <c:if test="${Umsg.userSex==false}">
        男<input name="userSex" type="radio" value="1" >
        女<input name="userSex" type="radio" value="0" checked="checked">
        </c:if>
        <br>
        <br>

        <button class="btn btn-lg btn-primary btn-block" type="submit">提交</button>
        <button class="btn btn-lg btn-primary btn-block" type="reset">重置</button>
        
        </form>

        </div> 
                       
   </div>
   </div>
</body>
</html>