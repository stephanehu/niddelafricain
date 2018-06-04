/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.LoanPlan;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Stephane
 */
@Stateless
public class LoanPlanFacade extends AbstractFacade<LoanPlan> {

    @PersistenceContext(unitName = "SmartRealEstatePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public LoanPlanFacade() {
        super(LoanPlan.class);
    }
    
}
