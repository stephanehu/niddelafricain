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
@Table(name = "cities")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cities.findAll", query = "SELECT c FROM Cities c"),
    @NamedQuery(name = "Cities.findByIdCITIES", query = "SELECT c FROM Cities c WHERE c.idCITIES = :idCITIES"),
    @NamedQuery(name = "Cities.findByName", query = "SELECT c FROM Cities c WHERE c.name = :name")})
public class Cities implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idCITIES")
    private Integer idCITIES;
    @Size(max = 45)
    @Column(name = "name")
    private String name;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCITIES")
    private Collection<Realproperties> realpropertiesCollection;

    public Cities() {
    }

    public Cities(Integer idCITIES) {
        this.idCITIES = idCITIES;
    }

    public Integer getIdCITIES() {
        return idCITIES;
    }

    public void setIdCITIES(Integer idCITIES) {
        this.idCITIES = idCITIES;
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
        hash += (idCITIES != null ? idCITIES.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cities)) {
            return false;
        }
        Cities other = (Cities) object;
        if ((this.idCITIES == null && other.idCITIES != null) || (this.idCITIES != null && !this.idCITIES.equals(other.idCITIES))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Cities[ idCITIES=" + idCITIES + " ]";
    }
    
}
