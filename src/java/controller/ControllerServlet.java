/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Agents;
import entity.Customers;
import entity.Deals;
import entity.Realproperties;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.AgentsFacade;
import session.AmentiesFacade;
import session.BankOffersFacade;
import session.CitiesFacade;
import session.CustomersFacade;
import session.DealTypesFacade;
import session.DealsFacade;
import session.DealsManager;
import session.LoanPlanFacade;
import session.NumberOfRoomsFacade;
import session.PropertyStatusFacade;
import session.PropertyTypesFacade;
import session.RealpropertiesFacade;

import validator.Validator;

/**
 *
 * @author Stephane
 */
@WebServlet(name = "ControllerServlet",
        loadOnStartup = 1,
        urlPatterns = {
            //path to compute customer request
            "/signup",
            "/logout",
            "/signin",
            "/account",
            "/contact",
            //path to compute search and selection request
            "/contactAgent",
            "/single",
            "/loan",
            "/city",
            "/city_rent",
            "/city_hostel",
            "/city_resale",
            "/buy_property",
            "/rent_property",
            "/hostel_property",
            "/resale_property",
            "/viewcustDeals",
            //path to compute agent request
            "/agent",
            "/sign_agent",
            "/reg_agent",
            "/log_agent",
            "/viewDeals",
            "/more",
            "/uploadHouse",
            "/upload"})
public class ControllerServlet extends HttpServlet {

    @EJB
    private RealpropertiesFacade realpropertiesFacade;

    @EJB
    private CitiesFacade citiesFacade;

    @EJB
    private DealTypesFacade dealTypesFacade;

    @EJB
    private BankOffersFacade bankOffersFacade;

    @EJB
    private AmentiesFacade amentiesFacade;

    @EJB
    private LoanPlanFacade loanPlanFacade;

    @EJB
    private PropertyStatusFacade propertyStatusFacade;

    @EJB
    private NumberOfRoomsFacade numberOfRoomsFacade;

    @EJB
    private PropertyTypesFacade propertyTypesFacade;

    @EJB
    private DealsFacade dealsFacade;

    @EJB
    private AgentsFacade agentsFacade;

    @EJB
    private DealsManager dealsManager;

    @EJB
    private CustomersFacade customersFacade;

    private Customers customers;
    private Agents agents;

    @Override
    public void init() throws ServletException {
        super.init();
        this.getServletContext().setAttribute("propTypes", propertyTypesFacade.findAll());
        this.getServletContext().setAttribute("bhkRooms", numberOfRoomsFacade.findAll());
        this.getServletContext().setAttribute("amenties", amentiesFacade.findAll());
        this.getServletContext().setAttribute("statuco", propertyStatusFacade.findAll());
        this.getServletContext().setAttribute("dealers", dealTypesFacade.findAll());
        this.getServletContext().setAttribute("loanplans", loanPlanFacade.findAll());
        this.getServletContext().setAttribute("cities", citiesFacade.findAll());
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String urlPath = request.getServletPath();
        HttpSession session = request.getSession();

        if (urlPath.equals("/single")) {
            String queryString = request.getQueryString();

            request.setAttribute("queryString", queryString);

        } else if (urlPath.equals("/contact")) {

            // String queryString = request.getQueryString();
            String agent = request.getParameter("agent");
            String properties = request.getParameter("property");
            request.setAttribute("queryString", agent);
            request.setAttribute("dealedproperty", properties);

        }
        if (urlPath.equals("/account")) {
//            String queryString = request.getQueryString();
//            request.setAttribute("queryString", queryString);

        } else if (urlPath.equals("/viewcustDeals")) {
            //  String queryString = request.getQueryString();
            List<Deals> custDeals = new ArrayList<>();
            for (Deals deal : dealsFacade.findAll()) {
                if (Objects.equals(deal.getCUSTOMERSidCUSTOMERS().getIdCUSTOMERS(), customers.getIdCUSTOMERS())) {
                    custDeals.add(deal);
                }
            }
            System.out.println(custDeals.size());
            if (custDeals.size() > 0) {
                request.setAttribute("customerDeals", custDeals);
            }

            //request.setAttribute("queryString", queryString);
            urlPath = "/account";

        } else if (urlPath.equals("/loan")) {
            String queryString = request.getQueryString();
             String plan = request.getParameter("plan");
            request.setAttribute("queryString", plan);

        } else if (urlPath.equals("/agent")) {
//            String queryString = request.getQueryString();
//            request.setAttribute("queryString", queryString);

        } else if (urlPath.equals("/viewDeals")) {
            String queryString = request.getQueryString();
            try {
                Collection<Realproperties> properties = agents.getRealpropertiesCollection();

                request.setAttribute("agentProperties", properties);

                request.setAttribute("queryString", queryString);
                urlPath = "/agent";
            } catch (Exception e) {
            }
        } else if (urlPath.equals("/more")) {
            String queryString = request.getQueryString();

            List<Deals> dealList = new ArrayList<>();
            try {
                for (Deals deals : dealsFacade.findAll()) {
                    if (deals.getIdREALPROPERTIES().getIdREALPROPERTIES() == Integer.parseInt(queryString)) {
                        int i = deals.getCUSTOMERSidCUSTOMERS().getIdCUSTOMERS();
                        System.out.println(" " + i);
                        dealList.add(deals);
                    }
                }
            } catch (Exception e) {
            }
            if (dealList.size() > 0) {
                request.setAttribute("deals", dealList);
            } else {
                request.setAttribute("myMsg", "Nothing for now, we beleive that a customer will contact you, they always contact!");
            }

            request.setAttribute("queryString", queryString);
            urlPath = "/agent";
        } else if (urlPath.equals("/city")) {
            String queryString = request.getQueryString();
            request.setAttribute("queryString", queryString);

        } else if (urlPath.equals("/city_rent")) {
            String queryString = request.getQueryString();
            request.setAttribute("queryString", queryString);
            urlPath = "/city_rent";
        } else if (urlPath.equals("/city_resale")) {
            String queryString = request.getQueryString();
            request.setAttribute("queryString", queryString);
            urlPath = "/city_resale";
        } else if (urlPath.equals("/city_hostel")) {
            String queryString = request.getQueryString();
            request.setAttribute("queryString", queryString);
            urlPath = "/city_hostel";
        } else if (urlPath.equals("/buy_property")) {
            urlPath = "/buyproperty";
            String queryString = request.getQueryString();
            request.setAttribute("queryString", queryString);

        } else if (urlPath.equals("/rent_property")) {
            urlPath = "/rentproperty";
            String queryString = request.getQueryString();
            request.setAttribute("queryString", queryString);

        } else if (urlPath.equals("/hostel_property")) {
            urlPath = "/hostel";
            String queryString = request.getQueryString();
            request.setAttribute("queryString", queryString);

        } else if (urlPath.equals("/resale_property")) {
            urlPath = "/resale";
            String queryString = request.getQueryString();
            request.setAttribute("queryString", queryString);

        } else if (urlPath.equals("/uploadHouse")) {
            request.setAttribute("uploadHouse", "yeah");
            urlPath = "/agent";
        } else if (urlPath.equals("/logout")) {
            session.invalidate();
            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            return;
        } else if (urlPath.equals("/log_agent")) {
            session.invalidate();
            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            return;
        }

        String url = "/WEB-INF" + urlPath + ".jsp";
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String urlPath = request.getServletPath();
        HttpSession session = request.getSession();

        if (urlPath.equals("/signup")) {

            String firstName = request.getParameter("firstname");
            String lastName = request.getParameter("lastname");
            String password = request.getParameter("pword");
            String confirmPwd = request.getParameter("confirmPword");
            String email = request.getParameter("emailid");
            String phone = request.getParameter("phone");
            String sal = request.getParameter("salary");
            try {
                for (Customers cust : customersFacade.findAll()) {
                    if (cust.getEmail().equals(email)) {
                        customers = cust;
                        break;
                    }
                }
            } catch (Exception e) {
            }
            if (customers != null) {
                request.setAttribute("message", "Please Customer already exists signup with other email id!");
                getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
                return;
            }
            double salary = 0;
            try {
                salary = Double.valueOf(sal);
            } catch (Exception e) {
                salary = 0;
            }

            boolean validation = false;
            validation = new Validator().validateRegisterForm(firstName, lastName, email, phone, salary, password, confirmPwd, request);

            // if validation error found, return user to checkout
            if (validation == true) {
                request.setAttribute("validation", validation);
                getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
                return;
            }
            if (customers == null) {
                customers = new Customers();
                customers.setFirstName(firstName);
                customers.setLastName(lastName);
                customers.setEmail(email);
                customers.setPhone(phone);
                customers.setPassword(password);
                customers.setSalary(salary);
                try {
                    customersFacade.create(customers);
                } catch (Exception e) {
                }
            }
            request.setAttribute("custom", customers);
            getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
            return;
            //Validators.validateFormRegister( request);
        } else if (urlPath.equals("/contactAgent")) {
            String cust = request.getParameter("customerId");
            String agent = request.getParameter("agentId");
            String prop = request.getParameter("dealedPropertyId");
            String mess = request.getParameter("msg1");
            try {
                Date date = dealsManager.makeDeals(Integer.parseInt(cust), Integer.parseInt(agent), Integer.parseInt(prop), false, mess);
                if (date == null) {
                    request.setAttribute("msg", "failed to send message to the agent");
                } else {
                    request.setAttribute("msg", "You will be contacted by the agent later on.\n Kindly SmartRealEstate");
                    request.setAttribute("closeup", "yeah");
                }
            } catch (Exception e) {
            }

            urlPath = "/contact";

        } else if (urlPath.equals("/signin")) {
            String email = request.getParameter("emailid");
            String password = request.getParameter("pword");
            try {
                for (Customers cust : customersFacade.findAll()) {
                    if (cust.getEmail().equals(email) && cust.getPassword().equals(password)) {
                        customers = cust;
                        break;
                    }
                }
            } catch (Exception e) {
            }
            if (customers != null) {
                session.setAttribute("customer", customers);
                getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("message", "Please register identification does not match with any customer");
                getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
                return;
            }
        } else if (urlPath.equals("/reg_agent")) {

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String info = request.getParameter("info");
            String officeName = request.getParameter("officeName");
            String EmailOffice = request.getParameter("officeEmail");
            String AddressOffice = request.getParameter("officeAddress");
            String landLineOffice = request.getParameter("officeLandline");

            try {
                for (Agents agt : agentsFacade.findAll()) {
                    if (agt.getEmail().equals(email)) {
                        agents = agt;
                        break;
                    }
                }
            } catch (Exception e) {
            }
            if (agents != null) {
                request.setAttribute("message", "Please agent already exists signup with other email id!");
                getServletContext().getRequestDispatcher("/WEB-INF/agent.jsp").forward(request, response);
                return;
            }

            boolean validation = false;
            validation = new Validator().validateAgentRegisterForm(name, officeName, email, phone, info, EmailOffice, AddressOffice, landLineOffice, request);

            // if validation error found, return user to checkout
            if (validation == true) {
                request.setAttribute("validation", validation);
                getServletContext().getRequestDispatcher("/WEB-INF/agent.jsp").forward(request, response);
                return;
            }
            if (agents == null) {
                agents = new Agents();
                agents.setName(name);
                agents.setPhone(phone);
                agents.setEmail(email);
                agents.setInfo(info);

                agents.setOfficeName(officeName);
                agents.setEmailOffice(EmailOffice);
                agents.setLandlineOffice(landLineOffice);
                agents.setOfficeAddress(AddressOffice);
                try {
                    agentsFacade.create(agents);
                    request.setAttribute("newAgent", agents);
                } catch (Exception e) {

                }
            }
            getServletContext().getRequestDispatcher("/WEB-INF/agent.jsp").forward(request, response);
            return;
            //Validators.validateFormRegister( request);
        } else if (urlPath.equals("/sign_agent")) {
            String email = request.getParameter("emailid");
            String phone = request.getParameter("phone");
            try {
                for (Agents agent : agentsFacade.findAll()) {
                    if (agent.getEmail().equals(email) && agent.getPhone().equals(phone)) {
                        agents = agent;
                        break;
                    }
                }
            } catch (Exception e) {
            }
            if (agents != null) {
                session.setAttribute("agents", agents);
                getServletContext().getRequestDispatcher("/WEB-INF/agent.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("message", "Please register identification does not match with any customer");
                getServletContext().getRequestDispatcher("/WEB-INF/agent.jsp").forward(request, response);
            }
        } else if (urlPath.equals("/upload")) {
            String propertyName = request.getParameter("name");
            String bedroom = request.getParameter("bedroom");
            String bathroom = request.getParameter("bathroom");
            String builtup = request.getParameter("builtup");

            String propertyType = request.getParameter("propertyType");
            String numberofroom = request.getParameter("numberofRoom");
            String amenties = request.getParameter("amanties");
            String city = request.getParameter("city");
            String propStatus = request.getParameter("propStatus");
            String dealType = request.getParameter("dealType");
            String lonPlan = request.getParameter("loanPlan");

            String age = request.getParameter("age");
            String plotarea = request.getParameter("plotarea");
            String address = request.getParameter("address");
            String description = request.getParameter("description");
            String price = request.getParameter("price");

//            String image32 = request.getParameter("image300x200");
////            String image43 = request.getParameter("image400x316");
////            String image94 = request.getParameter("image900x420");
////            String image941 = request.getParameter("image900x4201");
////            String image942 = request.getParameter("image900x4202");
////            String image943 = request.getParameter("image900x4203");
////            String image947 = request.getParameter("image900x4207");
//            System.out.println("Image : " + image32 );
//            try{
//            Path target= Paths.get(("C:\\Users\\Stephane\\Documents\\NetBeansProjects\\SmartRealEstate\\web\\images\\buy\\bangalore"));
//           //File file = new File("C:\\image\\"+""+image32);
//            Path source=Paths.get("..\\"+image32);
//            Files.copy(source, target,StandardCopyOption.REPLACE_EXISTING);
//            }catch(IOException oi){
//                System.out.println(Paths.get(image32).toAbsolutePath());
//            }
//boolean validation = false;
            //validation = new Validator().validatePropertyForm(propertyName, bathroom, bedroom, builtup, age, address, plotarea, price, request);
            // if validation error found, return user to checkout
//            if (validation == true) {
//                request.setAttribute("validation", validation);
//                getServletContext().getRequestDispatcher("/WEB-INF/agent.jsp").forward(request, response);
//                return;
//            }
//            if (agents == null) {
//                
//                try {
//                    agentsFacade.create(agents);
//                    request.setAttribute("newAgent", agents);
//                } catch (Exception e) {
//
//                }
            Realproperties realproperties = new Realproperties();
            try {
                realproperties.setPropertyName(propertyName);
                realproperties.setAddress(address);
                realproperties.setAge(Integer.valueOf(age));
                realproperties.setBathroom(Integer.valueOf(bathroom));
                realproperties.setBedroom(Integer.valueOf(bedroom));
                realproperties.setBuildupArea(Integer.valueOf(builtup));
                realproperties.setDescription(description);
                realproperties.setPrice(Double.valueOf(price));
                realproperties.setPlotArea(Integer.valueOf(plotarea));
                realproperties.setIdAGENTS(agents);
                realproperties.setIdLOANPLAN(loanPlanFacade.find(Integer.valueOf(lonPlan)));
                realproperties.setIdNUMBEROFROOMS(numberOfRoomsFacade.find(Integer.valueOf(numberofroom)));
                realproperties.setIdCITIES(citiesFacade.find(Integer.valueOf(city)));
                realproperties.setIdAMENTIES(amentiesFacade.find(Integer.valueOf(amenties)));
                realproperties.setIdDEALTYPES(dealTypesFacade.find(Integer.valueOf(dealType)));
                realproperties.setIdPROPERTYTYPES(propertyTypesFacade.find(Integer.valueOf(propertyType)));
                realproperties.setIdPROPERTYSTATUS(propertyStatusFacade.find(Integer.valueOf(propStatus)));

                realpropertiesFacade.create(realproperties);
            } catch (Exception e) {

            }
            urlPath = "/agent";
            request.setAttribute("newHouse", "New House Added : Share Your Deal");
        }

        String url = "/WEB-INF" + urlPath + ".jsp";
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public static boolean uploadHouse(String dealType, String city) {
        switch (dealType) {
            case "buy":

                break;
            case "rent":
                break;
            case "resale":
                break;
            case "hostel":
                break;
            case "project":
                break;

        }
        return false;
    }

    public static boolean saveImage(String city, String img32, String img43, String img94, String img941, String img942, String img943, String img947) {

        Path target = Paths.get(("C:\\Users\\Stephane\\Documents\\NetBeansProjects\\SmartRealEstate\\web\\images\\buy\\" + city));
        try {

            switch (city) {
                case "Bangalore":
                    Files.copy(Paths.get(img32), target, StandardCopyOption.REPLACE_EXISTING);
                    Files.copy(Paths.get(img43), target, StandardCopyOption.REPLACE_EXISTING);
                    Files.copy(Paths.get(img94), target, StandardCopyOption.REPLACE_EXISTING);
                    Files.copy(Paths.get(img941), target, StandardCopyOption.REPLACE_EXISTING);
                    Files.copy(Paths.get(img942), target, StandardCopyOption.REPLACE_EXISTING);
                    Files.copy(Paths.get(img943), target, StandardCopyOption.REPLACE_EXISTING);
                    Files.copy(Paths.get(img947), target, StandardCopyOption.REPLACE_EXISTING);
                    break;
                case "Mumbai":
                    break;
                case "Mysore":
                    break;
                case "Chennai":
                    break;
                case "Kolkota":
                    break;
                case "DHELI":
                    break;
            }
        } catch (IOException io) {

        }
        return false;
    }

}
