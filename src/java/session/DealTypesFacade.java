/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.DealTypes;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Stephane
 */
@Stateless
public class DealTypesFacade extends AbstractFacade<DealTypes> {

    @PersistenceContext(unitName = "SmartRealEstatePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public DealTypesFacade() {
        super(DealTypes.class);
    }
    
}
