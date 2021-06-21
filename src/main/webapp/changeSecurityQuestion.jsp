<%@page import="com.roze.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%}%>

<%

if("wrong".equals(msg)){
%>
<h3 class="alert">Your Password is wrong!</h3>
<%}%>

<form action="changeSecurityQuestionAction.jsp" method="post">

<h3>Select Your New Securtiy Question</h3>
  <select class="input-style" name="securityQuestion">
  <option value="What is your favorite animal?">What is your favorite animal?</option>
  <option value="What is favorite flower?">What is favorite flower?</option>
  <option value="What is your hobby?">What is your hobby?</option>
  <option value="What is your home town?">What is your home town?</option>
  </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter your new Answer" required="required" />
<hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter password" required="required" />
<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>