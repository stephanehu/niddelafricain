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
@Table(name = "property_types")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PropertyTypes.findAll", query = "SELECT p FROM PropertyTypes p"),
    @NamedQuery(name = "PropertyTypes.findByIdPROPERTYTYPES", query = "SELECT p FROM PropertyTypes p WHERE p.idPROPERTYTYPES = :idPROPERTYTYPES"),
    @NamedQuery(name = "PropertyTypes.findByName", query = "SELECT p FROM PropertyTypes p WHERE p.name = :name")})
public class PropertyTypes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idPROPERTY_TYPES")
    private Integer idPROPERTYTYPES;
    @Size(max = 45)
    @Column(name = "name")
    private String name;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPROPERTYTYPES")
    private Collection<Realproperties> realpropertiesCollection;

    public PropertyTypes() {
    }

    public PropertyTypes(Integer idPROPERTYTYPES) {
        this.idPROPERTYTYPES = idPROPERTYTYPES;
    }

    public Integer getIdPROPERTYTYPES() {
        return idPROPERTYTYPES;
    }

    public void setIdPROPERTYTYPES(Integer idPROPERTYTYPES) {
        this.idPROPERTYTYPES = idPROPERTYTYPES;
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
        hash += (idPROPERTYTYPES != null ? idPROPERTYTYPES.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PropertyTypes)) {
            return false;
        }
        PropertyTypes other = (PropertyTypes) object;
        if ((this.idPROPERTYTYPES == null && other.idPROPERTYTYPES != null) || (this.idPROPERTYTYPES != null && !this.idPROPERTYTYPES.equals(other.idPROPERTYTYPES))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.PropertyTypes[ idPROPERTYTYPES=" + idPROPERTYTYPES + " ]";
    }
    
}
