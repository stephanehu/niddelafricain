/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.Deals;
import java.util.Date;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Stephane
 */
@Stateless
@TransactionManagement(TransactionManagementType.CONTAINER)
public class DealsManager {

    @EJB
    private DealsFacade dealsFacade;

    @EJB
    private RealpropertiesFacade realpropertiesFacade;

    @EJB
    private AgentsFacade agentsFacade;

    @EJB
    private CustomersFacade customersFacade;

    @PersistenceContext(unitName = "SmartRealEstatePU")
    private EntityManager em;

    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public Date makeDeals(int parseInt, int parseInt0, int parseInt1, boolean b, String mess) {
        Deals deals = new Deals();
        try {
            deals.setIdDEALS(new Date());
            deals.setCUSTOMERSidCUSTOMERS(customersFacade.find(parseInt));
            deals.setIdAgents(parseInt0);
            deals.setIdREALPROPERTIES(realpropertiesFacade.find(parseInt1));
            deals.setMessage(mess);
            deals.setStatus(b);
            em.persist(deals);
        } catch (Exception e) {
            return null;
        }
        System.out.println(parseInt + " " + parseInt0 + " " + parseInt1 + " " + mess);
        return deals.getIdDEALS();
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    public void persist(Object object) {
        em.persist(object);
    }
}
