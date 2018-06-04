<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : contact
    Created on : Jan 20, 2016, 11:53:03 AM
    Author     : Stephane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:query var="agent" dataSource="jdbc/smartrealestate">
    SELECT * FROM AGENTS WHERE idAGENTS=?
    <sql:param value="${requestScope.queryString}"/>

</sql:query>
<!--contact-->
<div class="contact">
    <div class="container">
        <h3>Contact <c:if test="${!empty msg}">
                ${msg}
            </c:if></h3>

        <c:if test="${empty closeup}">

            <div class="contact-top">
                <div class="col-md-6 contact-top1">
                    <h4 > Info</h4>
                    <p class="text-contact">${agent.rows[0].info}.</p>
                    <div class="contact-address">
                        <div class="col-md-6 contact-address1">
                            <h5>Address</h5>
                            <p><b>The Company Name</b></p>
                            <p>${agent.rows[0].office_name}</p>
                            <p>address: See Map below</p>	
                        </div>
                        <div class="col-md-6 contact-address1">
                            <h5>Email Address </h5>
                            <p>General :<a href="malito:mail@demolink.org"> ${agent.rows[0].email}</a></p>
                            <p>Office :<a href="malito:mail@demolink.org"> ${agent.rows[0].email_office}</a></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="contact-address">
                        <div class="col-md-6 contact-address1">
                            <h5 >Phone </h5>
                            <p>Landline : ${agent.rows[0].landline_office}</p>
                            <p>Mobile : ${agent.rows[0].phone}</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-md-6 contact-right">

                    <form role="form" action="contactAgent" method="post">
                        <input class="form-control" type="text" value="${customer.firstName}" placeholder="${customer.firstName}" name="firstName" required="true"/>
                        <input class="form-control" type="text" value="${customer.email}" placeholder="${customer.email}" name="email" required="true"/>
                        <select class="form-control"  name="subject">
                            <option value="">Buy</option>
                            <option value="">Rent</option>
                            <option value="">Lease</option>
                            <option value=""></option>
                        </select>

                        <input type="hidden"  name="customerId" value="${customer.idCUSTOMERS}">
                        <input type="hidden"  name="dealedPropertyId" value="${dealedproperty}">
                        <input type="hidden" name="agentId" value="${agent.rows[0].idAGENTS}"/>
                        <textarea class="form-control" name="msg1"  placeholder="Message" requried="true">
                        
                        </textarea>
                        <label class="hvr-sweep-to-right">
                            <c:if test="${customer ne null}">
                                <input type="submit" value="Submit"/>
                            </c:if>


                        </label>
                    </form>
                </div>
                <div class="clearfix"> </div>
            </div>
        </c:if>
    </div>
    <c:if test="${empty closeup}">  <div class="map">
            <iframe src="https://www.google.com/maps/embed?${agent.rows[0].office_address}"> </iframe>
        </div>
    </c:if>
</div>
<!--//contact-->
