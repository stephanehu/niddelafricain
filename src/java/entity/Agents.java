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
import javax.persistence.Lob;
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
@Table(name = "agents")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Agents.findAll", query = "SELECT a FROM Agents a"),
    @NamedQuery(name = "Agents.findByIdAGENTS", query = "SELECT a FROM Agents a WHERE a.idAGENTS = :idAGENTS"),
    @NamedQuery(name = "Agents.findByName", query = "SELECT a FROM Agents a WHERE a.name = :name"),
    @NamedQuery(name = "Agents.findByPhone", query = "SELECT a FROM Agents a WHERE a.phone = :phone"),
    @NamedQuery(name = "Agents.findByEmail", query = "SELECT a FROM Agents a WHERE a.email = :email"),
    @NamedQuery(name = "Agents.findByOfficeName", query = "SELECT a FROM Agents a WHERE a.officeName = :officeName"),
    @NamedQuery(name = "Agents.findByEmailOffice", query = "SELECT a FROM Agents a WHERE a.emailOffice = :emailOffice"),
    @NamedQuery(name = "Agents.findByLandlineOffice", query = "SELECT a FROM Agents a WHERE a.landlineOffice = :landlineOffice")})
public class Agents implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idAGENTS")
    private Integer idAGENTS;
    @Size(max = 45)
    @Column(name = "name")
    private String name;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Size(max = 20)
    @Column(name = "phone")
    private String phone;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 145)
    @Column(name = "email")
    private String email;
    @Size(max = 145)
    @Column(name = "office_name")
    private String officeName;
    @Size(max = 145)
    @Column(name = "email_office")
    private String emailOffice;
    @Lob
    @Size(max = 16777215)
    @Column(name = "office_address")
    private String officeAddress;
    @Size(max = 20)
    @Column(name = "landline_office")
    private String landlineOffice;
    @Lob
    @Size(max = 65535)
    @Column(name = "info")
    private String info;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idAGENTS")
    private Collection<Realproperties> realpropertiesCollection;

    public Agents() {
    }

    public Agents(Integer idAGENTS) {
        this.idAGENTS = idAGENTS;
    }

    public Integer getIdAGENTS() {
        return idAGENTS;
    }

    public void setIdAGENTS(Integer idAGENTS) {
        this.idAGENTS = idAGENTS;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOfficeName() {
        return officeName;
    }

    public void setOfficeName(String officeName) {
        this.officeName = officeName;
    }

    public String getEmailOffice() {
        return emailOffice;
    }

    public void setEmailOffice(String emailOffice) {
        this.emailOffice = emailOffice;
    }

    public String getOfficeAddress() {
        return officeAddress;
    }

    public void setOfficeAddress(String officeAddress) {
        this.officeAddress = officeAddress;
    }

    public String getLandlineOffice() {
        return landlineOffice;
    }

    public void setLandlineOffice(String landlineOffice) {
        this.landlineOffice = landlineOffice;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
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
        hash += (idAGENTS != null ? idAGENTS.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Agents)) {
            return false;
        }
        Agents other = (Agents) object;
        if ((this.idAGENTS == null && other.idAGENTS != null) || (this.idAGENTS != null && !this.idAGENTS.equals(other.idAGENTS))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Agents[ idAGENTS=" + idAGENTS + " ]";
    }
    
}
