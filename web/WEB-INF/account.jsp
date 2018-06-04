<%-- 
    Document   : placehouse
    Created on : Apr 12, 2016, 7:37:10 PM
    Author     : Stephane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:if test="${customer ne null}">
    <div class="login-right">
        <div class="container">
            <h3 id="here">Welcome Mr. ${customer.firstName}</h3>
            <div class="login-top">
                <ul class="login-icons">
                    <li><a href="viewcustDeals" ><i class="facebook"> </i><span>View Deals</span></a></li>
                    <li id="now"><a href="index.jsp" class="twit"><i class="twitter"></i><span>Make Deal</span></a></li>                    
                    <div class="clearfix"> </div>
                </ul>

                <h2> ${myMsg}</h2>
                <div class="form-info">
                    <c:if test="${customerDeals ne null}">
                        <table class=" table table-striped">
                            <thead>
                            <th>Status</th>
                            <th>Message</th>                            
                            <th>Property Name</th>
                            <th>Property Room Number</th> 
                            <th>Property Description</th>
                            </thead>
                            <tbody>
                                <c:forEach var="deal" items="${customerDeals}">
                                    <tr>
                                        <c:if test="${status eq false}">
                                            <td>On Deal</td>
                                        </c:if>
                                        <c:if test="${status ne false}">
                                            <td>Dealed</td>
                                        </c:if>

                                        <td>${deal.idDEALS}: ${deal.message}</td>
                                        
                                        <td>${deal.idREALPROPERTIES.propertyName}</td>
                                        <td>${deal.idREALPROPERTIES.idNUMBEROFROOMS.name}</td>
                                        <td><img class="img img-responsive" src="images/${deal.idREALPROPERTIES.propertyName}.png" alt="${deal.idREALPROPERTIES.propertyName}"/></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table> 
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</c:if>