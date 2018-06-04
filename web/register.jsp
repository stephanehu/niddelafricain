<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : register
    Created on : Jan 21, 2016, 4:14:01 PM
    Author     : Stephane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--contact-->
<div class="login-right">
	<div class="container">
		<h3>Register</h3>
		<div class="login-top">
				<ul class="login-icons">
					<li><a href="#" ><i class="facebook"> </i><span>Facebook</span></a></li>
					<li><a href="#" class="twit"><i class="twitter"></i><span>Twitter</span></a></li>
					<li><a href="#" class="go"><i class="google"></i><span>Google +</span></a></li>
					<li><a href="#" class="in"><i class="linkedin"></i><span>Linkedin</span></a></li>
					<div class="clearfix"> </div>
				</ul>
				<div class="form-info">
                                    <form action="signup" method="post">
						<input type="text"  name="firstname" placeholder=" First Name" required="true" >
                                                <input type="text"  name="lastname"  placeholder="Last Name" required="true" >
						<input type="text" name="emailid"  placeholder="Email Adress" required="true" >
						<input type="password" name="pword" placeholder="Password " required="true">
						<input type="password" name="confirmPword"  placeholder="confirm passWord" required="true" >
						<input type="number"  name="phone" placeholder="Phone Number " required="true">
                                                <input type="text" name="salary"  placeholder="Salary " required="true">
						 <label class="hvr-sweep-to-right">
				           	<input type="submit" value="Sign Up">
				           </label>
					</form>
                                    <c:if test="${!empty message}">
                                        <p>${message}</p>
                                    </c:if>
					<p>Already have a Real Home account? <a href="login.jsp">Login</a></p>
				</div>
			
	</div>
</div>
</div>
<!--//contact-->

