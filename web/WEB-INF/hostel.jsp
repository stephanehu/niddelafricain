<%-- 
    Document   : hostel
    Created on : Jan 21, 2016, 3:12:53 PM
    Author     : Stephane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<sql:query var="propertiesToBuy" dataSource="jdbc/smartrealestate">
    SELECT *  FROM REALPROPERTIES rp INNER JOIN DEAL_TYPES  dt 
    ON (rp.idDEAL_TYPES = dt.idDEAL_TYPES)
    WHERE idCITIES =?<sql:param value="${requestScope.queryString}" /> 
    AND dt.idDEAL_TYPES = 3
</sql:query>

<!---->
<div class="single">
<!--    <div class="container">

        <div class="single-buy">
            <div class="col-sm-3 check-top-single">
                <div class="single-bottom">
                    <h4>Property Type</h4>
                    <ul>
                        <li>
                            <input type="checkbox"  id="brand" value="">
                            <label for="brand"><span></span> Duplex</label>
                        </li>
                        <li>
                            <input type="checkbox"  id="brand1" value="">
                            <label for="brand1"><span></span> Apartment</label>
                        </li>
                        <li>
                            <input type="checkbox"  id="brand2" value="">
                            <label for="brand2"><span></span>Villa</label>
                        </li>
                        <li>
                            <input type="checkbox"  id="brand3" value="">
                            <label for="brand3"><span></span> Pent House</label>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="col-sm-3 check-top-single">
                <div class="single-bottom">
                    <h4>BHK</h4>
                    <ul>
                        <li>
                            <input type="checkbox"  id="brand5" value="">
                            <label for="brand5"><span></span> 1 BHK</label>
                        </li>
                        <li>
                            <input type="checkbox"  id="brand6" value="">
                            <label for="brand6"><span></span> 2 BHK</label>
                        </li>
                        <li>
                            <input type="checkbox"  id="brand7" value="">
                            <label for="brand7"><span></span>3 BHK</label>
                        </li>
                        <li>
                            <input type="checkbox"  id="brand8" value="">
                            <label for="brand8"><span></span> 3+ BHK</label>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="col-sm-3 check-top-single">
                <div class="single-bottom">
                    <h4>Amenities</h4>
                    <ul>
                        <li>
                            <input type="checkbox"  id="brand9" value="">
                            <label for="brand9"><span></span>Lift </label>
                        </li>
                        <li>
                            <input type="checkbox"  id="brand10" value="">
                            <label for="brand10"><span></span>GYM </label>
                        </li>
                        <li>
                            <input type="checkbox"  id="brand11" value="">
                            <label for="brand11"><span></span>Swimming Pool</label>
                        </li>
                        <li>
                            <input type="checkbox"  id="brand12" value="">
                            <label for="brand12"><span></span> Gas Pipeline</label>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="col-sm-3 check-top-single">
                <div class="single-bottom">
                    <h4>Property Status</h4>
                    <ul>
                        <li>
                            <input type="checkbox"  id="brand13" value="">
                            <label for="brand13"><span></span> Under Construction</label>
                        </li>
                        <li>
                            <input type="checkbox"  id="brand14" value="">
                            <label for="brand14"><span></span> Ready to Move</label>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>-->

    <!---->
    <div class="container">

        <div class="buy-single">
            <h3>Residential Flats, Apartments</h3>

            <div class="box-sin">
                <div class="col-md-9 single-box">
                    <c:forEach var="toBuy" items="${propertiesToBuy.rows}">
                        <div class="box-col">
                            <div class=" col-sm-7 left-side ">
                               <c:if test="${queryString eq 2}">
                                     <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath2}${toBuy.property_name}7.jpg" alt=""></a>
                                     
                                 </c:if>
                                 <c:if test="${queryString eq 3}">
                                     <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath3}${toBuy.property_name}7.jpg" alt=""></a>
                                     </c:if>
                                     <c:if test="${queryString eq 4}">
                                     <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath4}${toBuy.property_name}7.jpg" alt=""></a>
                                     </c:if>
                                     <c:if test="${queryString eq 5}">
                                     <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath5}${toBuy.property_name}7.jpg" alt=""></a>
                                     </c:if>
                                     <c:if test="${queryString eq 6}">
                                     <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath6}${toBuy.property_name}7.jpg" alt=""></a>
                                     </c:if>
                                     <c:if test="${queryString eq 1}">
                                     <a href="single?${toBuy.idREALPROPERTIES}"> <img class="img-responsive" src="${initParam.hostelPropertyImagePath}${toBuy.property_name}7.jpg" alt=""></a>
                                     </c:if>

               
                                
                            </div>				
                            <div class="  col-sm-5 middle-side">
                                <h4>${toBuy.property_name}</h4>
                                <p><span class="bath">Bed </span>: <span class="two">${toBuy.bedroom} BHK</span></p>
                                <p>  <span class="bath1">Baths </span>: <span class="two">${toBuy.bathroom}</span></p>
                                <p><span class="bath2">Built-up Area</span>: <span class="two">${toBuy.buildup_area} Sq.Yrds</span></p>
                                <p><span class="bath3">Plot Area </span>:<span class="two"> ${toBuy.plot_area} Sq.Yrds</span></p>
                                <p><span class="bath4">Age of property</span> : <span class="two">${toBuy.age} Year(s)</span></p>
                                <p><span class="bath5">Price </span>:<span class="two"> ${toBuy.price}</span></p>				 
                                <div class="   right-side">
                                    <a href="contact?${toBuy.idAGENTS}" class="hvr-sweep-to-right more" >Contact Builder</a> 
                                   <a href="" class="hvr-sweep-to-right more" >Coming Soon</a> 
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
            <div class="col-md-3 map-single-bottom">
                <div class="map-single">
                    <c:if test="${queryString eq 1}">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7774.583982088464!2d77.63195912440038!3d13.017068563304099!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae17214bace327%3A0x83b524848c6e13d2!2sKammanahalli%2C+Bengaluru%2C+Karnataka!5e0!3m2!1sen!2sin!4v1455776698121"></iframe>						
                        </c:if>
                        <c:if test="${queryString eq 3}">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d448187.6760738299!2d76.81056003288168!3d28.645755904015665!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cfd5b347eb62d%3A0x52c2b7494e204dce!2sNew+Delhi%2C+Delhi+110001!5e0!3m2!1sen!2sin!4v1460636244760"></iframe>
                        </c:if>
                        <c:if test="${queryString eq 4}">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d471219.3180337393!2d88.08838751715692!3d22.67611440814362!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f882db4908f667%3A0x43e330e68f6c2cbc!2sKolkata%2C+West+Bengal+700001!5e0!3m2!1sen!2sin!4v1460636278877"></iframe>
                        </c:if>
                        <c:if test="${queryString eq 2}">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d241317.11609823274!2d72.7411179570966!3d19.082197839582214!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c6306644edc1%3A0x5da4ed8f8d648c69!2sMumbai%2C+Maharashtra!5e0!3m2!1sen!2sin!4v1460636104867"></iframe>
                        </c:if>
                        <c:if test="${queryString eq 5}">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248755.74504608952!2d80.06892356564077!3d13.047857223407062!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a5265ea4f7d3361%3A0x6e61a70b6863d433!2sChennai%2C+Tamil+Nadu!5e0!3m2!1sen!2sin!4v1460636340780"></iframe>
                        </c:if>
                        <c:if test="${queryString eq 6}">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d471219.3180337393!2d88.08838751715692!3d22.67611440814362!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f882db4908f667%3A0x43e330e68f6c2cbc!2sKolkata%2C+West+Bengal+700001!5e0!3m2!1sen!2sin!4v1460636278877"></iframe>						
                        </c:if>
                </div>
              
            </div>
            <div class="clearfix"> </div>
            <div class="nav-page">
                <nav>
                    <ul class="pagination">
                        <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                    </ul>
                </nav>
            </div>
        </div>

    </div>

</div>