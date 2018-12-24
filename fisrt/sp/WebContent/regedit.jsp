<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>regedit</title>
    
	<!-- <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
    <link rel="stylesheet" type="text/css" href="css/mystyle.css">
    <script type="text/javascript" src="js/jquery-2.2.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
    <link rel="stylesheet" type="text/css" href="css/login.css">

</head>
<body>
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <!-- <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script> -->
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
   <!--  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
    
	 <div class="container">
      <form class="form-signin" action="doregedit" method="post">
        <h2 class="form-signin-heading">&nbsp;请输入你的注册信息</h2>

        <label class="sr-only">账号名</label>
        <input id="userAccount" name="userAccount" type="text"  class="form-control" placeholder="账号名" >

        <label  class="sr-only">密码</label>
        <input id="userPassword" name="userPassword" type="password"  class="form-control" placeholder="密码" >
         
         <label  class="sr-only">再次输入密码</label>
        <input id="userPassword2" name="userPassword2" type="password"  class="form-control" placeholder="再次输入密码" >
        
       

        <label  class="sr-only">真实姓名</label> 
        <input name="userName" type="text"  class="form-control" placeholder="真实姓名" >

        <label  class="sr-only">地址</label> 
        <input name="userAddress" type="text"  class="form-control" placeholder="地址" >

        <label  class="sr-only">邮箱</label>
        <input name="userEmail"  class="form-control" placeholder="邮箱" >

        <label  class="sr-only">电话号码</label>
        <input name="userPhone" type="text"  class="form-control" placeholder="电话号码" >
        <br>

        <label class="sr-only">性别</label>
        <span>性别：</span>
        男<input name="userSex" type="radio" value="1">
        女<input name="userSex" type="radio" value="0">
        <br>
        <br>

        <button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
        <button class="btn btn-lg btn-primary btn-block" type="reset">重置</button>
        </form>
        <div class="col-md-4"></div>
        <div class="col-md-4">
        <a href="index"><button class="btn btn-lg btn-success btn-block">返回主页</button></a>
        </div>
        
        <div class="col-md-4"></div>

    </div> 
    
<script type="text/javascript">
$("#userAccount").change(function(){
	var userAccount=document.getElementById('userAccount').value;
	$.ajax({
		url:"checktheaccount",
		data:"userAccount="+userAccount,
		type:"get",
		success:function(result){
			if(result==1){
				alert("该用户名已经存在");
			}
		}
	});
});

$("#password2").change(function(){
	var p1=document.getElementById('userPassword').value;
	var p2=document.getElementById('userPassword2').value;
	if(p1!=p2){
		alert("密码再次输入错误");
	}
	
});


</script>    
</body>
</html>