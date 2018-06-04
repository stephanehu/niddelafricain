<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : login
    Created on : Jan 21, 2016, 4:13:28 PM
    Author     : Stephane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--contact-->
<div class="login-right">
    <div class="container">
        <h3>Login:
            <c:if test="${!empty custom}">
                <b>Username: ${custom.email} Password: ${custom.password}</b>
            </c:if>
                      <c:if test="${!empty message}">
                <b>${message}</b>
            </c:if>
        </h3>
        <div class="login-top">
            <ul class="login-icons">
                <li><a href="#" ><i class="facebook"> </i><span>Facebook</span></a></li>
                <li><a href="#" class="twit"><i class="twitter"></i><span>Twitter</span></a></li>
                <li><a href="#" class="go"><i class="google"></i><span>Google +</span></a></li>
                <li><a href="#" class="in"><i class="linkedin"></i><span>Linkedin</span></a></li>
                <div class="clearfix"> </div>
            </ul>
            <div class="form-info">
                <form action="signin" method="post">
                    <input type="text" class="text" name="emailid" placeholder="Email Adress" required="true">
                    <input type="password"   name="pword" placeholder="Password" required="true">
                    <label class="hvr-sweep-to-right">
                        <input type="submit" value="Submit">
                    </label>
                </form>
            </div>
            <div class="create">
                <h4>New To Real Home?</h4>
                <a class="hvr-sweep-to-right" href="register.jsp">Create an Account</a>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!--//contact-->