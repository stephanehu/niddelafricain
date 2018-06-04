<%-- 
    Document   : agent
    Created on : Feb 4, 2016, 8:38:59 AM
    Author     : Stephane
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:if test="${ agents eq null}">
    <div class="login-right">
        <div class="container">
            <h3 id="there">Login:
                <c:if test="${!empty newAgent}">
                    Username: ${newAgent.email} Password:${newAgent.phone}
                </c:if></h3>
            </h3>
            <div class="login-top">
                <ul class="login-icons">
                    <li><a href="http://www.facebook.com" ><i class="facebook"> </i><span>Facebook</span></a></li>
                    <li><a href="http://www.twitter.com" class="twit"><i class="twitter"></i><span>Twitter</span></a></li>
                    <li><a href="http://www.google.com" class="go"><i class="google"></i><span>Google +</span></a></li>
                    <li><a href="http://www.linkedin.com" class="in"><i class="linkedin"></i><span>Linkedin</span></a></li>
                    <div class="clearfix"> </div>
                </ul>
                <div class="form-info">
                    <form action="sign_agent" method="post">
                        <input type="text" class="text" name="emailid" placeholder="Email Adress" required="true">
                        <input type="password"   name="phone" placeholder="Password" required="true">
                        <label class="hvr-sweep-to-right">
                            <input type="submit" value="Submit">
                        </label>
                    </form>
                </div>
                <div class="create">
                    <h4>New To Real Home?</h4>
                    <a class="hvr-sweep-to-right" href="#here">Create an Account</a>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </div>
    <div class="login-right">
        <div class="container">
            <h3 id="here">Register 

                <c:if test="${!empty validation}">

                    <span class="error smallText"><c:set var="validationErrorMessage" value="${'Please Fill properly the mentioned fields'}"/>

                        <c:if test="${!empty nameError}">
                            <br><span class="indent"><c:set var="firstnameErrorMessage" value="${'First Name length must be less than 45 but not empty'}"/></span>
                        </c:if>
                        <c:if test="${!empty officenameError}">
                            <br><span class="indent"><c:set var="officenameErrorMessage" value="${'Last Name length must be less than 45 but not empty'}"/></span>
                        </c:if>
                        <c:if test="${!empty emailError}">
                            <br><span class="indent"><c:set var="emailErrorMessage" value="${' Email must be on xxxxx@xxxxxx.xxx format'}"/></span>
                        </c:if>
                        <c:if test="${!empty emailofficelError}">
                            <br><span class="indent"><c:set var="officeemailErrorMessage" value="${' Email must be on xxxxx@xxxxxx.xxx format'}"/></span>
                        </c:if>
                        <c:if test="${!empty phoneError}">
                            <br><span class="indent"><c:set var="phoneErrorMessage" value="${' Phone number must be on ddd-(ddd)-dddd format'}"/></span>
                        </c:if>
                        <c:if test="${!empty addressError}">
                            <br><span class="indent"> <c:set var="addressErrorMessage" value="${'Address lenght must be less 130'}"/> </span>
                        </c:if>
                        <c:if test="${!empty infoError}">
                            <br><span class="indent"><c:set var="infoErrorMessage" value="${'Password must not exceed 15'}"/></span>
                        </c:if>
                        <c:if test="${!empty landlineError}">
                            <br><span class="indent"><c:set var="landlineErrorMessage" value="${'Confirm must match Password'}"/></span>
                        </c:if>

                    </span> 

                    <a href="#openModal">Please Check what went wrong </a>

                    <div id="openModal" class="modalDialog">
                        <div>
                            <a href="#close" title="Close" class="close">X</a>
                            <table class="table table-striped">
                                <thead>
                                <th>Field</th>
                                <th>Mistake</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Agent Name</td>
                                        <td>${nameErrorMessage}</td>
                                    </tr>
                                    <tr>
                                        <td>Last Name</td>
                                        <td>${officenameErrorMessage}</td>
                                    </tr>
                                    <tr>
                                        <td>Email Id</td>
                                        <td>${emailErrorMessage}</td>
                                    </tr>
                                    <tr>
                                        <td>Office Email Id</td>
                                        <td>${officeemailErrorMessage}</td>
                                    </tr>
                                    <tr>
                                        <td>Phone Number</td>
                                        <td>${phoneErrorMessage} </td>
                                    </tr>
                                    <tr>
                                        <td>Office Address</td>
                                        <td>${addressErrorMessage}</td>
                                    </tr>
                                    <tr>
                                        <td>Info</td>
                                        <td>${infoErrorMessage}</td>
                                    </tr>
                                    <tr>
                                        <td>Land Line</td>
                                        <td>${landlineErrorMessage}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </c:if> 
                <div class="login-top">
                    <ul class="login-icons">
                        <li><a href="http://www.facebook.com" ><i class="facebook"> </i><span>Facebook</span></a></li>
                        <li><a href="http://www.twitter.com" class="twit"><i class="twitter"></i><span>Twitter</span></a></li>
                        <li><a href="http://www.google.com" class="go"><i class="google"></i><span>Google +</span></a></li>
                        <li><a href="http://www.linkedin.com" class="in"><i class="linkedin"></i><span>Linkedin</span></a></li>
                        <div class="clearfix"> </div>
                    </ul>
                    <div class="form-info">
                        <form action="reg_agent" method="post">
                            <input type="text"  name="name" placeholder=" Agent Name" required="true" >
                            <input type="text"  name="officeName"  placeholder="Office Name" required="true" >
                            <input type="email" name="email"  placeholder="Email Adress" required="true" >
                            <input type="email" name="officeEmail" placeholder="Office Email " required="true">
                            <input type="text" name="officeAddress"  placeholder="Office Address" required="true" >
                            <input type="text"  name="phone" placeholder="Phone Number " required="true">
                            <input type="text" name="officeLandline"  placeholder="Office LandLine " required="true">
                            <textarea class="form-control" name="info"  placeholder="Message" requried="true">
                        
                            </textarea>
                            <label class="hvr-sweep-to-right">
                                <input type="submit" value="Sign Up">
                            </label>
                        </form>
                        <c:if test="${!empty message}">
                            <p>${message}</p>
                        </c:if>
                        <p>Already have a Real Home account? <a href="#there">Login</a></p>
                    </div>			
                </div>
        </div>
    </div>
</c:if>
<c:if test="${agents ne null}">
    <div class="login-right">
        <div class="container">
            <h3 id="here">Welcome Mr. ${agents.name} of ${agents.officeName}</h3>
            <div class="login-top">
                <ul class="login-icons">
                    <li><a href="viewDeals" ><i class="facebook"> </i><span>View Deals</span></a></li>
                    <li id="now"><a href="uploadHouse" class="twit"><i class="twitter"></i><span>New House</span></a></li>                    
                    <div class="clearfix"> </div>
                </ul>

                <h2> ${myMsg}</h2>
                <div class="form-info">
                    <c:if test="${deals ne null}">
                        <table class=" table table-striped">
                            <thead>
                            <th>Status</th>
                            <th>Message</th>
                            <th>Customer</th>
                            <th>Property</th>                       
                            </thead>
                            <tbody>
                                <c:forEach var="deal" items="${deals}">
                                    <tr>
                                        <c:if test="${status eq false}">
                                            <td>On Deal</td>
                                        </c:if>
                                        <c:if test="${status ne false}">
                                            <td>Dealed</td>
                                        </c:if>
                                        <td>${deal.message}</td>
                                        <td>${deal.idREALPROPERTIES.propertyName}</td>
                                        <td>${deal.idREALPROPERTIES.idNUMBEROFROOMS.name}</td>
                                        <td><img class="img img-responsive" src="images/${deal.idREALPROPERTIES.propertyName}.png" alt="${deal.idREALPROPERTIES.propertyName}"/></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table> 
                    </c:if>
                    <c:if test="${uploadHouse ne null}">
                        <c:if test="${!empty newHouse }">
                            ${newHouse}
                        </c:if>
                        <fieldset style="border:solid 2px #0e83cd">
                            <legend class="center-block">Add New Property</legend>
                            <form  role="form" action="upload" method="post">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <input class="form-control" type="text"  name="name" placeholder=" Property Name" required="true"/> 
                                        <input class="form-control" type="number"  name="bedroom"  placeholder="Bedroom Number" required="true"/> 
                                        <input class="form-control"  type="number" name="bathroom"  placeholder="Bathroom Number" required="true" />
                                        <input class="form-control" type="number" name="builtup" placeholder="Build Up Area " required="true"/>

                                    </div>
                                    <div class="col-sm-6">
                                        <select class="form-control" name="propertyType" required="true">
                                            <option class="form-control">Select The Type of Property</option>
                                            <c:forEach var="propType" items="${propTypes}">
                                                <option class="form-control" value="${propType.idPROPERTYTYPES}">${propType.name}</option>
                                            </c:forEach>
                                        </select>
                                        <select class="form-control" name="numberofRoom" required="true">
                                            <option class="form-control">Select BHK Description</option>
                                            <c:forEach var="bhk" items="${bhkRooms}">
                                                <option class="form-control" value="${bhk.idNUMBEROFROOMS}">${bhk.name}</option>
                                            </c:forEach>
                                        </select>
                                        <select class="form-control" name="amanties" required="true">
                                            <option class="form-control">Select Amenties</option>
                                            <c:forEach var="amentie" items="${amenties}">
                                                <option class="form-control" value="${amentie.idAMENTIES}">Lift: ${amentie.lift} Gym: ${amentie.gym} Swim: ${amentie.swimmingpool}  Gaze: ${amentie.gazpipeline} Garage: ${amentie.garage} </option>
                                            </c:forEach>
                                        </select>


                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <input class="form-control" type="number"  name="age" placeholder=" Property Age" required="true" />
                                        <input class="form-control" type="number"  name="plotarea" placeholder=" Plot Area" required="true" />
                                        <input class="form-control" type="text"  name="description"  placeholder="Description" required="true" />
                                        <input class="form-control"  type="text" name="address"  placeholder=" Adress" required="true" />
                                        <input class="form-control" type="number" name="price" placeholder="Price " required="true"/>
                                    </div>
                                    <div class="col-sm-6">
                                        <select class="form-control" name="city" required="true">
                                            <option class="form-control">Select City </option>
                                            <c:forEach var="city" items="${cities}">
                                                <option class="form-control" value="${city.idCITIES}">${city.name}</option>
                                            </c:forEach>
                                        </select>
                                        <select class="form-control" name="propStatus" required="true">
                                            <option class="form-control">Select Status Description</option>
                                            <c:forEach var="stat" items="${statuco}">
                                                <option class="form-control" value="${stat.idPROPERTYSTATUS}">${stat.status}</option>
                                            </c:forEach>
                                        </select>
                                        <select class="form-control" name="dealType" required="true">
                                            <option class="form-control">Select deal Description</option>
                                            <c:forEach var="dealed" items="${dealers}">
                                                <option class="form-control" value="${dealed.idDEALTYPES}">${dealed.name}</option>
                                            </c:forEach>
                                        </select>
                                        <select class="form-control" name="loanPlan" required="true">
                                            <option class="form-control">Select loan Description </option>
                                            <c:forEach var="plan" items="${loanplans}">
                                                <option class="form-control" value="${plan.idLOANPLAN}">Period: ${plan.payDuring} LTV: ${plan.ltv}  Percent: ${plan.percent} Bank: ${plan.idBANKOFFERS.bankname} Salary: ${plan.idBANKOFFERS.salarial}  Margin: ${plan.idBANKOFFERS.margin}</option>
                                            </c:forEach>
                                        </select>


                                    </div> 

                                </div>
                                <div class="row">
                                    <div class="col-sm-6">  
                                        <input class="form-control" type="file" src="image300x200"   placeholder="image 300x200" required="false"/>
                                        <input class="form-control" type="file"  name="image400x316" placeholder="image 400x316" required="false"/>
                                        <input class="form-control" type="file"  name="image900x420" placeholder="image 900x420" required="false"/>
                                        <input class="form-control" type="file"  name="image900x4201" placeholder="image 900x420" required="false"/>


                                    </div> 
                                    <div class="col-sm-6">                                  
                                        <input class="form-control" type="file" src="image900x4202"   placeholder="image 900x420" required="fasle"/>
                                        <input class="form-control" type="file"  src="" name="image900x4203" placeholder="image 900x420" required="false"/>
                                        <input class="form-control" type="file" src="" name="image900x4207" placeholder="image 900x420" required="false"/>
                                        <label class="hvr-sweep-to-right">
                                            <input type="submit" value="Sign Up">
                                        </label>
                                    </div> 
                                </div>

                            </form> 
                        </fieldset>
                    </c:if>
                </div>			
            </div>
        </div>
    </div>
</c:if>  

<c:if test="${agentProperties ne null}">
    <div class="dealers">
        <div class="container">
            <div class="dealer-top">
                <h4>Recent Deals</h4>
                <div class="deal-top-top">
                    <c:forEach var="property" items="${agentProperties}">
                        <div class="col-md-3 top-deal-top">

                            <div class=" top-deal">
                                <a href="single?${property.idREALPROPERTIES}" class="mask"><img src="images/${property.propertyName}.jpg" class="img-responsive zoom-img" alt=""></a>
                                <div class="deal-bottom">
                                    <div class="top-deal1">
                                        <h5><a href="single?${property.idREALPROPERTIES}">${property.propertyName}</a></h5>
                                        <p>Plot Area :${property.plotArea} Sq.Yrds</p>
                                        <p>Price: $ ${property.price}</p>
                                        <p>Customers in Contact: ${property.propertyName}</p>
                                    </div>
                                    <div class="top-deal2">
                                        <a href="more?${property.idREALPROPERTIES}" class="hvr-sweep-to-right more">More</a>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="clearfix"> </div>
                </div>		

            </div>
        </div></div>
    </c:if>

