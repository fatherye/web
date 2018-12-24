<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>usertext</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
	<div class="col-md-12 clearlrp">
               <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">我的话题</h3>

                    </div>
                <div class="panel-body">
                     
                       <c:forEach items="${textlist.list}" var="tl">
                        <div class="col-sm-12">
                        
                        <div class="col-sm-5">
                          
                           <a >${tl.textHead }</a>
                         
                           
                        
                        </div>
                        <div class="col-sm-2">
                                                        状态：<c:if test="${tl.textStatement==0}">
                           <span>良好</span>
                           </c:if>
                           <c:if test="${tl.textStatement==1}">
                           <span>警告</span>
                           </c:if>
                        </div>
                        <div class="col-sm-3 clearlrp">${tl.textDate}</div>
                        <div class="col-sm-1 clearlrp">点击数:${tl.textCount }</div>
                        <div class="col-sm-1">
                        <a href="deletetext?textId=${tl.textId }&userId=${TUmsg}"><button class="btn btn-xs btn-danger btn-block">删除</button></a>
                        </div>
                        </div>
                        <br>
                        </c:forEach>

      <div class="col-md-12">
            <div class="col-md-6">
                    当前${textlist.pageNum}页,总${textlist.pages}页,记录数：${textlist.total}条
           </div>
      
           <div class="col-md-6">
           <nav aria-label="Page navigation">
           <ul class="pagination">
           <c:if test="${textlist.hasPreviousPage}">
           <li>
           <a href="usertext?pn=${textlist.pageNum-1}&userId=${TUmsg}" aria-label="Previous">
           <span aria-hidden="true">&laquo;</span>
           </a>
           </li>
           </c:if>
      
           <c:forEach items="${textlist.navigatepageNums }" var="pagesnum">
           <c:if test="${ pagesnum==textlist.pageNum}">
           <li class="active"><a href="usertext?pn=${pagesnum}&userId=${TUmsg}">${pagesnum}</a></li>
           </c:if>
           <c:if test="${ pagesnum!=textlist.pageNum}">
           <li ><a href="usertext?pn=${pagesnum}&userId=${TUmsg}">${pagesnum}</a></li>
           </c:if>
  
           </c:forEach>
           <c:if test="${textlist.hasNextPage}">
           <li>
           <a href="usertext?pn=${textlist.pageNum+1}&userId=${TUmsg}" aria-label="Next">
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

                        <form action="addtext" method="post"  enctype="multipart/form-data">
                         <input class="onhidden" type="text" name="userId" value="${TUmsg }">
                        <div class="col-sm-2 clearlrp">
                        <span  class="label label-info">标题</span>
                        </div> 

                        <div class="col-sm-10 clearlrp">
                        <input class="width100" type="text" name="textHead" >
                        </div> 
                        
                        <div class="col-sm-2 clearlrp">
                        <span  class="label label-info">正文</span>
                        </div> 

                        <div class="col-sm-10 clearlrp">
                        <textarea class="form-control" rows="3"  name="textContext"></textarea>
                        
                        </div> 
                        
                        
                        
                        <div class="col-sm-12 clearlrp">
                        <button class="btn btn-lg btn-success btn-block" type="submit" >发表</button>   
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