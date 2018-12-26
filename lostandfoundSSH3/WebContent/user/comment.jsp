<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<script src="js/jquery-3.3.1.min.js"></script>
	<link href="css/myUIstyle.css" rel="stylesheet" />
	<link href="css/user/index.css" rel="stylesheet">
    <script src="js/base.js"></script>
</head>
<body>
<!--  
<div class="top">
         <div class="dropdown" style="float: right">
             <button class="dropbtn">${sessionScope.user.getUserName()}</button>
             <div class="dropdown-content">
                 <a href="userLogout.action">退出</a>
             </div>

         </div>
     </div> -->
<ul>	
    <li id="click_1"><a href="#">主页</a></li>
    <div class="funBackgroungColor">
        <li id="fun1" ><a href="toIndexPage.action">动态</a></li>
        <li id="fun2" style="background-color: #4CAF50"><a href="#">评论</a></li>
    </div>
    <li id="click_2"><a href="#">信息</a></li>
    <div class="funBackgroungColor">
        <li id="fun3" class="hidden"><a href="toUserMsgPage.action">我的信息</a></li>
        <li id="fun4" class="hidden"><a href="#">功能4</a></li>
    </div>
    <li id="click_3"><a href="#">发布</a></li>
    <div class="funBackgroungColor">
        <li id="fun5" class="hidden"><a href="toSendPage.action">发布信息</a></li>
        <li id="fun6" class="hidden"><a href="toMySend.action">我的发布</a></li>
    </div>
    <li id="click_4"><a href="#">帮助</a></li>
    <div class="funBackgroungColor">
        <li id="fun7" class="hidden"><a href="#">功能7</a></li>
        <li id="fun8" class="hidden"><a href="#">功能8</a></li>
    </div>
</ul>

<div style="margin-left:18%;padding:1px 16px;">
   <div class="container">
   <b>评论页面</b>
   
      <c:forEach var="post" items="${commentList}">
        <div>
           <img class="avatar" alt="头像" src="images/myLove.jpg">
           <label><c:out value="${post.getUser().getUserName()}" /></label><br>
       </div>
     
         <div class="content">  
             <a href="#"><c:out value="${post.getCommentContent()}" /></a>
         </div>

 
         <div class="date">
             <c:out value="${post.getCommentDate()}" /><br>
         </div>
         <div class="div"></div>
      </c:forEach>  
      
      <form action="comment.action" method="post">
     <input type="text" name="content" >
     <input type="text" value="${messageId}" name="messageId" style="visibility:hidden;">
     <input type="submit" value="评论" class="btn">
   </form> 
   </div>

   
</div>
 
</body>
</html>