/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Stephane
 */
@Entity
@Table(name = "loan_plan")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LoanPlan.findAll", query = "SELECT l FROM LoanPlan l"),
    @NamedQuery(name = "LoanPlan.findByIdLOANPLAN", query = "SELECT l FROM LoanPlan l WHERE l.idLOANPLAN = :idLOANPLAN"),
    @NamedQuery(name = "LoanPlan.findByPayDuring", query = "SELECT l FROM LoanPlan l WHERE l.payDuring = :payDuring"),
    @NamedQuery(name = "LoanPlan.findByLtv", query = "SELECT l FROM LoanPlan l WHERE l.ltv = :ltv"),
    @NamedQuery(name = "LoanPlan.findByPercent", query = "SELECT l FROM LoanPlan l WHERE l.percent = :percent")})
public class LoanPlan implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idLOAN_PLAN")
    private Integer idLOANPLAN;
    @Size(max = 100)
    @Column(name = "pay_during")
    private String payDuring;
    @Size(max = 20)
    @Column(name = "ltv")
    private String ltv;
    @Size(max = 20)
    @Column(name = "percent")
    private String percent;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idLOANPLAN")
    private Collection<Realproperties> realpropertiesCollection;
    @JoinColumn(name = "idBANK_OFFERS", referencedColumnName = "idBANK_OFFERS")
    @ManyToOne(optional = false)
    private BankOffers idBANKOFFERS;

    public LoanPlan() {
    }

    public LoanPlan(Integer idLOANPLAN) {
        this.idLOANPLAN = idLOANPLAN;
    }

    public Integer getIdLOANPLAN() {
        return idLOANPLAN;
    }

    public void setIdLOANPLAN(Integer idLOANPLAN) {
        this.idLOANPLAN = idLOANPLAN;
    }

    public String getPayDuring() {
        return payDuring;
    }

    public void setPayDuring(String payDuring) {
        this.payDuring = payDuring;
    }

    public String getLtv() {
        return ltv;
    }

    public void setLtv(String ltv) {
        this.ltv = ltv;
    }

    public String getPercent() {
        return percent;
    }

    public void setPercent(String percent) {
        this.percent = percent;
    }

    @XmlTransient
    public Collection<Realproperties> getRealpropertiesCollection() {
        return realpropertiesCollection;
    }

    public void setRealpropertiesCollection(Collection<Realproperties> realpropertiesCollection) {
        this.realpropertiesCollection = realpropertiesCollection;
    }

    public BankOffers getIdBANKOFFERS() {
        return idBANKOFFERS;
    }

    public void setIdBANKOFFERS(BankOffers idBANKOFFERS) {
        this.idBANKOFFERS = idBANKOFFERS;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idLOANPLAN != null ? idLOANPLAN.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof LoanPlan)) {
            return false;
        }
        LoanPlan other = (LoanPlan) object;
        if ((this.idLOANPLAN == null && other.idLOANPLAN != null) || (this.idLOANPLAN != null && !this.idLOANPLAN.equals(other.idLOANPLAN))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.LoanPlan[ idLOANPLAN=" + idLOANPLAN + " ]";
    }
    
}
