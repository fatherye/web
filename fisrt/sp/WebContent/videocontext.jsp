<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>videocontent</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
  <link rel="stylesheet" type="text/css" href="css/mystyle.css">
  <link rel="stylesheet" type="text/css" href="css/danmuplayer.css">
  <script type="text/javascript" src="js/jquery-2.2.1.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
  <script type="text/javascript" src="js/danmuplayer.js"></script>
</head>
<body>
	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    
    <div class="row">
         <div class="col-md-8">
              <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">${video.videoName }</h3>

                    </div>
                    <div class="panel-body clearallp">
                       
                       
                               <div class="col-sm-12 clearlrp" >
                               <div id="danmup"></div>
                               </div>
                               <div class="col-sm-12 addallp">
                              
                                   <div class="col-sm-6 clearlrp">

                                    <div class="col-sm-2">
                                    <img src="${auser.userImage }" class="image5050">
                                    </div>
                                    <div class="col-sm-10">
                                    <div class="col-sm-12">
                                    <span>${video.videoName }</span>
                                    </div>
                                    <div class="col-sm-12">
                                    <span>上传者：${auser.userAccount}</span>
                                    </div>
                        
                                    </div>
                                    


                                   </div>
                                   <div class="col-sm-2 clearlrp">
                                   <a href="download?videoId=${video.videoId} "><span class="btn btn-lg btn-primary btn-block">下载</span></a>
                                   </div>
                                   <div class="col-sm-2 clearlrp">
                                   <button class="btn btn-lg btn-warning btn-block" data-toggle="modal" 
                                   data-target="#gift" >送礼物</button> 
                                   </div>
                                   <div class="col-sm-2 clearlrp">
                                   <button class="btn btn-lg btn-danger btn-block" onclick="report()" >举报</button>
                                   </div>
                               
                               </div>
                        
                        
                    </div>
              </div>
         </div>
         <div class="col-md-4">
              <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">评论区</h3>

                    </div>
                    <div class="panel-body height600 ">
                       
                       
                               <div class="col-sm-12 clearlrp">

                               <iframe src="dummp?videoId=${video.videoId}" width="100%" height="540" frameborder="0"></iframe>
                               </div>
                               
                        
                        
                    </div>
              </div>
         </div>
         
      
         
        
         
         
         
         
         
         
    </div>  

<div class="modal fade" id="gift" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
          &times;
        </button>
        <h4 class="modal-title" id="myModalLabel">
         你的礼物
        </h4>
      </div>
      <div class="modal-body">
                

      </div>
      <div class="modal-footer">
      <div class="col-md-12">
              
                 
                    
                     <c:forEach items="${ keeplist}" var="kl">
                        <div class="col-md-3 margin10">
                        <div class="col-md-12"><img src="${kl.gift.giftImage }" class="aimg"></div>
                        <div class="col-md-12" >余量：<span id="show${kl.giftId}">${kl.giftNumber}</span></div>
                        <input class="onhidden" id="hidden${kl.giftId}" value="${kl.giftNumber}">
                        <input class="onhidden" id="grade${kl.giftId}" value="${kl.gift.giftGrade}">
                        <input class="onhidden" id="id${kl.giftId}" value="${kl.giftId}">
                        <div class="col-md-12">
                        <div class="col-sm-3 clearlrp">
                        <button class="dandan" onclick="del('num${kl.giftId}')">-</button>
                        </div>
                        <div class="col-md-6 clearlrp">
                        <input id="num${kl.giftId}" class="dandan" value="0" >
                        </div>
                        <div class="col-sm-3 clearlrp">
                        <button class="dandan" onclick="add('num${kl.giftId}','hidden${kl.giftId}')">+</button>
                        </div>
                        </div>
                        <div class="col-md-12">
                        <button class="btn btn-xs btn-default btn-block" onclick="giftsend('num${kl.giftId}','hidden${kl.giftId}','grade${kl.giftId}','show${kl.giftId}','id${kl.giftId}')">送出</button>
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
<input id="videoUrl" type="text"  class="onhidden" value="${video.videoUrl}">
<input id="videoId" type="text"  class="onhidden" value="${video.videoId}">
<input id="otherId" type="text"  class="onhidden" value="${video.userId}">
<input id="userId" type="text"  class="onhidden" value="${user.userId}">
<script type="text/javascript">
  $("#danmup").DanmuPlayer({
     src:document.getElementById('videoUrl').value,  //视频源
    height:"480px", //区域的高度
    width:"100%", //区域的宽度
    urlToPostDanmu:"dummpsent?videoId="+document.getElementById('videoId').value+"&userId="+document.getElementById('userId').value,
    urlToGetDanmu:"dummpget?videoId="+document.getElementById('videoId').value
});
  //$("#danmup .danmu-div").danmu("addDanmu",[
    //{ "text":"测试1" ,color:"white",size:1,position:0,time:2},
    //{ "text":"我是帽子绿" ,color:"green",size:1,position:0,time:3},
    //{ "text":"哈哈哈啊哈" ,color:"#f30",size:1,position:0,time:10},
    //{ "text":"大家好，我是打不死的小强" ,color:"orange",size:1,position:0,time:23}
//]);
  

  </script>
  <script type="text/javascript">
  function add(aid,num){
	  var newvalue=document.getElementById(aid).value;
	  var max=document.getElementById(num).value;
	  if(parseInt(newvalue)>=parseInt(max)){
	    document.getElementById(aid).value=parseInt(max);
	  }else{
	    newvalue=parseInt(newvalue)+1;
	  document.getElementById(aid).value=newvalue;
	  }
	  

	}

	function del(aid){
	  var newvalue=document.getElementById(aid).value;
	  if (parseInt(newvalue)<=0) {
	    newvalue=0;
	  }
	  else{
	    newvalue=parseInt(newvalue)-1;
	  }
	  
	  document.getElementById(aid).value=newvalue;
	}

	function giftsend(num,hiddenid,grade,showid,giftid){
	  var num=document.getElementById(num).value;
	  var all=document.getElementById(hiddenid).value;
	  var pergrade=document.getElementById(grade).value;
	  var giftnumber=parseInt(all)-parseInt(num);
	  var allgrade=parseInt(num)*parseInt(pergrade)/2;
	  if(giftnumber<0){
		  alert("你的礼物不够");
	  }else
		  {
	  $(function(){
		     $.ajax({
		    	url:"giftsend",
		    	data:"userId="+document.getElementById('userId').value+
		    	"&otherId="+document.getElementById('otherId').value+
		    	"&giftNumber="+giftnumber+
		    	"&allgrade="+allgrade+
		    	"&giftId="+document.getElementById(giftid).value,
		    	type:"GET",
		    	success:function(result){
		    		if(result==1){
		    		document.getElementById(hiddenid).value=giftnumber;
		    		document.getElementById(showid).innerHTML=parseInt(giftnumber);
		    		alert("ok");
		    		}
		    		else{
		    			alert("lost");
		    		}
		    	}
		    	
		     });	
		});
	  
	}
}
function report(){
	$(function(){
		$.ajax({
			url:"reportvideo",
			data:"videoId="+document.getElementById('videoId').value+"&userId="+document.getElementById('otherId').value,
			type:"GET",
			success:function(result){
				if(result==1){
					alert("举报成功");
				}
				else{
					alert("举报失败");
				}
			}
		});
	});
}
  </script>

</body>
</html>