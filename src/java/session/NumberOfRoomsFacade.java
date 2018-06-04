/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.NumberOfRooms;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Stephane
 */
@Stateless
public class NumberOfRoomsFacade extends AbstractFacade<NumberOfRooms> {

    @PersistenceContext(unitName = "SmartRealEstatePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public NumberOfRoomsFacade() {
        super(NumberOfRooms.class);
    }
    
}
