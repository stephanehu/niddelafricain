/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Stephane
 */
@Entity
@Table(name = "deals")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Deals.findAll", query = "SELECT d FROM Deals d"),
    @NamedQuery(name = "Deals.findByIdDEALS", query = "SELECT d FROM Deals d WHERE d.idDEALS = :idDEALS"),
    @NamedQuery(name = "Deals.findByStatus", query = "SELECT d FROM Deals d WHERE d.status = :status"),
    @NamedQuery(name = "Deals.findByIdAgents", query = "SELECT d FROM Deals d WHERE d.idAgents = :idAgents")})
public class Deals implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idDEALS")
    @Temporal(TemporalType.TIMESTAMP)
    private Date idDEALS;
    @Column(name = "status")
    private Boolean status;
    @Lob
    @Size(max = 16777215)
    @Column(name = "message")
    private String message;
    @Column(name = "idAgents")
    private Integer idAgents;
    @JoinColumn(name = "idREALPROPERTIES", referencedColumnName = "idREALPROPERTIES")
    @ManyToOne(optional = false)
    private Realproperties idREALPROPERTIES;
    @JoinColumn(name = "CUSTOMERS_idCUSTOMERS", referencedColumnName = "idCUSTOMERS")
    @ManyToOne(optional = false)
    private Customers cUSTOMERSidCUSTOMERS;

    public Deals() {
    }

    public Deals(Date idDEALS) {
        this.idDEALS = idDEALS;
    }

    public Date getIdDEALS() {
        return idDEALS;
    }

    public void setIdDEALS(Date idDEALS) {
        this.idDEALS = idDEALS;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getIdAgents() {
        return idAgents;
    }

    public void setIdAgents(Integer idAgents) {
        this.idAgents = idAgents;
    }

    public Realproperties getIdREALPROPERTIES() {
        return idREALPROPERTIES;
    }

    public void setIdREALPROPERTIES(Realproperties idREALPROPERTIES) {
        this.idREALPROPERTIES = idREALPROPERTIES;
    }

    public Customers getCUSTOMERSidCUSTOMERS() {
        return cUSTOMERSidCUSTOMERS;
    }

    public void setCUSTOMERSidCUSTOMERS(Customers cUSTOMERSidCUSTOMERS) {
        this.cUSTOMERSidCUSTOMERS = cUSTOMERSidCUSTOMERS;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDEALS != null ? idDEALS.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Deals)) {
            return false;
        }
        Deals other = (Deals) object;
        if ((this.idDEALS == null && other.idDEALS != null) || (this.idDEALS != null && !this.idDEALS.equals(other.idDEALS))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Deals[ idDEALS=" + idDEALS + " ]";
    }
    
}
