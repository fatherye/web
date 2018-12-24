<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>uservideo</title>
  <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
  
     
           <div class="col-md-12 clearlrp margin0" >
               <div class="panel panel-primary margin0">
                    <div class="panel-heading">
                      <h3 class="panel-title">我的视频</h3>

                    </div>
                <div class="panel-body">
                     <c:forEach items="${videolist.list}" var="v">
                        <div class="col-md-3 clearlrp">
                        <div class="col-sm-12 ">
                        <img src="${v.videoImage}" class="imgcss" >
                        </div>
                        <div class="col-sm-12 textcenter">
                        <h6>${v.videoName }</h6>
                        </div>
                        
                        <div class="col-sm-12 clearlrp">
                        <div class="col-sm-5 ">点击数：${v.videoCount}</div>
                        <div class="col-sm-7 clearlrp">分类:${v.videokind.videokindName}</div>
                        </div>
                         <div class="col-sm-12">
                         <a href="deletemyvideobyid?videoId=${v.videoId }&userId=${v.userId }">
                         <button class="btn btn-lg btn-dangering btn-block">删除</button>
                         </a>
                         </div>
                        </div>
                        
                        </c:forEach>


                       



                        
       <div class="col-md-12">
           <div class="col-md-6">
                    当前${videolist.pageNum}页,总${videolist.pages}页,记录数：${videolist.total}条
           </div>
      
           <div class="col-md-6">
           <nav aria-label="Page navigation">
           <ul class="pagination">
           <c:if test="${videolist.hasPreviousPage}">
           <li>
           <a href="uservideo?pn=${videolist.pageNum-1}&userId=${VUmsg}" aria-label="Previous">
           <span aria-hidden="true">&laquo;</span>
           </a>
           </li>
           </c:if>
      
           <c:forEach items="${videolist.navigatepageNums }" var="pagesnum">
           <c:if test="${ pagesnum==videolist.pageNum}">
           <li class="active"><a href="uservideo?pn=${pagesnum}&userId=${VUmsg}">${pagesnum}</a></li>
           </c:if>
           <c:if test="${ pagesnum!=videolist.pageNum}">
           <li ><a href="uservideo?pn=${pagesnum}&userId=${VUmsg}">${pagesnum}</a></li>
           </c:if>
  
           </c:forEach>
           <c:if test="${videolist.hasNextPage}">
           <li>
           <a href="uservideo?pn=${videolist.pageNum+1}&userId=${VUmsg}" aria-label="Next">
           <span aria-hidden="true">&raquo;</span>
           </a>
           </li>
           </c:if>
           </ul>
           </nav>
           </div>
                        
        </div>


                        <div class="col-md-12">
                        <div class="col-sm-4"></div>
          
                        <div class="col-sm-4"> 
                        <form action="fileupdate" method="post"  enctype="multipart/form-data">
                        
                        <div class="col-sm-2">
                        <span  class="label label-info">标题</span>
                        </div> 
                        <div class="col-sm-10">
                        <input class="dandan" type="text" name="videoName" id="text">
                        </div> 
                        <div class="col-sm-2">
                        <span class="label label-danger">视频</span> 
                        </div>
                        <div class="col-sm-10">
                        <input class="dandan" type="file" name="videofile" id="name">
                        </div>
                        <div class="col-sm-2">
                        <span class="label label-warning">图片</span>
                        </div> 
                        <div class="col-sm-10">
                        <input  class="dandan" type="file" name="videofile" id="image">
                        </div>

                        <div class="col-sm-2">
                        <span class="label label-default">类别</span>
                        </div> 
                        <div class="col-sm-10">
                        <select class="width100" name="videokindId">
                        <c:forEach items="${videokindlist}" var="vk">
                        <option value="${vk.videokindId }">${vk.videokindName }</option>
                        </c:forEach>
                        </select>
                        </div>
                        <div class="col-sm-12">
                        <input  class="dandan onhidden" type="text" name="userId" value="${VUmsg}">
                        </div>
                        <div class="col-sm-12">
                        <button class="btn btn-lg btn-success btn-block" type="submit" >提交</button>   
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