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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Stephane
 */
@Entity
@Table(name = "amenties")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Amenties.findAll", query = "SELECT a FROM Amenties a"),
    @NamedQuery(name = "Amenties.findByIdAMENTIES", query = "SELECT a FROM Amenties a WHERE a.idAMENTIES = :idAMENTIES"),
    @NamedQuery(name = "Amenties.findByLift", query = "SELECT a FROM Amenties a WHERE a.lift = :lift"),
    @NamedQuery(name = "Amenties.findByGym", query = "SELECT a FROM Amenties a WHERE a.gym = :gym"),
    @NamedQuery(name = "Amenties.findBySwimmingpool", query = "SELECT a FROM Amenties a WHERE a.swimmingpool = :swimmingpool"),
    @NamedQuery(name = "Amenties.findByGazpipeline", query = "SELECT a FROM Amenties a WHERE a.gazpipeline = :gazpipeline"),
    @NamedQuery(name = "Amenties.findByGarage", query = "SELECT a FROM Amenties a WHERE a.garage = :garage")})
public class Amenties implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idAMENTIES")
    private Integer idAMENTIES;
    @Column(name = "lift")
    private Boolean lift;
    @Column(name = "gym")
    private Boolean gym;
    @Column(name = "swimmingpool")
    private Boolean swimmingpool;
    @Column(name = "gazpipeline")
    private Boolean gazpipeline;
    @Column(name = "garage")
    private Boolean garage;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idAMENTIES")
    private Collection<Realproperties> realpropertiesCollection;

    public Amenties() {
    }

    public Amenties(Integer idAMENTIES) {
        this.idAMENTIES = idAMENTIES;
    }

    public Integer getIdAMENTIES() {
        return idAMENTIES;
    }

    public void setIdAMENTIES(Integer idAMENTIES) {
        this.idAMENTIES = idAMENTIES;
    }

    public Boolean getLift() {
        return lift;
    }

    public void setLift(Boolean lift) {
        this.lift = lift;
    }

    public Boolean getGym() {
        return gym;
    }

    public void setGym(Boolean gym) {
        this.gym = gym;
    }

    public Boolean getSwimmingpool() {
        return swimmingpool;
    }

    public void setSwimmingpool(Boolean swimmingpool) {
        this.swimmingpool = swimmingpool;
    }

    public Boolean getGazpipeline() {
        return gazpipeline;
    }

    public void setGazpipeline(Boolean gazpipeline) {
        this.gazpipeline = gazpipeline;
    }

    public Boolean getGarage() {
        return garage;
    }

    public void setGarage(Boolean garage) {
        this.garage = garage;
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
        hash += (idAMENTIES != null ? idAMENTIES.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Amenties)) {
            return false;
        }
        Amenties other = (Amenties) object;
        if ((this.idAMENTIES == null && other.idAMENTIES != null) || (this.idAMENTIES != null && !this.idAMENTIES.equals(other.idAMENTIES))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Amenties[ idAMENTIES=" + idAMENTIES + " ]";
    }
    
}
