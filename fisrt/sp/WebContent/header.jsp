<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>sss</title>
	<!-- <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> -->
 
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
  <link rel="stylesheet" type="text/css" href="css/mystyle.css">
  <script type="text/javascript" src="js/jquery-2.2.1.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
  
</head>
<body>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <!-- <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script> -->
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
   <!--  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
   <!--  <script type="text/javascript" src="js/bootstrap.min.js"></script> -->
    <!-- <script type="text/javascript" src="js/bootstrap.js"></script> -->
  
    <div class="row"> 
            <div class="col-md-12">
                   <div class="col-md-4"></div> 
                   <div class="col-sm-5"><h2><span class="label label-primary">Welcome to our platform</span></h2></div>
                  <div class="col-sm-3">
                       <ul class="nav nav-pills" role="tablist">
                             <c:if test="${user.userAccount==null}">
                            <li role="presentation" class="active"><a href="login">登陆</a></li>
                            <li role="presentation" class="active"><a href="regedit">注册</a></li>
                            <li role="presentation"><a  data-toggle="modal" data-target="#system">消息 <span class="badge">0</span></a></li>
                            </c:if>
                            <c:if test="${user.userAccount!=null}">
                            <li role="presentation" class="active"><a href="">${user.userAccount}</a></li>
                            <li role="presentation" class="active"><a href="loginout">退出</a></li>
                            <li role="presentation"><a data-toggle="modal" data-target="#system">消息 <span class="badge" id="numsmsg">${Smsg }</span></a></li>
                            </c:if>
                            
                        </ul>
                   </div>
            </div> 
    </div>


    <br>
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-3"></div>
            <div class="col-md-6">
               <div id="navbar" class="navbar-collapse collapse">
                   <form class="navbar-form navbar-right" action="select" method="post">
                        <div class="form-group">
                            <input type="text"  placeholder="输入关键字" class="form-control" name="word">
                            <select class="form-control" name="type">
                            <option value="video">视频</option>
                            <option value="text">话题</option>
                            </select>
                        </div>
                    <button type="submit" class="btn btn-primary">搜索</button>
                   </form>
               </div>
            </div>
            <div class="col-md-3"> 
            <ul class="nav nav-pills" role="tablist">
              <li role="presentation" class="active"><a  data-toggle="modal" data-target="#myModal">礼物商店</a></li>
            </ul>
            </div>
        </div>
    </div>
	     
    <br>

<br>

      <nav class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index">校园自媒体平台</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="index">首页</a></li>
              <li>
              <c:if test="${user.userAccount==null}"><a href="login">个人信息中心</a></c:if>
              <c:if test="${user.userAccount!=null}"><a href="usercenter?cid=1">个人信息中心</a></c:if>
              </li>
              <c:forEach items="${videokind}" var="vdk">
              <li><a href="videolist?pn=1&videokindId=${vdk.videokindId}&videokindName=${vdk.videokindName} ">${vdk.videokindName}</a></li>
              </c:forEach>
              <li><a href="textlist">话题专区</a></li>
             <!--  <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">文章专区 <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">讨论区</a></li>
                  <li><a href="#">创建话题</a></li>
                  
                </ul>
              </li> -->
            </ul>
          </div>
        </div>
      </nav>





<c:if test="${user.userAccount!=null}">
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
          &times;
        </button>
        <h4 class="modal-title" id="myModalLabel">
          shop
        </h4>
      </div>
      <div class="modal-body">
                用户：${user.userAccount}
                  现有积分：<span id="show"></span>
       <input id="nowgrade" type="text" value="${user.userGrade}" class="onhidden">
       <input id="userId" type="text" value="${user.userId}" class="onhidden">

      </div>
      <div class="modal-footer">
      <div class="col-md-12">
                     <c:forEach items="${Giftshop }" var="gs">
                        <div class="col-md-3 margin10">
                        <div class="col-md-12"><img src="${gs.giftImage }" class="aimg"></div>
                        <div class="col-md-12 textcenter">${gs.giftGrade }积分</div>
                        <input class="dandan onhidden" type="text" id="g${gs.giftId }"  value="${gs.giftGrade }">
                        <div class="col-md-12">
                        <div class="col-sm-3 clearlrp">
                        <button class="dandan" onclick="jian('${gs.giftId }')">-</button>
                        </div>
                        <div class="col-md-6 clearlrp">
                        <input class="dandan" type="text" id="${gs.giftId }"  value="0">
                        </div>
                        <div class="col-sm-3 clearlrp">
                        <button class="dandan" onclick="jia('${gs.giftId }')">+</button>
                        </div>
                        </div>
                        <div class="col-md-12">
                        <button class="btn btn-xs btn-default btn-block" onclick="buy('${gs.giftId }','g${gs.giftId }')">购买</button>
                        </div>
                        </div>
                        </c:forEach>
            </div>
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭
        </button>
        
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal -->
</div>
</c:if>

<div class="modal fade" id="system" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
          &times;
        </button>
        <h4 class="modal-title" id="myModalLabel">
         系统消息
        </h4>
      </div>
      <div class="modal-body">
      
            <c:if test="${user.userAccount==null}">无消息</c:if>
            <c:if test="${user.userAccount!=null}">
            <c:forEach items="${Smsglist}" var="sl">
            <p>${ sl.smsgText}</p>
            </c:forEach>
            </c:if>
      </div>
      <div class="modal-footer">
      

        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="looked()">确定
        </button>
        
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal -->
</div>
<script type="text/javascript">
document.getElementById("show").innerHTML=document.getElementById('nowgrade').value;
function jia(aid){
  var newvalue=document.getElementById(aid).value;
  newvalue=parseInt(newvalue)+1;
  document.getElementById(aid).value=newvalue;
}

function jian(aid){
  var newvalue=document.getElementById(aid).value;
  if (parseInt(newvalue)<=0) {
    newvalue=0;
  }
  else{
    newvalue=parseInt(newvalue)-1;
  }
  
  document.getElementById(aid).value=newvalue;
}

function buy(aid,aname){
	var number=document.getElementById(aid).value;
	  var grade=document.getElementById(aname).value;
	  var nowgrade=document.getElementById('nowgrade').value;
	  var result=parseInt(nowgrade)-parseInt(number)*parseInt(grade);
	  var zero=parseInt(0);
	  if(result<zero){
	    alert("你的积分不过哦，赶紧去充值");
	  }
  else{
	  document.getElementById('nowgrade').value=result;
	  document.getElementById("show").innerHTML=document.getElementById('nowgrade').value;
	  $(function(){
		     $.ajax({
		    	url:"giftpay",
		    	data:"userId="+document.getElementById('userId').value+"&giftId="+aid+"&result="+result+"&number="+number,
		    	type:"GET",
		    	success:function(result){
		    		if(result==1){
		    			alert("购买成功");
		    		}else{
		    			alert("购买失败");
		    		}
	 
		    	}
		    	
		     });	
		});
  }

}

function looked(){
	 $(function(){
	     $.ajax({
	    	 url:"looked",
	    	 data:"userId="+document.getElementById('userId').value,
	    	 type:"Get",
	    	 success:function(result){
	    		 if(result==1){
	    			 document.getElementById('numsmsg').innerHTML="0";
	    		 }
	    	 }
	     });
	 });
}
</script>
</body>
</html>