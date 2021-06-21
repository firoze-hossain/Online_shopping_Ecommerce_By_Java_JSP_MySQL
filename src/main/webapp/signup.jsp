<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required="required" />
     <input type="email" name="email" placeholder="Enter Email" required="required" />
     <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required="required" />
     <select name="securityQuestion" required="required">
     <option value="What is your father name?">What is your father name?</option>
     <option value="What is your favorite singer?">What is your favorite singer?</option>
     <option value="Which programming language you prefer most?">Which programming language you prefer most?</option>
     <option value="Which framework you follow?">Which framework you follow?</option>
     </select>
     <input type="text" name="answer" placeholder="Enter Answer" required="required" />
     <input type="password" name="password"  placeholder="Enter Password" required="required" /> 
     <input type="submit" value="signup"/>
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");

if("valid".equals(msg)){
	%>
	<h1>Successfully Registered</h1>
<% }%>

<%
if("invalid".equals(msg)){
	%>
	<h1>Some thing Went Wrong! Please Try Again !</h1>
<%}
%>







    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>