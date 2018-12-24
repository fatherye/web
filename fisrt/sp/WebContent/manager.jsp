<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>manager</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
  <link rel="stylesheet" type="text/css" href="css/mystyle.css">
  <script type="text/javascript" src="js/jquery-2.2.1.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
</head>
<body>
	 <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
   

    <div class="row"> 
            <div class="col-md-12">
                   <div class="col-md-4"></div> 
                   <div class="col-sm-5"><h2><span class="label label-primary">Welcome to Our Manager</span></h2></div>
                  <div class="col-sm-3">
                       <ul class="nav nav-pills" role="tablist">
                        
                            <li role="presentation" class="active"><a >${manager.managerAccount}</a></li>
                            <li role="presentation" class="active"><a href="loginoutmanager">退出</a></li>
                          
                            
                        </ul>
                   </div>


            </div> 
    </div>
    <div class="row"> 
            <div class="col-md-12">
                  <div class="panel panel-primary">
                  <div class="panel-heading">
                      <h3 class="panel-title">version1.0</h3>

                    </div>
                  <div class="panel-body clearallp">
                  <div class="col-sm-2 clearlrp">
                      <div class="col-sm-12 clearlrp">  
                      <button class="btn btn-lg btn-primary btn-block" 
                      id="videom" value="视频管理" onclick="videom()">视频管理</button>
                      </div>

                      <div class="col-sm-12 clearlrp">
                       <button class="btn btn-lg btn-primary btn-block" 
                       id="userm" value="用户管理" onclick="userm()">用户管理</button>
                      </div>
                      <div class="col-sm-12 clearlrp">
                       <button class="btn btn-lg btn-primary btn-block" 
                       id="textm" value="话题管理" onclick="textm()">话题管理</button>
                      </div>

                     
                      <div class="col-sm-12 clearlrp">
                       <button class="btn btn-lg btn-primary btn-block" 
                       id="commentm"  value="评论管理" onclick="commentm()">评论管理</button>
                      </div>
                      <div class="col-sm-12 clearlrp">
                       <button class="btn btn-lg btn-primary btn-block" 
                       id="gift" value="礼物管理" onclick="gift()">礼物管理</button>
                      </div>
                      <div class="col-sm-12 clearlrp">
                       <button class="btn btn-lg btn-danger btn-block" 
                       id="Managerm" value="管理员管理" onclick="Managerm()">
                       管理员管理
                       </button>
                      </div>
                     
                  </div>
                  <div class="col-sm-10 clearallp">
                   <div class="panel panel-primary margin0">
                  <div class="panel-heading">
                      <h3 class="panel-title" id="head" >等待你的操作。。。。。。。。。</h3>
                         

                    </div>
                  <div  class="panel-body clearallp">
                  <div id="thebody" class="col-md-12 clearallp">
                  </div>
                  
                  <div id="pageinfo" class="col-md-6 clearallp">
                  </div>
                  
                  <div id="pagenav" class="col-md-6 clearallp">
                  </div>

                  </div>
                  </div>

                  </div>
                  </div>
            </div> 
    </div>
    </div>
<div class="onhidden">
<input id="managerroot" value="${manager.managerRoot}">
</div>  

  
<!-- 新增管理员 -->
<div class="modal fade" id="addmanagerdiv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">增加管理员</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
  <div class="form-group">
    <label  class="col-sm-2 control-label">账号</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="managerAccount" name="managerPassword" placeholder="xxxx">
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">密码</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="managerPassword" name="managerPassword" placeholder="xxxxx">
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">姓名</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="managerName" name="managerName" placeholder="张三">
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">邮箱</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="managerEmail" name="managerEmail" placeholder="Email@qq.com">
    </div>
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">电话</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="managerPhone" name="managerPhone" placeholder="12345678912">
    </div>
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">权限</label>
    <div class="col-sm-10">
     <select class="form-control" id="managerRoot" name="managerRoot">
     <option value="1">最低级</option>
     <option value="2">普通级</option>
     <option value="3">最高级</option>
     </select>
    </div>
  </div>

  
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="doaddmanager">增加</button>
      </div>
    </div>
  </div>
</div>

<!-- 编辑管理员 -->
<div class="modal fade" id="changemanagerdiv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">编辑管理员</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
  <div class="form-group">
    <label  class="col-sm-2 control-label">账号</label>
    <div class="col-sm-10">
      <p class="form-control-static" id="managerAccountc"></p>
      <input type="text" class="form-control onhidden" id="managerAccountch" name="managerAccount" >
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">姓名</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="managerNamec" name="managerName" placeholder="张三">
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">邮箱</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="managerEmailc" name="managerEmail" placeholder="Email@qq.com">
    </div>
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">电话</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="managerPhonec" name="managerPhone" placeholder="12345678912">
    </div>
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">权限</label>
    <div class="col-sm-10">
     <select class="form-control" id="managerRootc" name="managerRoot">
     <option value="1">最低级</option>
     <option value="2">普通级</option>
     <option value="3">最高级</option>
     </select>
    </div>
  </div>

</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="dochangemanager">保存</button>
      </div>
    </div>
  </div>
</div>


<!-- 新增礼物 -->
<div class="modal fade" id="addgiftdiv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">新的礼物</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
   <div class="form-group">
    <label  class="col-sm-2 control-label">名字</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="giftName" name="giftName" placeholder="张三">
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">积分</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="giftGrade" name="giftGrade" placeholder="2/4/6/8/..">
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">图片</label>
    <div class="col-sm-10">
      <input type="file"  id="giftImage" name="giftImage" >
    </div>
  </div>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="doaddgift">增加</button>
      </div>
    </div>
  </div>
</div>

<!-- 修改礼物 -->
<div class="modal fade" id="changegiftdiv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">修改礼物</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
   <div class="form-group">
    <label  class="col-sm-2 control-label">名字</label>
    <div class="col-sm-10">
    <input type="text" class="form-control onhidden" id="giftIdc" >
      <input type="text" class="form-control" id="giftNamec" name="giftName" placeholder="张三">
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">积分</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="giftGradec" name="giftGrade" placeholder="2/4/6/8/..">
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">图片</label>
    <div class="col-sm-10">
      <input type="file"  id="giftImagec" name="giftImage" >
    </div>
  </div>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="doaddgift">增加</button>
      </div>
    </div>
  </div>
</div>


    <script type="text/javascript">
var totalRecord;
function userm(){
  $("#thebody").empty();
  document.getElementById('head').innerHTML=document.getElementById('userm').value;
    $(function(){
    	findalluser(1);
    });
}
function findalluser(pn){
	$.ajax({
		url:"findalluser",
		data:"pn="+pn,
		type:"get",
		success:function(result){
			builduserlist(result);
			console.log(result);
			buildpageinfo(result);
			builduserpagenav(result);
		}
	});
}
function builduserlist(result){
	 $("#thebody").empty();
	 var  id=$("<div></div>").append("编号").addClass("col-sm-1");
	  var  account=$("<div></div>").append("账号名").addClass("col-sm-2");
	  var  name=$("<div></div>").append("真实姓名").addClass("col-sm-2");
	  var  grade=$("<div></div>").append("积分").addClass("col-sm-1");

	  var  statement=$("<div></div>").append("状态").addClass("col-sm-1");
	  var  phone=$("<div></div>").append("电话号码").addClass("col-sm-2");
	  var  email=$("<div></div>").append("邮箱").addClass("col-sm-2");
	  var  delbtn=$("<button></button>").append("停用").addClass("btn btn-xs btn-danger btn-block ");
	
	  var  buttondiv=$("<div></div>").append(delbtn).addClass("col-sm-1");
	  
	  $("<div></div>").append(id)
	  .append(account)
	  .append(name)
	  .append(grade)
	  .append(statement)
	  .append(phone)
	  .append(email)
	  .addClass("col-md-12")
	  .appendTo("#thebody");
	var user=result.list;
	$.each(user,function(index,item){
     var count=parseInt(item.userStatement);
     var count2=parseInt(9999);
		var  userid=$("<div></div>").append(item.userId).addClass("col-sm-1");
		  var  useraccount=$("<div></div>").append(item.userAccount).addClass("col-sm-2");
		  var  username=$("<div></div>").append(item.userName).addClass("col-sm-2");
		  var  usergrade=$("<div></div>").append(item.userGrade).addClass("col-sm-1");
		  if(count==0){
			  var  userstatement=$("<div></div>").append("良好").addClass("col-sm-1");
		  }else if(count<20){
			  var  userstatement=$("<div></div>").append("警告").addClass("col-sm-1");
		  }else if(count>9999){
			  var  userstatement=$("<div></div>").append("已停用").addClass("col-sm-1");
		  }
		  else{
			  var  userstatement=$("<div></div>").append("严重").addClass("col-sm-1");
		  }
		  
		  
		  var  userphone=$("<div></div>").append(item.userPhone).addClass("col-sm-2");
		  var  useremail=$("<div></div>").append(item.userEmail).addClass("col-sm-2");
		  var  delbtn=$("<button></button>").append("停用").addClass("btn btn-xs btn-danger btn-block mstopuser");
		  delbtn.attr("userid",item.userId);
		  var  upbtn=$("<button></button>").append("激活").addClass("btn btn-xs btn-success btn-block mupuser");
		  upbtn.attr("userid",item.userId);
		  if(count>=count2){
			  var  buttondiv=$("<div></div>").append(upbtn).addClass("col-sm-1");
		  }else{
		  var  buttondiv=$("<div></div>").append(delbtn).addClass("col-sm-1");
		  }
		  $("<div></div>").append(userid)
		  .append(useraccount)
		  .append(username)
		  .append(usergrade)
		  .append(userstatement)
		  .append(userphone)
		  .append(useremail)
		  .append(buttondiv)
		  .addClass("col-md-12")
		  .appendTo("#thebody");
	});
}
function builduserpagenav(result){
	$("#pagenav").empty();
	var ul=$("<ul></ul>").addClass("pagination");
	var perpage=$("<li></li>").append($("<a></a>").append("&laquo;").attr("href","#"));
	if(result.hasPreviousPage==false){
		perpage.addClass("disabled");
	}
	ul.append(perpage);
	var nextpage=$("<li></li>").append($("<a></a>").append("&raquo;").attr("href","#"));
	$.each(result.navigatepageNums,function(index,item){
		
		var numli=$("<li></li>").append($("<a></a>").append(item));
		if(result.pageNum==item){
			numli.addClass("active");
		}
		numli.click(function(){
			findalluser(item);
		})
		ul.append(numli);
	});
	if(result.hasNextPage==false){
		nextpage.addClass("disabled");
	}
	ul.append(nextpage);
	var nav=$("<nav></nav>").append(ul);
	nav.appendTo("#pagenav");
}












function commentm(){
	  $("#thebody").empty();
	  document.getElementById('head').innerHTML=document.getElementById('commentm').value;
	  $(function(){
		  findallcomment(1);
	  });
}
function findallcomment(pn){
	$.ajax({
		url:"findallcomment",
		data:"pn="+pn,
		type:"get",
		success:function(result){
			console.log(result);
			buildcommentlist(result);
			buildpageinfo(result);
			buildcommentpagenav(result);
		}
	});
}
function buildcommentlist(result){
	 $("#thebody").empty();
	 
	 var  id=$("<div></div>").append("编号").addClass("col-sm-1");
	  var  account=$("<div></div>").append("用户名").addClass("col-sm-2");
	  
	  var  statement=$("<div></div>").append("状态").addClass("col-sm-2");
	  var kong=$("<div></div>").addClass("col-sm-7");
	  $("<div></div>").append(id)
	  .append(account)
	  .append(statement)
	  .append(kong)
	  .addClass("col-md-12")
	  .appendTo("#thebody");
	  var comment=result.list;
	  $.each(comment,function(index,item){
		  
			var  commentid=$("<div></div>").append(item.commentId).addClass("col-sm-1");
			  var  useraccount=$("<div></div>").append(item.userWithBLOBs.userAccount).addClass("col-sm-2");
			  var  commentstatement=$("<div></div>").append(item.commentStatement+"次举报").addClass("col-sm-2");
			  var  delbtn=$("<button></button>").append("删除").addClass("btn btn-xs btn-danger btn-block mcommentdele");
			  var  buttondiv=$("<div></div>").append(delbtn).addClass("col-sm-1");
			  delbtn.attr("commentid",item.commentId);
			  var  kong2=$("<div></div>").addClass("col-sm-6");
			  $("<div></div>").append(commentid)
			  .append(useraccount)
			  .append(commentstatement)
			  .append(buttondiv)
			  .append(kong2)
			  .addClass("col-md-12")
			  .appendTo("#thebody");
		});	 
}
function buildcommentpagenav(result){
	$("#pagenav").empty();
	var ul=$("<ul></ul>").addClass("pagination");
	var perpage=$("<li></li>").append($("<a></a>").append("&laquo;").attr("href","#"));
	if(result.hasPreviousPage==false){
		perpage.addClass("disabled");
	}
	ul.append(perpage);
	var nextpage=$("<li></li>").append($("<a></a>").append("&raquo;").attr("href","#"));
	$.each(result.navigatepageNums,function(index,item){
		
		var numli=$("<li></li>").append($("<a></a>").append(item));
		if(result.pageNum==item){
			numli.addClass("active");
		}
		numli.click(function(){
			findallcomment(item);
		})
		ul.append(numli);
	});
	if(result.hasNextPage==false){
		nextpage.addClass("disabled");
	}
	ul.append(nextpage);
	var nav=$("<nav></nav>").append(ul);
	nav.appendTo("#pagenav");
}





function videom(){
	  $("#thebody").empty();
	  document.getElementById('head').innerHTML=document.getElementById('videom').value;
	  $(function(){
		  findallvideo(1);
	  });
	}
function findallvideo(pn){
	$.ajax({
		url:"findallvideo",
		data:"pn="+pn,
		type:"get",
		success:function(result){
			
			console.log(result);
			buildvideolist(result);
			buildpageinfo(result);
			buildvideopagenav(result);
		}
	});
}
function buildvideolist(result){
	 $("#thebody").empty();
	  var  id=$("<div></div>").append("编号").addClass("col-sm-1 clearlrp");
	  var  name=$("<div></div>").append("视频名称").addClass("col-sm-2 clearlrp");
	  var  count=$("<div></div>").append("点击数").addClass("col-sm-1 clearlrp");
	  var  url=$("<div></div>").append("视频路径").addClass("col-sm-4 clearlrp");
	  var  kind=$("<div></div>").append("种类").addClass("col-sm-2 clearlrp");
	  var  statement=$("<div></div>").append("状态").addClass("col-sm-1 clearlrp");
	  var  delbtn=$("<button></button>").append("删除").addClass("btn btn-xs btn-danger btn-block ");
	  
	  var  buttondiv=$("<div></div>").append(delbtn).addClass("col-sm-1 clearlrp");
	  $("<div></div>").append(id)
	  .append(name)
	  .append(url)
	  .append(count)
	  .append(kind)
	  .append(statement)
	  .addClass("col-md-12 clearallp")
	  .appendTo("#thebody");
	  var video=result.list;
	  $.each(video,function(index,item){
		  var  videoid=$("<div></div>").append(item.videoId).addClass("col-sm-1 clearlrp");
		  var  videoname=$("<div></div>").append(item.videoName).addClass("col-sm-2 clearlrp");
		  var  videocount=$("<div></div>").append(item.videoCount).addClass("col-sm-1 clearlrp");
		  var  videourl=$("<div></div>").append(item.videoUrl).addClass("col-sm-4 clearlrp");
		  var  videokind=$("<div></div>").append(item.videokind.videokindName).addClass("col-sm-2 clearlrp");
		  var  videostatement=$("<div></div>").append(item.videoStatement+"次举报").addClass("col-sm-1 clearlrp");
		  var  delbtn=$("<button></button>").append("删除").addClass("btn btn-xs btn-danger btn-block mvideodele");
		  delbtn.attr("videoid",item.videoId);
		  var  buttondiv=$("<div></div>").append(delbtn).addClass("col-sm-1 clearlrp");
			  $("<div></div>").append(videoid)
			  .append(videoname)
			  .append(videourl)
			  .append(videocount)
			  .append(videokind)
			  .append(videostatement)
			  .append(buttondiv)
			  .addClass("col-md-12 clearallp")
			  .appendTo("#thebody");
		});  
}
function buildvideopagenav(result){
	$("#pagenav").empty();
	var ul=$("<ul></ul>").addClass("pagination");
	var perpage=$("<li></li>").append($("<a></a>").append("&laquo;").attr("href","#"));
	if(result.hasPreviousPage==false){
		perpage.addClass("disabled");
	}
	ul.append(perpage);
	var nextpage=$("<li></li>").append($("<a></a>").append("&raquo;").attr("href","#"));
	$.each(result.navigatepageNums,function(index,item){
		
		var numli=$("<li></li>").append($("<a></a>").append(item));
		if(result.pageNum==item){
			numli.addClass("active");
		}
		numli.click(function(){
			findallvideo(item);
		})
		ul.append(numli);
	});
	if(result.hasNextPage==false){
		nextpage.addClass("disabled");
	}
	ul.append(nextpage);
	var nav=$("<nav></nav>").append(ul);
	nav.appendTo("#pagenav");
}


	
	
	
	
function textm(){
	  $("#thebody").empty();
	  document.getElementById('head').innerHTML=document.getElementById('textm').value;
	  $(function(){
		  findalltext(1);
	  });
	}
function findalltext(pn){
	$.ajax({
		url:"findalltext",
		data:"pn="+pn,
		type:"get",
		success:function(result){
			
			console.log(result);
			buildtextlist(result);
			buildpageinfo(result);
			buildtextpagenav(result);
		}
	});
}
function buildtextlist(result){
	  var  id=$("<div></div>").append("编号").addClass("col-sm-1");
	  var  head=$("<div></div>").append("标题").addClass("col-sm-8");
	  var  count=$("<div></div>").append("点击数").addClass("col-sm-1");
	  var  statement=$("<div></div>").append("状态").addClass("col-sm-1");
	  var  delbtn=$("<button></button>").append("删除").addClass("btn btn-xs btn-danger btn-block textdele");
	  var  buttondiv=$("<div></div>").append(delbtn).addClass("col-sm-1");
	  $("<div></div>").append(id)
	  .append(head)
	  .append(count)
	  .append(statement)
	  .addClass("col-md-12")
	  .appendTo("#thebody");
	  var text=result.list;
	  $.each(text,function(index,item){
		  var  textid=$("<div></div>").append(item.textId).addClass("col-sm-1");
		  var  texthead=$("<div></div>").append(item.textHead).addClass("col-sm-8");
		  var  textcount=$("<div></div>").append(item.textCount).addClass("col-sm-1");
		  var  textstatement=$("<div></div>").append(item.textStatement+"次举报").addClass("col-sm-1");
		  var  delbtn=$("<button></button>").append("删除").addClass("btn btn-xs btn-danger btn-block videodel");
		  var  buttondiv=$("<div></div>").append(delbtn).addClass("col-sm-1");
			  $("<div></div>").append(textid)
			  .append(texthead)
			  .append(textcount)
			  .append(textstatement)
			  .append(buttondiv)
			  .addClass("col-md-12")
			  .appendTo("#thebody");
		});
}
function buildtextpagenav(result){
	$("#pagenav").empty();
	var ul=$("<ul></ul>").addClass("pagination");
	var perpage=$("<li></li>").append($("<a></a>").append("&laquo;").attr("href","#"));
	if(result.hasPreviousPage==false){
		perpage.addClass("disabled");
	}
	ul.append(perpage);
	var nextpage=$("<li></li>").append($("<a></a>").append("&raquo;").attr("href","#"));
	$.each(result.navigatepageNums,function(index,item){
		
		var numli=$("<li></li>").append($("<a></a>").append(item));
		if(result.pageNum==item){
			numli.addClass("active");
		}
		numli.click(function(){
			findalltext(item);
		})
		ul.append(numli);
	});
	if(result.hasNextPage==false){
		nextpage.addClass("disabled");
	}
	ul.append(nextpage);
	var nav=$("<nav></nav>").append(ul);
	nav.appendTo("#pagenav");
}



	
	
function Managerm(){
	  $("#thebody").empty();
	  document.getElementById('head').innerHTML=document.getElementById('Managerm').value;
	  $(function(){
		  findallmanager(1);
	  });
}
function findallmanager(pn){
	$.ajax({
		url:"findallmanager",
		data:"pn="+pn,
		type:"get",
		success:function(result){
			console.log(result);
			buildmanagerlist(result);
			buildpageinfo(result);
			buildmanagerpagenav(result);
		}
	});
}
function buildmanagerlist(result){
	 var  id=$("<div></div>").append("编号").addClass("col-sm-1");
	  var  account=$("<div></div>").append("账号名").addClass("col-sm-2");
	  var  name=$("<div></div>").append("真实姓名").addClass("col-sm-2");
	  var  level=$("<div></div>").append("权限").addClass("col-sm-1");
	  var  phone=$("<div></div>").append("电话号码").addClass("col-sm-2");
	  var  email=$("<div></div>").append("邮箱").addClass("col-sm-2");
	  var  addbtn=$("<button></button>").append("新增").addClass("btn btn-sm btn-success btn-block addmanager");
	  var  buttondiv=$("<div></div>").append(addbtn).addClass("col-sm-2 clearlrp");
	  $("<div></div>").append(id)
	  .append(account)
	  .append(name)
	  .append(level)
	  .append(phone)
	  .append(email)
	  .append(buttondiv)
	  .addClass("col-md-12")
	  .appendTo("#thebody");
	  var manager=result.list;
	  $.each(manager,function(index,item){
			var  managerid=$("<div></div>").append(item.managerId).addClass("col-sm-1");
			var  manageraccount=$("<div></div>").append(item.managerAccount).addClass("col-sm-2");
			var  managername=$("<div></div>").append(item.managerName).addClass("col-sm-2");
			var  managerlevel=$("<div></div>").append(item.managerRoot).addClass("col-sm-1");
			var  managerphone=$("<div></div>").append(item.managerPhone).addClass("col-sm-2");
			var  manageremail=$("<div></div>").append(item.managerEmail).addClass("col-sm-2");
			var  delbtn=$("<button></button>").append("删除").addClass("btn btn-xs btn-danger btn-block mmanagerdele");
			delbtn.attr("managerid",item.managerId);
			var  chabtn=$("<button></button>").append("编辑").addClass("btn btn-xs btn-primary btn-block mmanagerchange");
			chabtn.attr("manageridc",item.managerId);
			var  buttondiv=$("<div></div>").append(delbtn).addClass("col-sm-1 clearlrp");
			var  buttondiv2=$("<div></div>").append(chabtn).addClass("col-sm-1 clearlrp");
			  $("<div></div>").append(managerid)
			  .append(manageraccount)
			  .append(managername)
			  .append(managerlevel)
			  .append(managerphone)
			  .append(manageremail)
			  .append(buttondiv)
			  .append(buttondiv2)
			  .addClass("col-md-12")
			  .appendTo("#thebody");
		});

}
function buildmanagerpagenav(result){
	$("#pagenav").empty();
	var ul=$("<ul></ul>").addClass("pagination");
	var perpage=$("<li></li>").append($("<a></a>").append("&laquo;").attr("href","#"));
	if(result.hasPreviousPage==false){
		perpage.addClass("disabled");
	}
	ul.append(perpage);
	var nextpage=$("<li></li>").append($("<a></a>").append("&raquo;").attr("href","#"));
	$.each(result.navigatepageNums,function(index,item){
		
		var numli=$("<li></li>").append($("<a></a>").append(item));
		if(result.pageNum==item){
			numli.addClass("active");
		}
		numli.click(function(){
			findallmanager(item);
		})
		ul.append(numli);
	});
	if(result.hasNextPage==false){
		nextpage.addClass("disabled");
	}
	ul.append(nextpage);
	var nav=$("<nav></nav>").append(ul);
	nav.appendTo("#pagenav");
}




function gift(){
  $("#thebody").empty();
  document.getElementById('head').innerHTML=document.getElementById('gift').value;
  $(function(){
	  findallgift(1);
  });
}
function findallgift(pn){
	$.ajax({
		url:"findallgift",
		data:"pn="+pn,
		type:"get",
		success:function(result){
			buildgiftlist(result);
			console.log(result);
			buildpageinfo(result);
			buildgiftpagenav(result);
		}
	});
}
function buildgiftlist(result){
	 $("#thebody").empty();
	  var  id=$("<div></div>").append("编号").addClass("col-sm-1");
	  var  name=$("<div></div>").append("名称").addClass("col-sm-2");
	  var  imageurl=$("<div></div>").append("图片路径").addClass("col-sm-4");
	  var  grade=$("<div></div>").append("积分").addClass("col-sm-1");
	 
	  var  addbtn=$("<button></button>").append("新增").addClass("btn btn-xs btn-success btn-block addgift");
	
	  var  addbtndiv=$("<div></div>").append(addbtn).addClass("col-sm-1");
	  var kong=$("<div></div>").addClass("col-sm-3");
	  $("<div></div>").append(id)
	  .append(name)
	  .append(imageurl)
	  .append(grade)
	  .append(addbtndiv)
	  .append(kong)
	  .addClass("col-md-12")
	  .appendTo("#thebody");
	  var gift=result.list;
	  $.each(gift,function(index,item){
		  var  giftid=$("<div></div>").append(item.giftId).addClass("col-sm-1");
		  var  giftname=$("<div></div>").append(item.giftName).addClass("col-sm-2");
		  var  giftimageurl=$("<div></div>").append(item.giftImage).addClass("col-sm-4");
		  var  giftgrade=$("<div></div>").append(item.giftGrade).addClass("col-sm-1");
		  //var  changebtn=$("<button></button>").append("修改").addClass("btn btn-xs btn-danger btn-block mgiftchange");
		  //changebtn.attr("giftidc",item.giftId);
		  //var  changebtndiv=$("<div></div>").append(changebtn).addClass("col-sm-1");
		  var kong=$("<div></div>").addClass("col-sm-2");
			  $("<div></div>").append(giftid)
			  .append(giftname)
			  .append(giftimageurl)
			  .append(giftgrade)
			  
			  .append(kong)
			  .addClass("col-md-12")
			  .appendTo("#thebody");
		});	 
}
function buildgiftpagenav(result){
	$("#pagenav").empty();
	var ul=$("<ul></ul>").addClass("pagination");
	var perpage=$("<li></li>").append($("<a></a>").append("&laquo;").attr("href","#"));
	if(result.hasPreviousPage==false){
		perpage.addClass("disabled");
	}
	ul.append(perpage);
	var nextpage=$("<li></li>").append($("<a></a>").append("&raquo;").attr("href","#"));
	$.each(result.navigatepageNums,function(index,item){
		
		var numli=$("<li></li>").append($("<a></a>").append(item));
		if(result.pageNum==item){
			numli.addClass("active");
		}
		numli.click(function(){
			findallgift(item);
		})
		ul.append(numli);
	});
	if(result.hasNextPage==false){
		nextpage.addClass("disabled");
	}
	ul.append(nextpage);
	var nav=$("<nav></nav>").append(ul);
	nav.appendTo("#pagenav");
}






























function buildpageinfo(result){
	$("#pageinfo").empty();
	$("#pageinfo").append("当前"+result.pageNum+"页，总"+result.pages+"页，"+result.total+"条记录");
	totalRecord=result.total;
}




$(document).on("click",".mstopuser",function(){
	var userid=$(this).attr("userid");
	$.ajax({
		url:"mstopuser",
		data:"userId="+userid,
		type:"get",
		success:function(result){
			if(result==1){
				alert("用户已停用");
				userm();
			}
		}
  });
});

$(document).on("click",".mupuser",function(){
	var userid=$(this).attr("userid");
	$.ajax({
		url:"mupuser",
		data:"userId="+userid,
		type:"get",
		success:function(result){
			if(result==1){
				alert("用户已激活");
				userm();
			}
		}
  });
});


$(document).on("click",".mvideodele",function(){
	var videoid=$(this).attr("videoid");
	$.ajax({
		url:"mvideodele",
		data:"videoId="+videoid,
		type:"get",
		success:function(result){
			if(result==1){
				alert("删除成功");
				videom();
			}else if(result==0){
				alert("删除失败");
			}
			else{
				alert("未知错误");
			}
		}
  });
})



$(document).on("click",".mcommentdele",function(){
	var commentid=$(this).attr("commentid");
	$.ajax({
		url:"mcommentdele",
		data:"commentId="+commentid,
		type:"get",
		success:function(result){
			if(result==1){
				alert("删除成功");
				commentm();
			}else if(result==0){
				alert("删除失败");
			}
			else{
				alert("未知错误");
			}
		}
	});
});


$(document).on("click",".mtextdele",function(){
	var commentid=$(this).attr("textid");
	$.ajax({
		url:"mtextdele",
		data:"textId="+commentid,
		type:"get",
		success:function(result){
			if(result==1){
				alert("删除成功");
				textm();
			}else if(result==0){
				alert("删除失败");
			}
			else{
				alert("未知错误");
			}
		}
	});
});

$(document).on("click",".mmanagerdele",function(){
	var managerid=$(this).attr("managerid");
	$.ajax({
		url:"mmanagerdele",
		data:"managerId="+managerid,
		type:"get",
		success:function(result){
			if(result==1){
				alert("删除成功");
				Managerm();
			}else if(result==0){
				alert("删除失败");
			}
			else{
				alert("未知错误");
			}
		}
	});
});

//$(document).on("click",".mgiftchange",function(){
//	var id=$(this).attr("giftidc");
//	getgift(id);
//	$("#changemanagerdiv").modal({
//		backdrop:"static"
//	});
//});
//function getgift(id){
//	$.ajax({
//		url:"findagift",
//		type:"get",
//		data:"giftId="+id,
//		success:function(result){
//			
//			$("#giftNamec").val(result.giftName);
//			$("#giftGradec").val(result.giftGrade);
//			$("#giftImagec").val(result.giftImage);
//			
//		}
//	});
	
//}



$(document).on("click",".mmanagerchange",function(){
	var id=$(this).attr("manageridc");
	getmanager(id);
	$("#changemanagerdiv").modal({
		backdrop:"static"
	});
});

function getmanager(id){
	$.ajax({
		url:"findamanager",
		type:"get",
		data:"managerId="+id,
		success:function(result){
			//console.log(result);
			
			$("#managerAccountc").text(result.managerAccount);
			$("#managerAccountch").val(result.managerAccount);
			$("#managerNamec").val(result.managerName);
			$("#managerPhonec").val(result.managerPhone);
			$("#managerEmailc").val(result.managerEmail);
			$("#managerRootc ").val(result.managerRoot);
			
		}
	});
}


$(document).on("click",".addmanager",function(){
	
	$("#addmanagerdiv").modal({
		backdrop:"static"
	});
});

$(document).on("click",".addgift",function(){
	
	$("#addgiftdiv").modal({
		backdrop:"static"
	});
});


$('#doaddmanager').click(function(){
	var managerAccount=document.getElementById('managerAccount').value;
	var managerName=document.getElementById('managerName').value;
	var managerPassword=document.getElementById('managerPassword').value;
	var managerEmail=document.getElementById('managerEmail').value;
	var managerPhone=document.getElementById('managerPhone').value;
	var managerRoot=document.getElementById('managerRoot').value;
	var root=document.getElementById('managerroot').value;
	
	if(parseInt(root)<parseInt(3)){
		alert("你的权限不够");
	}else{
	$.ajax({
		url:"addmanager",
		data:"managerAccount="+managerAccount+
		"&managerName="+managerName+
		"&managerPassword="+managerPassword+
		"&managerEmail="+managerEmail+
		"&managerPhone="+managerPhone+
		"&managerRoot="+managerRoot
		,
		type:"POST",
		success:function(result){
			if(result==1){
				alert("添加成功");
				$("#addmanagerdiv").modal('hide');
				Managerm();
				
			}else{
				alert("添加失败");
				$("#addmanagerdiv").modal('hide');
			}
		}
	});
	}
});



$('#doaddgift').click(function(){
	
	var root=document.getElementById('managerroot').value;
	
	var giftName=document.getElementById('giftName').value;
	var giftGrade=document.getElementById('giftGrade').value;
	var giftImage=document.getElementById('giftImage').files[0];
	
	var fd=new FormData();
	fd.append("giftName",giftName);
	fd.append("giftGrade",giftGrade);
	fd.append("file",giftImage);
	
	
	
	if(parseInt(root)<parseInt(2)){
		alert("你的权限不够");
	}else{
		
	$.ajax({
		url:"addgift",
		type:"POST",
		data:fd,
		processData:false,
        contentType:false,
		success:function(result){
			if(result==1){
				alert("添加成功");
				$("#addgiftdiv").modal('hide');
				gift();
				
			}else{
				alert("添加失败");
				$("#addgiftdiv").modal('hide');
			}
		}
	});
	}
});



$('#dochangemanager').click(function(){
var root=document.getElementById('managerroot').value;
var managerName=document.getElementById('managerNamec').value;

var managerAccount=document.getElementById('managerAccountch').value;

var managerEmail=document.getElementById('managerEmailc').value;
var managerPhone=document.getElementById('managerPhonec').value;
var managerRoot=document.getElementById('managerRootc').value;
	
	if(parseInt(root)<parseInt(3)){
		alert("你的权限不够");
	}else{
		$.ajax({
			url:"changemanager",
			type:"post",
			data:"managerAccount="+managerAccount+
			"&managerName="+managerName+
			"&managerEmail="+managerEmail+
			"&managerPhone="+managerPhone+
			"&managerRoot="+managerRoot
			,
			success:function(result){
				if(result==1){
					alert("保存成功");
					$("#changemanagerdiv").modal('hide');
					Managerm();
				}
				else if(result==0){
					alert("保持失败");
					$("#changemanagerdiv").modal('hide');
				}
				else{
					alert("未知错误");
					$("#changemanagerdiv").modal('hide');
				}
			}
		});
	}
});
   </script>
</body>
</html>