<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>userimage</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<script type="text/javascript" src="js/jquery-2.2.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
</head>
<body>
	<div class="panel panel-primary">
    <div class="panel-heading">
          <h3 class="panel-title">个人头像</h3>
    </div>
      <div class="panel-body clearallp">  
      <div class="container">
      <div class="col-sm-12 textcenter">
          <img src="${Umsg.userImage }" class="userhead">
      </div>
      <div class="col-md-12">
      <div class="col-sm-4"></div>
          
       <div class="col-sm-4"> 
            <form action="updateuserimage" method="post"  enctype="multipart/form-data">
            <input  class="onhidden" type="text" name="userId" value="${Umsg.userId}">
            <div class="col-sm-2 clearlrp">
            <span class="label label-warning">图片</span>
            </div> 
            <div class="col-sm-10 clearlrp">
            <input  class="dandan" type="file" name="imagename" id="image">
            </div>
            
             <div class="col-sm-12 clearlrp">
             <button class="btn btn-lg btn-success btn-block" type="submit" >上传头像</button>   
             </div>
            
            </form>
       </div>
       <div class="col-sm-4"></div>
        </div> 
                       
   </div>
   </div>
   </div>
</body>
</html>