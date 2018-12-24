<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>usercenter</title>

	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
	 <link rel="stylesheet" type="text/css" href="css/mystyle.css">
	<script type="text/javascript" src="js/jquery-2.2.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
</head>
<body>
	
            <div class="col-md-12 ">
                  <div class="panel panel-primary">
                  <div class="panel-heading">
                      <h3 class="panel-title">个人中心</h3>

                  </div>
                  <div class="panel-body clearallp">
                  <div class="col-sm-2 clearallp">
                      <div class="col-sm-12 clearallp">  
                      <a href="usercenter?cid=1"><button class="btn btn-lg btn-primary btn-block" >个人资料</button></a>
                      </div>

                      <div class="col-sm-12 clearallp">
                        <a href="usercenter?cid=2"><button class="btn btn-lg btn-primary btn-block" >个人头像</button></a>
                      </div>
                      <div class="col-sm-12 clearallp" >
                        <a href="usercenter?cid=3"><button class="btn btn-lg btn-primary btn-block" >会员中心</button></a>
                      </div>

                      <div class="col-sm-12 clearallp">
                      <c:if test="${user.userGrade>0 }">
                        <a href="usercenter?cid=4"><button class="btn btn-lg btn-primary btn-block" >我的视频</button></a>
                      </c:if>
                      <c:if test="${user.userGrade==0 }">
                        <a href="usercenter?cid=3"><button class="btn btn-lg btn-primary btn-block" >我的视频</button></a>
                      </c:if>
                      </div>
                      <div class="col-sm-12 clearallp">
                      <c:if test="${user.userGrade>0 }">
                        <a href="usercenter?cid=5"><button class="btn btn-lg btn-primary btn-block" >我的话题</button></a>
                      </c:if>
                      <c:if test="${user.userGrade==0 }">
                        <a href="usercenter?cid=3"><button class="btn btn-lg btn-primary btn-block" >我的话题</button></a>
                      </c:if>
                      </div>
                     
                      </div>
                      <div class="col-sm-10 clearallp">
                      <c:if test="${Umsg==nul||Umsg==1}">
                      <iframe  class="width100 height590" src="usermessage?userId=${user.userId}" frameborder="0"></iframe>
                      </c:if>
                      <c:if test="${Umsg==2}">
                      <iframe  class="width100 userimagebig" src="userimage?userId=${user.userId}" frameborder="0"></iframe>
                      </c:if>
                      <c:if test="${Umsg==3}">
                      <iframe  class="width100 vipbig" src="membercenter?userId=${user.userId}" frameborder="0"></iframe>
                      </c:if>
                      <c:if test="${Umsg==4}">
                      <iframe  class="width100 height755" src="uservideo?userId=${user.userId}" frameborder="0"></iframe>
                      </c:if>
                      <c:if test="${Umsg==5}">
                      <iframe  class="width100 height590" src="usertext?userId=${user.userId}" frameborder="0"></iframe>
                      </c:if>
                      
                      
                      </div>
                     
                  </div>
                  



                  </div>

                  </div>
                 
          
    
</body>
</html>