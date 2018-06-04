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
@Table(name = "property_status")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PropertyStatus.findAll", query = "SELECT p FROM PropertyStatus p"),
    @NamedQuery(name = "PropertyStatus.findByIdPROPERTYSTATUS", query = "SELECT p FROM PropertyStatus p WHERE p.idPROPERTYSTATUS = :idPROPERTYSTATUS"),
    @NamedQuery(name = "PropertyStatus.findByStatus", query = "SELECT p FROM PropertyStatus p WHERE p.status = :status")})
public class PropertyStatus implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idPROPERTY_STATUS")
    private Integer idPROPERTYSTATUS;
    @Size(max = 45)
    @Column(name = "status")
    private String status;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPROPERTYSTATUS")
    private Collection<Realproperties> realpropertiesCollection;

    public PropertyStatus() {
    }

    public PropertyStatus(Integer idPROPERTYSTATUS) {
        this.idPROPERTYSTATUS = idPROPERTYSTATUS;
    }

    public Integer getIdPROPERTYSTATUS() {
        return idPROPERTYSTATUS;
    }

    public void setIdPROPERTYSTATUS(Integer idPROPERTYSTATUS) {
        this.idPROPERTYSTATUS = idPROPERTYSTATUS;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @XmlTransient
    public Collection<Realproperties> getRealpropertiesCollection() {
        return realpropertiesCollection;
    }

    public void setRealpropertiesCollection(Collection<Realproperties> realpropertiesCollection) {
        this.realpropertiesCollection = realpropertiesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idPROPERTYSTATUS != null ? idPROPERTYSTATUS.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PropertyStatus)) {
            return false;
        }
        PropertyStatus other = (PropertyStatus) object;
        if ((this.idPROPERTYSTATUS == null && other.idPROPERTYSTATUS != null) || (this.idPROPERTYSTATUS != null && !this.idPROPERTYSTATUS.equals(other.idPROPERTYSTATUS))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.PropertyStatus[ idPROPERTYSTATUS=" + idPROPERTYSTATUS + " ]";
    }
    
}
