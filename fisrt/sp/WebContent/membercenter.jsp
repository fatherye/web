<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>menbercenter</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.3.3.7.css">
  <link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>

	 
           <div class="col-md-9 clearallp">
               <div class="panel panel-primary">
                    <div class="panel-heading">
                      <h3 class="panel-title">会员中心</h3>

                    </div>
                    <div class="panel-body">
                    <div class="col-sm-12 textcenter">
                    <img  src="image/qqqq.png" >
                    </div>
                     <div class="col-sm-12 textcenter">
                           <h3>你的会员积分：${user.userGrade}</h3>
                     </div>
                    <div class="col-sm-3"></div>
                     <div class="col-sm-6 ">
                           <div class="col-sm-12 textcenter"><img src=""></div>
                           <div class="col-sm-12">
                           <a href="pay?userId=${user.userId }"><button class="btn btn-lg btn-primary btn-block">充值</button></a>
                           </div>
                     </div>
                     <div class="col-sm-3"></div>
                  

                    </div>
                </div>   
           </div>



           <div class="col-md-3 clearallp">
               <div class="panel panel-primary vipin">
                    <div class="panel-heading">
                      <h3 class="panel-title">注意</h3>

                    </div>
                    <div class="panel-body">
                        <h5>用户须知</h5>
                        <br>
                        <p>1.凡在本平台充值的会员都会获得相应的积分。</p>
                        <br>
                        <p>2.凡在积分大于0的会员都会拥有VIP权限，反之将成为普通用户。</p>
                        <br>
                        <p>3.积分可用于购买礼物，礼物送出后会转化为积分，且会折损。</p>
                    </div>
                </div>   
           </div>
  
</body>
</html>