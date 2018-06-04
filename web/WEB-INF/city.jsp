<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : city
    Created on : Jan 21, 2016, 12:06:29 AM
    Author     : Stephane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:query var="cities" dataSource="jdbc/smartrealestate">
    SELECT *  FROM CITIES
</sql:query>
<div class="container">
    <!---->
    <div class="top-grid">
        <h3>Top City</h3>
        <div class="grid-at">
            <div class="col-md-3 grid-city">
                <div class="grid-lo">
                    <a href="buy_property?${cities.rows[0].idCITIES}">
                        <figure class="effect-layla">
                            <img class=" img-responsive" src="images/city/${cities.rows[0].name}.jpg" alt="img02">
                            <figcaption>
                                <h4>${cities.rows[0].name}</h4>

                            </figcaption>			
                        </figure>
                    </a>
                </div>
            </div>
            <div class="col-md-3 grid-city">
                <div class="grid-lo">
                    <a href="buy_property?${cities.rows[1].idCITIES}">
                        <figure class="effect-layla">
                            <img class=" img-responsive" src="images/city/${cities.rows[1].name}.jpg" alt="img06">
                            <figcaption>
                                <h4>${cities.rows[1].name}</h4>

                            </figcaption>			
                        </figure>
                    </a>
                </div>
            </div>
            <div class="col-md-6 grid-city grid-city1">
                <div class="grid-me">
                    <div class="col-md-8 grid-lo1">
                        <div class=" grid-lo">
                            <a href="buy_property?${cities.rows[2].idCITIES}">
                                <figure class="effect-layla">
                                    <img class=" img-responsive" src="images/city/${cities.rows[2].name}.jpg" alt="img06">
                                    <figcaption>
                                        <h4 class="effect1">${cities.rows[2].name}</h4>

                                    </figcaption>			
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 grid-lo2">
                        <div class=" grid-lo">
                            <a href="buy_property?${cities.rows[3].idCITIES}">
                                <figure class="effect-layla">
                                    <img class=" img-responsive" src="images/city/${cities.rows[3].name}.jpg" alt="img06">
                                    <figcaption>
                                        <h4 class="effect2">${cities.rows[3].name}</h4>

                                    </figcaption>			
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>	
                <div class="grid-me">
                    <div class="col-md-6 grid-lo3">
                        <div class=" grid-lo">
                            <a href="buy_property?${cities.rows[4].idCITIES}">
                                <figure class="effect-layla">
                                    <img class="img-responsive" src="images/city/${cities.rows[4].name}.jpg" alt="img06">
                                    <figcaption>
                                        <h4 class="effect3">${cities.rows[4].name}</h4>

                                    </figcaption>			
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6 grid-lo4">
                        <div class=" grid-lo">
                            <a href="buy_property?${cities.rows[5].idCITIES}">
                                <figure class="effect-layla">
                                    <img class="img-responsive" src="images/city/${cities.rows[5].name}.jpg" alt="img06">
                                    <figcaption>
                                        <h4 class="effect3">${cities.rows[5].name}</h4>

                                    </figcaption>			
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>	
            </div>
            <div class="clearfix"> </div>
        </div>

    </div>
</div>
<!---->
<!--premium-project-->
<div class="premium">
    <div class="pre-top">
        <h5>Lorem Ipsum is simply dummy</h5>
        <p>$7.24 Lacs-4.36 Lacs 2-3 BHK, Lorem Ipsum</p>
    </div>
</div>
<!--//premium-project-->
