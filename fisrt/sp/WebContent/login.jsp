<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>login</title>
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
     <script type="text/javascript" src="js/jquery-2.2.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
</head>
<body>
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <!--<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>-->
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <!--<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->

    <div class="container">
      <form class="form-signin" action="dologin" method="post">
        <h2 class="form-signin-heading">&nbsp;请输入你的登陆信息</h2>
        <label  class="sr-only">账号</label>
        <input name="userAccount" type="text"  class="form-control" placeholder="账号" >

        <label  class="sr-only">密码</label>
        <input name="userPassword" type="password"  class="form-control" placeholder="密码" >

        
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
        </form>
        <div class="col-md-4"></div>
        <div class="col-md-4">
        <a href="home"><button class="btn btn-lg btn-success btn-block margin420">返回主页</button></a>
        </div>
        
        <div class="col-md-4"></div>
        
      

    </div> 

</body>
</html>