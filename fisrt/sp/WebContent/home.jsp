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
	<title>sss</title>
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
    <!-- <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
  
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img src="image/firstwed.png" alt="First slide">
            <!-- <img data-src="/image/firstwed.png/1140x500/auto/#777:#555/text:First slide" alt="First slide"> -->
          </div>
          <div class="item">
            <img src="image/secondwed.png" alt="Second slide">
            <!--  <img data-src="image/secondwed.png/1140x500/auto/#666:#444/text:Second slide" alt="Second slide"> -->
          </div>
          <div class="item">
            <img src="image/thirdwed.png" alt="Third slide">
            <!-- <img data-src="image/thirdwed.png/1140x500/auto/#555:#333/text:Third slide" alt="Third slide"> -->
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>


<br>
     <div class="row">
           <div class="col-md-9">
               <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">最新事件</h3>

                    </div>
                <div class="panel-body">
                    
                    <c:forEach var="hvn" items="${videonewlist}" >
                        <div class="col-md-3 clearlrp">
                        <div class="col-sm-12 ">
                        <img src="${hvn.videoImage}" class="imgcss" >
                        </div>
                        <div class="col-sm-12 textcenter">
                        <h6>${hvn.videoName }</h6>
                        </div>
                        
                        <div class="col-sm-12 clearlrp">
                        <div class="col-sm-5 "><h6>点击数：${hvn.videoCount}</h6></div>
                        <div class="col-sm-7 clearlrp"><h6>分类:${hvn.videokind.videokindName}</h6></div>
                        </div>
                        </div>
                        
                        </c:forEach>
                    
                </div>
                </div>
           </div> 
           <div class="col-md-3">
               <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">排行榜</h3>

                    </div>
                <div class="panel-body clearlrp paihangban">
                <c:forEach var="hvh" items="${videohotlist}"  varStatus="status">
                <div class="col-sm-12 addpadb10 fontsizepxb">                
                             <span class="label label-danger">${status.count}</span>
                             <a href="#">${hvh.videoName}</a>       
                      </div>
                      <br>
                </c:forEach>
                     
                      
                    
                </div>
                </div>
           </div>   

      </div>


      

      <br>
    
      <div class="row">
           <div class="col-md-9">
               <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">学霸推荐</h3>

                    </div>
                <div class="panel-body">
                    
                    
                        <c:forEach var="lr" items="${videolearnrandlist}" >
                        <div class="col-md-3 clearlrp">
                        <div class="col-sm-12 ">
                        <img src="${lr.videoImage}" class="imgcss" >
                        </div>
                        <div class="col-sm-12 textcenter">
                        <h6>${lr.videoName }</h6>
                        </div>
                        
                        <div class="col-sm-12 clearlrp">
                        <div class="col-sm-5 "><h6>点击数：${lr.videoCount}</h6></div>
                        <div class="col-sm-7 clearlrp"><h6>作者:${lr.userWithBLOBs.userAccount}</h6></div>
                        </div>
                        </div>
                   
                        </c:forEach>
                    
                </div>
                </div>
           </div> 


           <div class="col-md-3">
               <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">排行榜</h3>

                    </div>
                <div class="panel-body clearlrp paihangban">
                <c:forEach var="lrh" items="${videolearnhotlist}" varStatus="status">
                <div class="col-sm-12 addpadb10 fontsizepxb">                
                             <span class="label label-danger">${status.count}</span>
                             <a href="#">${lrh.videoName}</a>       
                </div>
                <br>
                </c:forEach>
                    
                </div>
                </div>
           </div>   

      </div>
      
      
      
      
 <div class="col-md-12">
 <div class="hfooter">
			<p> <a >网站简介</a><i>|</i>
				<a >网站公告</a><i>|</i>
				<a >招纳贤士</a><i>|</i>
				<a >联系我们</a><i>|</i>
				<a  data-toggle="modal" data-target="#managerlogin">管理员登陆</a><i>|</i>
				客服热线：18707443797
			</p>
			<p>
				Copyright&copy;&nbsp;&nbsp;蝶影氏族SA0000000号&nbsp;&nbsp;&nbsp;夜魔氏族B400000001号&nbsp;&nbsp;&nbsp;   
			</p>
			
		</div>
 
 </div>     
 
 <div class="modal fade" id="managerlogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
          &times;
        </button>
        <h4 class="modal-title" id="myModalLabel">
        管理员登陆
        </h4>
      </div>
      <div class="modal-body">
      
            请输入你的登陆信息
      </div>
      <div class="modal-footer">
      <form action="domanagerlogin" method="post">
      <div class="col-md-12 margin10">
      <div class="col-md-2">
      <span>账号名：</span>
      </div>
      <div class="col-md-10">
      <input class="width100" type="text" name="managerAccount">
      </div>
      
      </div>
      <div class="col-md-12 margin10">
      <div class="col-md-2">
       <span>密码：</span>
      </div>
      <div class="col-md-10">
      <input class="width100 " type="password" name="managerPassword">
      </div>
      
      </div>
      <div class="col-md-12 margin10">
      <div class="col-md-2"></div>
      <div class="col-md-4 "> 
      <button class="btn btn-default onleft" type="submit" >提交</button>
      </div>
      <div class="col-md-6"></div>
      </div>
      
    
      
      
</form>
        <button type="button" class="btn btn-default" data-dismiss="modal" >关闭
        </button>
   
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal -->
</div>
</body>
</html>