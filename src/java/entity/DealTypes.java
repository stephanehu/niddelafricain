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
@Table(name = "deal_types")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DealTypes.findAll", query = "SELECT d FROM DealTypes d"),
    @NamedQuery(name = "DealTypes.findByIdDEALTYPES", query = "SELECT d FROM DealTypes d WHERE d.idDEALTYPES = :idDEALTYPES"),
    @NamedQuery(name = "DealTypes.findByName", query = "SELECT d FROM DealTypes d WHERE d.name = :name")})
public class DealTypes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idDEAL_TYPES")
    private Integer idDEALTYPES;
    @Size(max = 45)
    @Column(name = "name")
    private String name;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idDEALTYPES")
    private Collection<Realproperties> realpropertiesCollection;

    public DealTypes() {
    }

    public DealTypes(Integer idDEALTYPES) {
        this.idDEALTYPES = idDEALTYPES;
    }

    public Integer getIdDEALTYPES() {
        return idDEALTYPES;
    }

    public void setIdDEALTYPES(Integer idDEALTYPES) {
        this.idDEALTYPES = idDEALTYPES;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
        hash += (idDEALTYPES != null ? idDEALTYPES.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DealTypes)) {
            return false;
        }
        DealTypes other = (DealTypes) object;
        if ((this.idDEALTYPES == null && other.idDEALTYPES != null) || (this.idDEALTYPES != null && !this.idDEALTYPES.equals(other.idDEALTYPES))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.DealTypes[ idDEALTYPES=" + idDEALTYPES + " ]";
    }
    
}
