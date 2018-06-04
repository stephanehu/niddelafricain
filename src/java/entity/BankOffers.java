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
@Table(name = "bank_offers")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "BankOffers.findAll", query = "SELECT b FROM BankOffers b"),
    @NamedQuery(name = "BankOffers.findByIdBANKOFFERS", query = "SELECT b FROM BankOffers b WHERE b.idBANKOFFERS = :idBANKOFFERS"),
    @NamedQuery(name = "BankOffers.findByBankname", query = "SELECT b FROM BankOffers b WHERE b.bankname = :bankname"),
    @NamedQuery(name = "BankOffers.findBySalarial", query = "SELECT b FROM BankOffers b WHERE b.salarial = :salarial"),
    @NamedQuery(name = "BankOffers.findByMargin", query = "SELECT b FROM BankOffers b WHERE b.margin = :margin")})
public class BankOffers implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idBANK_OFFERS")
    private Integer idBANKOFFERS;
    @Size(max = 100)
    @Column(name = "bankname")
    private String bankname;
    @Size(max = 100)
    @Column(name = "salarial")
    private String salarial;
    @Size(max = 100)
    @Column(name = "margin")
    private String margin;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idBANKOFFERS")
    private Collection<LoanPlan> loanPlanCollection;

    public BankOffers() {
    }

    public BankOffers(Integer idBANKOFFERS) {
        this.idBANKOFFERS = idBANKOFFERS;
    }

    public Integer getIdBANKOFFERS() {
        return idBANKOFFERS;
    }

    public void setIdBANKOFFERS(Integer idBANKOFFERS) {
        this.idBANKOFFERS = idBANKOFFERS;
    }

    public String getBankname() {
        return bankname;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname;
    }

    public String getSalarial() {
        return salarial;
    }

    public void setSalarial(String salarial) {
        this.salarial = salarial;
    }

    public String getMargin() {
        return margin;
    }

    public void setMargin(String margin) {
        this.margin = margin;
    }

    @XmlTransient
    public Collection<LoanPlan> getLoanPlanCollection() {
        return loanPlanCollection;
    }

    public void setLoanPlanCollection(Collection<LoanPlan> loanPlanCollection) {
        this.loanPlanCollection = loanPlanCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idBANKOFFERS != null ? idBANKOFFERS.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BankOffers)) {
            return false;
        }
        BankOffers other = (BankOffers) object;
        if ((this.idBANKOFFERS == null && other.idBANKOFFERS != null) || (this.idBANKOFFERS != null && !this.idBANKOFFERS.equals(other.idBANKOFFERS))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.BankOffers[ idBANKOFFERS=" + idBANKOFFERS + " ]";
    }
    
}
