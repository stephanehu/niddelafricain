<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Jan 18, 2016, 4:12:54 PM
    Author     : Stephane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<sql:query var="properties" dataSource="jdbc/smartrealestate">
    SELECT *  FROM REALPROPERTIES
</sql:query>
<!--content-->
<div class="content">
    <div class="content-grid">
        <div class="container">
            <h3>Most Popular</h3>
            <c:forEach var="propertie" items="${properties.rows}" begin="0" end="2" step="1">
                 <div class="col-md-4 box_2">
                <a href="single?${propertie.idREALPROPERTIES}" class="mask">
                    <img class="img-responsive zoom-img" src="${initParam.welcomePageImagePath}${propertie.property_name}0.jpg" alt="">
                    <span class="four">${propertie.price} &#8377</span>
                </a>
                <div class="most-1">
                    <h5><a href="single?${propertie.idREALPROPERTIES}">${propertie.property_name}</a></h5>
                    <p><strong>Amenities:</strong>Lift<strong>Location :</strong>Neeladri Road, 3rd Cross,Electronic City Phase 1, Near Wipro Gate.</p>
                </div>
            </div>
            </c:forEach>
            
            <div class="clearfix"> </div>
        </div>
    </div>
    <!--service-->
    <div class="services">
        <div class="container">
            <div class="service-top">
                <h3>Services</h3>
                <p>A Smart team dedicated for you to find a smart dream land! </p>
            </div>
            <div class="services-grid">
                <div class="col-md-6 service-top1">
                    <div class=" ser-grid">	
                        <a href="#" class="hi-icon hi-icon-archive glyphicon glyphicon-user"> </a>
                    </div>
                    <div  class="ser-top">
                        <h4>Deals & Offers</h4>
                        <p>Explore the best deals and offers for your dream house. </p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-6 service-top1">
                    <div class=" ser-grid">	
                        <a href="#" class="hi-icon hi-icon-archive glyphicon glyphicon-leaf"> </a>
                    </div>
                    <div  class="ser-top">
                        <h4>Homed Loans</h4>
                        <p>Compare rate, Customize offers and apply online! </p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="services-grid">
                <div class="col-md-6 service-top1">
                    <div class=" ser-grid">	
                        <a href="#" class="hi-icon hi-icon-archive glyphicon glyphicon-cog"> </a>
                    </div>
                    <div  class="ser-top">
                        <h4>Construction Site</h4>
                        <p>A view of what is going on in the city! </p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-6 service-top1">
                    <div class=" ser-grid">	
                        <a href="#" class="hi-icon hi-icon-archive glyphicon glyphicon-file"> </a>
                    </div>
                    <div  class="ser-top">
                        <h4>Legal & Approved property</h4>
                        <p>Find the procedure so easy with us!</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!--//services-->
    <!--features-->
    <div class="content-middle">
        <div class="container">
            <div class="mid-content">
                <h3>the best features</h3>
                <p> to insert something</p>
                <a class="hvr-sweep-to-right more-in" href="">Read More</a>
            </div>
        </div>
    </div>
    <!--//features-->
    <!--phone-->
    <div class="phone">
        <div class="container">
            <div class="col-md-6">
                <img src="images/ph1.png" class="img-responsive" alt=""/>
            </div>
            <div class="col-md-6 phone-text">
                <h4>Search Homes Everywhere</h4>
                <div class="text-1">
                    <h5>Custom Location Tracker</h5>
                    <p>We will find where you are to help find where you will stay! </p>
                </div>
                <div class="text-1">
                    <h5>Map Search</h5>
                    <p>We will help you with a customize map to achieve your dream!</p>
                </div>
                <div class="text-1">
                    <h5>Quick Details</h5>
                    <p>Mobile Application is not yet available, see download page for more</p>
                </div>
                <a href="mobile.jsp" class="hvr-sweep-to-right more">Download the App</a>
            </div>
        </div>
    </div>
    <!--//phone-->
    <!--project--->
    <div class="project">
        <div class="container">
            <h3>TEAM MEMBERS</h3>
            <div class="project-top">
                <div class="col-md-3 project-grid">
                    <div class="project-grid-top">
                        <a href="#" class="mask"><img src="images/steph.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                
                                <div class="col-md4">
                                    <strong>Yannick Stephane</strong>
                                    <small>Web Designer</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>Languages: HTML5,CSS3,JQuery </p>
                            <p class="cost">BCA Final Year ST George</p>
                            <a href="single.html" class="hvr-sweep-to-right more">BANGALORE UNIVERSITY</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 project-grid">
                    <div class="project-grid-top">
                        <a href="#" class="mask"><img src="images/steph.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                
                                <div class="col-md4">
                                    <strong>Yannick Stephane</strong>
                                    <small>Parents</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>Languages: Love,Support,Kindness </p>
                            <p class="cost">Thank to your trust in me</p>
                            <a href="single.html" class="hvr-sweep-to-right more">BANGALORE UNIVERSITY</a>
                        </div>
                    </div>
                </div><div class="col-md-3 project-grid">
                    <div class="project-grid-top">
                        <a href="#" class="mask"><img src="images/steph.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                
                                <div class="col-md4">
                                    <strong>Yannick Stephane</strong>
                                    <small>Teacher</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>Languages: UML,Web Dev,Agile</p>
                            <p class="cost">MCA 2008 ST George</p>
                            <a href="single.html" class="hvr-sweep-to-right more">BANGALORE UNIVERSITY</a>
                        </div>
                    </div>
                </div><div class="col-md-3 project-grid">
                    <div class="project-grid-top">
                        <a href="#" class="mask"><img src="images/steph.jpg" class="img-responsive zoom-img" alt=""/></a>
                        <div class="col-md1">
                            <div class="col-md2">
                                
                                <div class="col-md4">
                                    <strong>Yannick Stephane</strong>
                                    <small>Web Developer</small>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p>Languages: JavaEE,JSP/Serv,JDBC </p>
                            <p class="cost">BCA Final Year ST George</p>
                            <a href="single.html" class="hvr-sweep-to-right more">BANGALORE UNIVERSITY</a>
                        </div>
                    </div>
                </div>
                
                <div class="clearfix"> </div>
            </div>				
        </div>
    </div>
    <!--//project-->
    <!--test-->
    <div class="content-bottom">
        <div class="container">
            <h3>Testimonials</h3>
            <div class="col-md-6 name-in">
                <div class=" bottom-in">
                    <p class="para-in">Dude I am at home, yeah awesome!!.</p>
                    <i class="dolor"> </i>
                    <div class="men-grid">
                        <a href="#" class="men-top"><img class="img-responsive men-top" src="images/te.jpg" alt=""></a>
                        <div class="men">
                            <span>Roger V. Coates</span>
                            <p>Own 2bhk villa, design by Infinity</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class=" bottom-in">
                    <p class="para-in">More than a dream, when it comes to pass. Awesome!!!</p>
                    <i class="dolor"> </i>
                    <div class="men-grid">
                        <a href="#" class="men-top"><img class="img-responsive " src="images/te2.jpg" alt=""></a>
                        <div class="men">
                            <span>Ann K. Perez</span>
                            <p>3BHK with smart amenties</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6  name-on">
                <div class="bottom-in ">
                    <p class="para-in">Me and my husband enjoy our new house, The only fact that is ours, ... Dream!!.</p>
                    <i class="dolor"> </i>
                    <div class="men-grid">
                        <a href="#" class="men-top"><img class="img-responsive " src="images/te1.jpg" alt=""></a>
                        <div class="men">
                            <span>Nancy M. Picker</span>
                            <p>Villa design by Design Makers</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>		
    <!--//test-->	
    <!--partners-->
    <div class="content-bottom1">
        <h3>Our Partners</h3>
        <div class="container">
            <ul>
                <li><a href="#"><img class="img-responsive" src="images/lg.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="images/lg1.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="images/lg2.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="images/lg3.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="images/lg4.png" alt=""></a></li>
                <div class="clearfix"> </div>
            </ul>
            <ul>
                <li><a href="#"><img class="img-responsive" src="images/lg5.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="images/lg6.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="images/lg7.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="images/lg8.png" alt=""></a></li>
                <li><a href="#"><img class="img-responsive" src="images/lg9.png" alt=""></a></li>	
                <div class="clearfix"> </div>
            </ul>
        </div>
    </div>	
    <!--//partners-->	
</div>

