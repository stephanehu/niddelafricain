<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : single
    Created on : Jan 19, 2016, 1:01:26 PM
    Author     : Stephane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:query var="propertie" dataSource="jdbc/smartrealestate">
    SELECT * FROM REALPROPERTIES rp INNER JOIN AMENTIES am
    ON (rp.idAMENTIES = am.idAMENTIES) INNER JOIN PROPERTY_STATUS ps
    ON (rp.idPROPERTY_STATUS = ps.idPROPERTY_STATUS) where idREALPROPERTIES =?
    <sql:param value="${requestScope.queryString}" />
</sql:query>

<sql:query var="propToBuy" dataSource="jdbc/smartrealestate">
    SELECT *  FROM REALPROPERTIES  
    WHERE idCITIES = ${propertie.rows[0].idCITIES} 
    AND idDEAL_TYPES =${propertie.rows[0].idDEAL_TYPES}
</sql:query>
<div class="container">

    <div class="buy-single-single">

        <div class="col-md-9 single-box">

            <div class=" buying-top">	
                <div class="flexslider">
                    <ul class="slides">
                        <c:choose>
                            <c:when test="${propertie.rows[0].idDEAL_TYPES eq 2}">
                                <c:if test="${propertie.rows[0].idCITIES eq 1}">
                                    <li data-thumb="${initParam.rentPropertyImagePath}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.rentPropertyImagePath}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.rentPropertyImagePath}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.rentPropertyImagePath}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.rentPropertyImagePath}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 2}">
                                    <li data-thumb="${initParam.rentPropertyImagePath2}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.rentPropertyImagePath2}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath2}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.rentPropertyImagePath2}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath2}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.rentPropertyImagePath2}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath2}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.rentPropertyImagePath2}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 3}">
                                    <li data-thumb="${initParam.rentPropertyImagePath3}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.rentPropertyImagePath3}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath3}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.rentPropertyImagePath3}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath3}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.rentPropertyImagePath3}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath3}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.rentPropertyImagePath3}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 4}">
                                    <li data-thumb="${initParam.rentPropertyImagePath4}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.rentPropertyImagePath4}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath4}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.rentPropertyImagePath4}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath4}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.rentPropertyImagePath4}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath4}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.rentPropertyImagePath4}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 5}">
                                    <li data-thumb="${initParam.rentPropertyImagePath5}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.rentPropertyImagePath5}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath5}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.rentPropertyImagePath5}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath5}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.rentPropertyImagePath5}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath5}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.rentPropertyImagePath5}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 6}">
                                    <li data-thumb="${initParam.rentPropertyImagePath6}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.rentPropertyImagePath6}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath6}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.rentPropertyImagePath6}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath6}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.rentPropertyImagePath6}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.rentPropertyImagePath6}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.rentPropertyImagePath6}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                            </c:when>
                            <c:when test="${propertie.rows[0].idDEAL_TYPES eq 3}">
                                <c:if test="${propertie.rows[0].idCITIES  eq 1}">
                                    <li data-thumb="${initParam.hostelPropertyImagePath}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.hostelPropertyImagePath}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.hostelPropertyImagePath}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.hostelPropertyImagePath}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.hostelPropertyImagePath}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 2}">
                                    <li data-thumb="${initParam.hostelPropertyImagePath2}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.hostelPropertyImagePath2}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath2}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.hostelPropertyImagePath2}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath2}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.hostelPropertyImagePath2}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath2}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.hostelPropertyImagePath2}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 3}">
                                    <li data-thumb="${initParam.hostelPropertyImagePath3}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.hostelPropertyImagePath3}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath3}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.hostelPropertyImagePath3}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath3}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.hostelPropertyImagePath3}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath3}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.hostelPropertyImagePath3}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 4}">
                                    <li data-thumb="${initParam.hostelPropertyImagePath4}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.hostelPropertyImagePath4}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath4}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.hostelPropertyImagePath4}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath4}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.hostelPropertyImagePath4}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath4}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.hostelPropertyImagePath4}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 5}">
                                    <li data-thumb="${initParam.hostelPropertyImagePath5}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.hostelPropertyImagePath5}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath5}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.hostelPropertyImagePath5}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath5}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.hostelPropertyImagePath5}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath5}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.hostelPropertyImagePath5}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 6}">
                                    <li data-thumb="${initParam.hostelPropertyImagePath6}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.hostelPropertyImagePath6}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath6}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.hostelPropertyImagePath6}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath6}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.hostelPropertyImagePath6}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.hostelPropertyImagePath6}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.hostelPropertyImagePath6}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                            </c:when>
                            <c:otherwise>
                                <c:if test="${propertie.rows[0].idCITIES  eq 1}">
                                    <li data-thumb="${initParam.buyPropertyImagePath}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.buyPropertyImagePath}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.buyPropertyImagePath}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.buyPropertyImagePath}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.buyPropertyImagePath}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 2}">
                                    <li data-thumb="${initParam.buyPropertyImagePath2}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.buyPropertyImagePath2}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath2}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.buyPropertyImagePath2}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath2}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.buyPropertyImagePath2}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath2}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.buyPropertyImagePath2}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 3}">
                                    <li data-thumb="${initParam.buyPropertyImagePath3}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.buyPropertyImagePath3}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath3}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.buyPropertyImagePath3}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath3}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.buyPropertyImagePath3}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath3}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.buyPropertyImagePath3}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 4}">
                                    <li data-thumb="${initParam.buyPropertyImagePath4}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.buyPropertyImagePath4}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath4}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.buyPropertyImagePath4}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath4}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.buyPropertyImagePath4}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath4}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.buyPropertyImagePath4}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 5}">
                                    <li data-thumb="${initParam.buyPropertyImagePath5}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.buyPropertyImagePath5}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath5}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.buyPropertyImagePath5}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath5}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.buyPropertyImagePath5}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath5}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.buyPropertyImagePath5}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                                <c:if test="${propertie.rows[0].idCITIES  eq 6}">
                                    <li data-thumb="${initParam.buyPropertyImagePath6}${propertie.rows[0].property_name}.jpg">
                                        <img src="${initParam.buyPropertyImagePath6}${propertie.rows[0].property_name}.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath6}${propertie.rows[0].property_name}1.jpg">
                                        <img src="${initParam.buyPropertyImagePath6}${propertie.rows[0].property_name}1.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath6}${propertie.rows[0].property_name}2.jpg">
                                        <img src="${initParam.buyPropertyImagePath6}${propertie.rows[0].property_name}2.jpg" />
                                    </li>
                                    <li data-thumb="${initParam.buyPropertyImagePath6}${propertie.rows[0].property_name}3.jpg">
                                        <img src="${initParam.buyPropertyImagePath6}${propertie.rows[0].property_name}3.jpg" />
                                    </li>
                                </c:if>
                            </c:otherwise>
                        </c:choose>


                    </ul>
                </div>
                <!-- FlexSlider -->
                <script defer src="js/jquery.flexslider.js"></script>
                <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                <script>
                    // Can also be used with $(document).ready()
                    $(window).load(function () {
                        $('.flexslider').flexslider({
                            animation: "slide",
                            controlNav: "thumbnails"
                        });
                    });
                </script>
            </div>
            <div class="buy-sin-single">
                <div class="col-sm-5 middle-side immediate">
                    <h4>${propertie.rows[0].property_name} </h4>
                    <p><span class="bath">Bed </span>: <span class="two">${propertie.rows[0].bedroom} BHK</span></p>
                    <p>  <span class="bath1">Baths </span>: <span class="two">${propertie.rows[0].bathroom}</span></p>
                    <p><span class="bath2">Built-up Area</span>: <span class="two">${propertie.rows[0].buildup_area} Sq.Yrds</span></p>
                    <p><span class="bath3">Plot Area </span>:<span class="two">${propertie.rows[0].plot_area} Sq.Yrds</span></p>
                    <p><span class="bath4">Age of property</span> : <span class="two">${propertie.rows[0].age} Years</span></p>
                    <p><span class="bath5">Price </span>:<span class="two"> ${propertie.rows[0].price}</span></p>				 
                    <div class="   right-side">
                        <a href="contact?agent=${propertie.rows[0].idAGENTS}&property=${propertie.rows[0].idREALPROPERTIES}" class="hvr-sweep-to-right more" >Contact Builder</a> 
                        <a href="loan?plan=${propertie.rows[0].idLOAN_PLAN}&&property=${propertie.rows[0].idREALPROPERTIES}" class="hvr-sweep-to-right more" >Apply Loan</a>     

                    </div>

                </div>
                <div class="col-sm-7 buy-sin">
                    <h4>Description</h4>
                    <p>${propertie.rows[0].description}</p>
                    <h4>Amenties</h4>
                    <p>Lift: ${propertie.rows[0].lift} &  Gyms: ${propertie.rows[0].gym}   Garage: ${propertie.rows[0].garage}                    
                        Swimming Pool: ${propertie.rows[0].swimmingpool}    Gase Pipeline: ${propertie.rows[0].gazpipeline}</p>                    
                    <h4>Property Status</h4>
                    <p>${propertie.rows[0].status}</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="map-buy-single">
                <h4>Neighborhood Info</h4>
                <div class="map-buy-single1">
                    <iframe src="https://www.google.com/maps/embed?${propertie.rows[0].address}"></iframe>

                </div>
            </div>
            <div class="video-pre">
                <h4>Video Presentation</h4>

                <iframe src="https://www.youtube.com/embed/UZ42t-bsL4U"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

            </div>
        </div>




        <div class="col-md-3">
            <div class="single-box-right right-immediate">
                <h4>Featured Communities</h4>

                <c:forEach var="toBuy" items="${propToBuy.rows}" >                                       
                    <div class="single-box-img">
                        <div class="box-img">

                            <c:choose>
                                <c:when test="${toBuy.idDEAL_TYPES eq 3}">
                                    <c:if test="${toBuy.idCITIES eq 2}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath2}${toBuy.property_name}7.jpg" alt=""></a>                                     
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 3}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath3}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 4}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath4}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 5}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath5}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 6}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath6}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 1}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                    </c:when>
                                    <c:when test="${toBuy.idDEAL_TYPES eq 2}">
                                        <c:if test="${toBuy.idCITIES eq 2}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath2}${toBuy.property_name}7.jpg" alt=""></a>                                     
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 3}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath3}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 4}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath4}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 5}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath5}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 6}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath6}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 1}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                    </c:when>
                                    <c:otherwise>

                                    <c:if test="${propertie.rows[0].idCITIES eq 2}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath2}${toBuy.property_name}7.jpg" alt=""></a>                                     
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 3}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath3}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 4}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath4}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 5}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath5}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 6}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath6}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 1}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>

                                </c:otherwise>
                            </c:choose>

                        </div>
                        <div class="box-text">
                            <p><a href="single?${toBuy.idREALPROPERTIES}">${toBuy.property_name}</a></p>
                            <a href="single?${toBuy.idREALPROPERTIES}" class="in-box">More Info</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </c:forEach>
            </div>

        </div>
        <div class="clearfix"> </div>
    </div>
</div>

<!---->
<div class="container">
    <div class="future">
        <h3 >Related Projects</h3>
        <div class="content-bottom-in">
            <ul id="flexiselDemo1">
                <c:forEach var="toBuy" items="${propToBuy.rows}" >                                       
                    <li><div class="project-fur">
                            <c:choose>
                                <c:when test="${toBuy.idDEAL_TYPES eq 3}">
                                    <c:if test="${toBuy.idCITIES eq 2}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath2}${toBuy.property_name}32.jpg" alt=""></a>                                     
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 3}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath3}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 4}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath4}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 5}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath5}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 6}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath6}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 1}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                    </c:when>
                                    <c:when test="${toBuy.idDEAL_TYPES eq 2}">
                                        <c:if test="${toBuy.idCITIES eq 2}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath2}${toBuy.property_name}32.jpg" alt=""></a>                                     
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 3}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath3}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 4}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath4}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 5}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath5}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 6}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath6}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 1}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.rentPropertyImagePath}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                    </c:when>
                                    <c:otherwise>

                                    <c:if test="${propertie.rows[0].idCITIES eq 2}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath2}${toBuy.property_name}32.jpg" alt=""></a>                                     
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 3}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath3}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 4}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath4}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 5}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath5}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 6}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath6}${toBuy.property_name}32.jpg" alt=""></a>
                                        </c:if>
                                        <c:if test="${propertie.rows[0].idCITIES eq 1}">
                                        <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.buyPropertyImagePath}${toBuy.property_name}7.jpg" alt=""></a>
                                        </c:if>

                                </c:otherwise>
                            </c:choose>
                            <div class="fur">
                                <div class="fur1">
                                    <span class="fur-money">2.3 - 5.28 Lacs </span>
                                    <h6 class="fur-name"><a href="#">Contrary to popular</a></h6>
                                    <span>${toBuy.idCITIES}</span>
                                </div>
                                <div class="fur2">
                                    <span>${toBuy.idNUMBER_OF_ROOM} BHK</span>
                                </div>
                            </div>					
                        </div></li>
                    </c:forEach>
                
            </ul>
            <script type="text/javascript">
                $(window).load(function () {
                    $("#flexiselDemo1").flexisel({
                        visibleItems: 4,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 3000,
                        pauseOnHover: true,
                        enableResponsiveBreakpoints: true,
                        responsiveBreakpoints: {
                            portrait: {
                                changePoint: 480,
                                visibleItems: 1
                            },
                            landscape: {
                                changePoint: 640,
                                visibleItems: 2
                            },
                            tablet: {
                                changePoint: 768,
                                visibleItems: 3
                            }
                        }
                    });

                });
            </script>
            <script type="text/javascript" src="js/jquery.flexisel.js"></script>
        </div>
    </div>

</div>