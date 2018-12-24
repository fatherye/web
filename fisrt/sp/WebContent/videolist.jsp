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
	<title>videolist</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
	<br>
      <div class="row">
           <div class="col-md-12">
               <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">${videokindName} </h3>

                    </div>
                <div class="panel-body">
                        <c:forEach items="${videolist.list}" var="v">
                        <div class="col-md-3">
                        <div class="col-sm-12 ">
                        <c:if test="${user.userAccount!=null }">
                        <a href="videocontext?videoId=${v.videoId}&userId=${user.userId}" class="width100" ><img src="${v.videoImage}" class="imgcss" ></a>
                        </c:if>
                        <c:if test="${user.userAccount==null }">
                        <a href="login" class="width100" ><img src="${v.videoImage}" class="imgcss" ></a>
                        </c:if>
                        
                        </div>
                        <div class="col-sm-12 ">
                        <h6>${v.videoName }</h6>
                        </div>
                        
                        <div class="col-sm-12 clearlrp">
                        <div class="col-sm-5">点击数：${v.videoCount}</div>
                        <div class="col-sm-7 clearlrp">上传者：${v.userWithBLOBs.userAccount}</div>
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
           <a href="videolist?pn=${videolist.pageNum-1}&videokindId=${videokindId}&videokindName=${videokindName} " aria-label="Previous">
           <span aria-hidden="true">&laquo;</span>
           </a>
           </li>
           </c:if>
      
           <c:forEach items="${videolist.navigatepageNums }" var="pagesnum">
           <c:if test="${ pagesnum==videolist.pageNum}">
           <li class="active"><a href="videolist?pn=${pagesnum}&videokindId=${videokindId}&videokindName=${videokindName} ">${pagesnum}</a></li>
           </c:if>
           <c:if test="${ pagesnum!=videolist.pageNum}">
           <li ><a href="videolist?pn=${pagesnum}&videokindId=${videokindId}&videokindName=${videokindName} ">${pagesnum}</a></li>
           </c:if>
  
           </c:forEach>
           <c:if test="${videolist.hasNextPage}">
           <li>
           <a href="videolist?pn=${videolist.pageNum-1}&videokindId=${videokindId}&videokindName=${videokindName}" aria-label="Next">
           <span aria-hidden="true">&raquo;</span>
           </a>
           </li>
           </c:if>
           </ul>
           </nav>
           </div>
                        
        </div>           
                       






                    
                        
                     
               
                </div>
           </div>   
      </div>
     
    </div>
</body>
</html>