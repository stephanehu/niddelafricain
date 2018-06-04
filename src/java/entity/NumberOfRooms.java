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
@Table(name = "number_of_rooms")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "NumberOfRooms.findAll", query = "SELECT n FROM NumberOfRooms n"),
    @NamedQuery(name = "NumberOfRooms.findByIdNUMBEROFROOMS", query = "SELECT n FROM NumberOfRooms n WHERE n.idNUMBEROFROOMS = :idNUMBEROFROOMS"),
    @NamedQuery(name = "NumberOfRooms.findByName", query = "SELECT n FROM NumberOfRooms n WHERE n.name = :name")})
public class NumberOfRooms implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idNUMBER_OF_ROOMS")
    private Integer idNUMBEROFROOMS;
    @Size(max = 45)
    @Column(name = "name")
    private String name;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idNUMBEROFROOMS")
    private Collection<Realproperties> realpropertiesCollection;

    public NumberOfRooms() {
    }

    public NumberOfRooms(Integer idNUMBEROFROOMS) {
        this.idNUMBEROFROOMS = idNUMBEROFROOMS;
    }

    public Integer getIdNUMBEROFROOMS() {
        return idNUMBEROFROOMS;
    }

    public void setIdNUMBEROFROOMS(Integer idNUMBEROFROOMS) {
        this.idNUMBEROFROOMS = idNUMBEROFROOMS;
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
        hash += (idNUMBEROFROOMS != null ? idNUMBEROFROOMS.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NumberOfRooms)) {
            return false;
        }
        NumberOfRooms other = (NumberOfRooms) object;
        if ((this.idNUMBEROFROOMS == null && other.idNUMBEROFROOMS != null) || (this.idNUMBEROFROOMS != null && !this.idNUMBEROFROOMS.equals(other.idNUMBEROFROOMS))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.NumberOfRooms[ idNUMBEROFROOMS=" + idNUMBEROFROOMS + " ]";
    }
    
}
