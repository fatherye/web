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
	<title>textcontent</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
  <link rel="stylesheet" type="text/css" href="css/mystyle.css">
  <script type="text/javascript" src="js/jquery-2.2.1.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
</head>
<body>
	<!-- 
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <div class="row">
         <div class="col-md-12">
              <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">标题1</h3>

                    </div>
                    <div class="panel-body">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                               <div class="col-sm-12">
                                <div class="jumbotron">
                                      <h1>标题一</h1>
                                      <p class="lead">有意i打折的觉得撒娇的卡手机卡浪费阿斯顿；爱神的箭；啊手机发的卡；上飞机阿三；觉得；啊数据副卡杀伤力金卡刷机阿斯兰；到喀什角动量就公开拉升打开拉萨解放咯数据库里的gals看到拉萨看到啦看到啦感觉啊老是打击看见个卡数量贷款啊斯洛伐克拉萨扩大了；啊开发了看到了咯股价拉升看见咯 ask到了阿克苏；来打卡时代卡死了看；了卡洛斯看到了啊开始了的卡拉克斯的啦上课了估计；拉丝机啊打开啦快乐打卡阿里；矢口抵赖；卡绿卡了撒大</p>
                                      <p><a class="btn btn-lg btn-danger" href="#" role="button">举报</a></p>
                                 </div>
                               </div>
                               <div class="col-sm-12">
                               <form action="" method=""> 
                                   <div class="col-sm-9"><input class="dandan" type="text" name="dandan"></div>
                                   <div class="col-sm-3"><button>发送</button></div>
                               </form>
                               </div>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
              </div>
         </div>
    </div>   -->



    <div class="col-md-9 clearlrp">
          <div class="panel panel-primary">
          <div class="panel-heading">
              <h3 class="panel-title">${VC.textHead}</h3>
          </div>
          <div class="panel-body">
          <input class="onhidden" id="t${VC.textId}" value="${VC.textId}">
                 <div class="col-md-12 margin10">
                 <div class="col-md-2"> 
                     <div class="col-sm-12"><img src="${VC.userWithBLOBs.userImage}" class="image5050"></div>
                     <div class="col-sm-12">${VC.userWithBLOBs.userAccount}</div>
                 </div>
                 <div class="col-md-10">
                     <div class="col-sm-12">
                     <div class="textlfet">
                     <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${VC.textContext}
                     </p>
                     </div>
                     </div>
                     <div class="col-sm-12">
                     <div class="col-sm-10"></div>
                     <div class="col-sm-1 clearlrp"><button class="btn btn-sm btn-danger btn-block" onclick="reporttext('t${VC.textId}')">举报</button></div>

                     </div>
                 </div>

                 </div>
                 
                 <c:forEach items="${commentlist.list}" var="cl">
                  <div class="col-md-12 margin10">
                 <div class="col-md-2"> 
                     <div class="col-sm-12"><img src="${cl.userWithBLOBs.userImage}" class="image5050"></div>
                     <div class="col-sm-12">${cl.userWithBLOBs.userAccount}</div>
                 </div>
                 <div class="col-md-10">
                     <div class="col-sm-12">
                     <div class="textlfet">
                     <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cl.commentContext}
                     </p>
                     </div>
                     </div>
                     <div class="col-sm-12">
                     <div class="col-sm-10"></div>
                     <div class="col-sm-1 clearlrp">
                     <c:if test="${user.userId!=cl.userId }"><a href="reportcomment?commentId=${ cl.commentId}&textId=${VC.textId}"><button  class="btn btn-sm btn-danger btn-block" >举报</button></a></c:if>
                      <c:if test="${user.userId==cl.userId }"><a href="deletecomment?commentId=${ cl.commentId}&textId=${VC.textId}"><button   class="btn btn-sm btn-danger btn-block" >删除</button></a></c:if></div>

                     </div>
                 </div>

                 </div>
                 </c:forEach>
                 
                 
                 
             <div class="col-md-12">
            <div class="col-md-6">
                    当前${commentlist.pageNum}页,总${commentlist.pages}页,记录数：${commentlist.total}条
           </div>
      
           <div class="col-md-6">
           <nav aria-label="Page navigation">
           <ul class="pagination">
           <c:if test="${commentlist.hasPreviousPage}">
           <li>
           <a href="textcontext?pn=${commentlist.pageNum-1}&textId=${VC.textId}" aria-label="Previous">
           <span aria-hidden="true">&laquo;</span>
           </a>
           </li>
           </c:if>
      
           <c:forEach items="${commentlist.navigatepageNums }" var="pagesnum">
           <c:if test="${ pagesnum==commentlist.pageNum}">
           <li class="active"><a href="textcontext?pn=${pagesnum}&textId=${VC.textId}">${pagesnum}</a></li>
           </c:if>
           <c:if test="${ pagesnum!=commentlist.pageNum}">
           <li ><a href="textcontext?pn=${pagesnum}&textId=${VC.textId}">${pagesnum}</a></li>
           </c:if>
  
           </c:forEach>
           <c:if test="${commentlist.hasNextPage}">
           <li>
           <a href="textcontext?pn=${commentlist.pageNum+1}&textId=${VC.textId}" aria-label="Next">
           <span aria-hidden="true">&raquo;</span>
           </a>
           </li>
           </c:if>
           </ul>
           </nav>
           </div>
                        
                        
                        
          </div>


                 
                 
                 
                 
                 


                 <div class="col-md-2 clearlrp"></div>
                 <div class="col-md-10 clearlrp">
                 <form action="commentsend" method="post"  enctype="multipart/form-data">
                        <div class="col-sm-12 clearlrp">
                        <textarea class="form-control" rows="3"  name="commentContext"></textarea>
                        
                        <input class="width100 onhidden" type="text" name="userId" value="${user.userId}">
                        <input class="width100 onhidden" type="text" name="textId" value="${VC.textId}">
                        </div> 
                        <div class="col-sm-2 clearlrp">
                        <button class="btn  btn-success btn-block" type="submit" >评论</button>   
                        </div>
                        <div class="col-sm-10"></div>
                  </form>
          </div>
          </div>
          </div>
          


    </div>
               <div class="col-md-3 clearlrp">
               <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">注意</h3>

                    </div>
                    <div class="panel-body">
                        <h4>会员的言论不得含有下列内容。</h4>
                        <br>
                       <p>1.违反宪法确定的基本原则的。</p>
                       <br>
                        <p>2.危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的。</p>
                        <br>
                        <p>3.损害国家荣誉和利益的。</p>
                        <br>
                        <p>4.煽动民族仇恨、民族歧视，破坏民族团结的。</p>
                        <br>
                        <p>5.散布谣言，扰乱社会秩序，破坏社会稳定的。</p>
                        <br>
                        <p>6.破坏国家宗教政策，宣扬邪教和封建迷信的。</p>
                        <br>
                        <p>7.散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的。</p>
                        <br>
                        <p>8.侮辱或者诽谤他人，侵害他人合法权益的。</p>
                        <br>
                        <p>9.煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的。</p>
                        <br>
                        <p>10.以非法民间组织名义活动的。</p>
                        <br>
                        <p>11.含有法律、法规、规章、地方规范性文件、国家政策、政府通知、公序良俗等禁止的内容。</p>
                        <br>
                        <p>12.本平台认为不利于社区生态、可能给社区造成损失的内容。</p>

                    </div>
                </div>   
           </div>
<script type="text/javascript">
function reporttext(textid){
	$(function(){
		$.ajax({
			url:"reporttext",
			data:"textId="+document.getElementById(textid).value,
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