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
	<title>select</title>
	 <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
  <link rel="stylesheet" type="text/css" href="css/mystyle.css">
  <script type="text/javascript" src="js/jquery-2.2.1.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.3.3.7.js"></script>
</head>
<body>
	  <div class="row">
           <div class="col-md-9">
               <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">关于${word}的搜索结果</h3>

                    </div>
                    <div class="panel-body">
                   <c:forEach items="${stextlist}" var="tx">
                        <div class="col-sm-12">
                        <div class="col-sm-1">
                        <img src="${tx.userWithBLOBs.userImage}" class="image5050">
                        </div>
                        <div class="col-sm-6">
                           <div class="col-sm-12">
                           <a href="textcontext?textId=${tx.textId}">${tx.textHead}</a>
                           </div>
                           <div class="col-sm-12">
                                    <span> ${tx.userWithBLOBs.userAccount}</span>
                           </div>
                        
                        </div>
                        <div class="col-sm-3">${tx.textDate}</div>
                        <div class="col-sm-2">点击数:${tx.textCount}</div>
                        </div>

                        <br><br><br><br>
                        </c:forEach>






















                    </div>
                </div>   
           </div>



           <div class="col-md-3">
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
      </div>
</body>
</html>