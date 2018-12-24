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
	
      
           <div class="col-md-12">
               <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">关于${word}的搜索结果</h3>

                    </div>
                <div class="panel-body">
               
                 <span>${message }</span>
           
                </div>
           </div>   
           </div>
     
</body>
</html>