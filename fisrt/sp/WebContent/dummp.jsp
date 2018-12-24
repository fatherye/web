<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>comment</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
  <link rel="stylesheet" type="text/css" href="css/mystyle.css">
  <script type="text/javascript" src="js/jquery-2.2.1.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
</head>
<script type="text/javascript">
     var websocket = null;
     //判断当前浏览器是否支持WebSocket
     if ('WebSocket' in window) {
         websocket = new WebSocket("ws://localhost:8080/sp/dummpsent");
     }
     else {
        alert('当前浏览器 Not support websocket')
     }
 
     //连接发生错误的回调方法
     websocket.onerror = function () {
         setMessageInnerHTML("WebSocket连接发生错误");
     };
 
     //连接成功建立的回调方法
     websocket.onopen = function () {
         setMessageInnerHTML("WebSocket连接成功");
    }
 
     //接收到消息的回调方法
     websocket.onmessage = function (event) {
         setMessageInnerHTML(event.data);
     }
 
     //连接关闭的回调方法
     websocket.onclose = function () {
        setMessageInnerHTML("WebSocket连接关闭");
     }
 
     //监听窗口关闭事件，当窗口关闭时，主动去关闭websocket连接，防止连接还没断开就关闭窗，server端会抛异常。
    window.onbeforeunload = function () {
         closeWebSocket();
    }
 
     //将消息显示在网页上
     function setMessageInnerHTML(innerHTML) {
         document.getElementById('message').innerHTML += innerHTML + '<br/>';
    }
 
     //关闭WebSocket连接
     function closeWebSocket() {
         websocket.close();
    }
 
     //发送消息
    function send() {
       var message = document.getElementById('text').value;
        websocket.send(message);
    }
 </script>
<body>
<!--<c:forEach items="${dummplist}" var="danmu">
	<div class="col-md-12">
	    <span>${danmu.user.userAccount}:</span><span>${danmu.dummpText}</span>
	</div>
</c:forEach>
-->

<input id="videoId" class="onhidden" type="text" value="${vi}">
<div class="col-md-12" id="dummp">
	    
</div>
<script type="text/javascript">
$(function(){
	$("#dummp").empty();
     $.ajax({
    	url:"dummpshow",
    	data:"videoId="+document.getElementById('videoId').value,
    	type:"GET",
    	success:function(result){
    		console.log(result);
    		 build_dummplist(result);
    		 
    	}
    	
     });	
});






function build_dummplist(result){
	$.each(result,function(index,item){
		
		 var color=parseInt(4*Math.random());
		 if(color==0){
			 var useraccount=$("<span></span>").append(item.user.userAccount).addClass("label label-primary");
			 var dummptext=$("<span></span>").append(item.dummpText).addClass("label label-default");
		 }else if(color==1){
			 var useraccount=$("<span></span>").append(item.user.userAccount).addClass("label label-default");
			 var dummptext=$("<span></span>").append(item.dummpText).addClass("label label-success");
		 }else if(color==2){
			 var useraccount=$("<span></span>").append(item.user.userAccount).addClass("label label-success");
			 var dummptext=$("<span></span>").append(item.dummpText).addClass("label label-danger");
		 }
		 else if(color==3){
			 var useraccount=$("<span></span>").append(item.user.userAccount).addClass("label label-danger");
			 var dummptext=$("<span></span>").append(item.dummpText).addClass("label label-warning");
		 }else{
			 var useraccount=$("<span></span>").append(item.user.userAccount).addClass("label label-warning");
			 var dummptext=$("<span></span>").append(item.dummpText).addClass("label label-primary");
		 }
		
		 
		 $("<p></p>").append(useraccount)
		 .append(":")
		 .append(dummptext)
		 .appendTo("#dummp");
	});
	
}

</script>
</body>
</html>