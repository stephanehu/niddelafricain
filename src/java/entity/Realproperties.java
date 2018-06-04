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
import javax.persistence.Lob;
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
@Table(name = "realproperties")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Realproperties.findAll", query = "SELECT r FROM Realproperties r"),
    @NamedQuery(name = "Realproperties.findByIdREALPROPERTIES", query = "SELECT r FROM Realproperties r WHERE r.idREALPROPERTIES = :idREALPROPERTIES"),
    @NamedQuery(name = "Realproperties.findByPropertyName", query = "SELECT r FROM Realproperties r WHERE r.propertyName = :propertyName"),
    @NamedQuery(name = "Realproperties.findByBedroom", query = "SELECT r FROM Realproperties r WHERE r.bedroom = :bedroom"),
    @NamedQuery(name = "Realproperties.findByBathroom", query = "SELECT r FROM Realproperties r WHERE r.bathroom = :bathroom"),
    @NamedQuery(name = "Realproperties.findByBuildupArea", query = "SELECT r FROM Realproperties r WHERE r.buildupArea = :buildupArea"),
    @NamedQuery(name = "Realproperties.findByPlotArea", query = "SELECT r FROM Realproperties r WHERE r.plotArea = :plotArea"),
    @NamedQuery(name = "Realproperties.findByAge", query = "SELECT r FROM Realproperties r WHERE r.age = :age"),
    @NamedQuery(name = "Realproperties.findByPrice", query = "SELECT r FROM Realproperties r WHERE r.price = :price")})
public class Realproperties implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idREALPROPERTIES")
    private Integer idREALPROPERTIES;
    @Size(max = 200)
    @Column(name = "property_name")
    private String propertyName;
    @Column(name = "bedroom")
    private Integer bedroom;
    @Column(name = "bathroom")
    private Integer bathroom;
    @Column(name = "buildup_area")
    private Integer buildupArea;
    @Column(name = "plot_area")
    private Integer plotArea;
    @Column(name = "age")
    private Integer age;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "price")
    private Double price;
    @Lob
    @Size(max = 65535)
    @Column(name = "description")
    private String description;
    @Lob
    @Size(max = 16777215)
    @Column(name = "address")
    private String address;
    @JoinColumn(name = "idPROPERTY_TYPES", referencedColumnName = "idPROPERTY_TYPES")
    @ManyToOne(optional = false)
    private PropertyTypes idPROPERTYTYPES;
    @JoinColumn(name = "idPROPERTY_STATUS", referencedColumnName = "idPROPERTY_STATUS")
    @ManyToOne(optional = false)
    private PropertyStatus idPROPERTYSTATUS;
    @JoinColumn(name = "idNUMBER_OF_ROOMS", referencedColumnName = "idNUMBER_OF_ROOMS")
    @ManyToOne(optional = false)
    private NumberOfRooms idNUMBEROFROOMS;
    @JoinColumn(name = "idLOAN_PLAN", referencedColumnName = "idLOAN_PLAN")
    @ManyToOne(optional = false)
    private LoanPlan idLOANPLAN;
    @JoinColumn(name = "idDEAL_TYPES", referencedColumnName = "idDEAL_TYPES")
    @ManyToOne(optional = false)
    private DealTypes idDEALTYPES;
    @JoinColumn(name = "idCITIES", referencedColumnName = "idCITIES")
    @ManyToOne(optional = false)
    private Cities idCITIES;
    @JoinColumn(name = "idAMENTIES", referencedColumnName = "idAMENTIES")
    @ManyToOne(optional = false)
    private Amenties idAMENTIES;
    @JoinColumn(name = "idAGENTS", referencedColumnName = "idAGENTS")
    @ManyToOne(optional = false)
    private Agents idAGENTS;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idREALPROPERTIES")
    private Collection<Deals> dealsCollection;

    public Realproperties() {
    }

    public Realproperties(Integer idREALPROPERTIES) {
        this.idREALPROPERTIES = idREALPROPERTIES;
    }

    public Integer getIdREALPROPERTIES() {
        return idREALPROPERTIES;
    }

    public void setIdREALPROPERTIES(Integer idREALPROPERTIES) {
        this.idREALPROPERTIES = idREALPROPERTIES;
    }

    public String getPropertyName() {
        return propertyName;
    }

    public void setPropertyName(String propertyName) {
        this.propertyName = propertyName;
    }

    public Integer getBedroom() {
        return bedroom;
    }

    public void setBedroom(Integer bedroom) {
        this.bedroom = bedroom;
    }

    public Integer getBathroom() {
        return bathroom;
    }

    public void setBathroom(Integer bathroom) {
        this.bathroom = bathroom;
    }

    public Integer getBuildupArea() {
        return buildupArea;
    }

    public void setBuildupArea(Integer buildupArea) {
        this.buildupArea = buildupArea;
    }

    public Integer getPlotArea() {
        return plotArea;
    }

    public void setPlotArea(Integer plotArea) {
        this.plotArea = plotArea;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public PropertyTypes getIdPROPERTYTYPES() {
        return idPROPERTYTYPES;
    }

    public void setIdPROPERTYTYPES(PropertyTypes idPROPERTYTYPES) {
        this.idPROPERTYTYPES = idPROPERTYTYPES;
    }

    public PropertyStatus getIdPROPERTYSTATUS() {
        return idPROPERTYSTATUS;
    }

    public void setIdPROPERTYSTATUS(PropertyStatus idPROPERTYSTATUS) {
        this.idPROPERTYSTATUS = idPROPERTYSTATUS;
    }

    public NumberOfRooms getIdNUMBEROFROOMS() {
        return idNUMBEROFROOMS;
    }

    public void setIdNUMBEROFROOMS(NumberOfRooms idNUMBEROFROOMS) {
        this.idNUMBEROFROOMS = idNUMBEROFROOMS;
    }

    public LoanPlan getIdLOANPLAN() {
        return idLOANPLAN;
    }

    public void setIdLOANPLAN(LoanPlan idLOANPLAN) {
        this.idLOANPLAN = idLOANPLAN;
    }

    public DealTypes getIdDEALTYPES() {
        return idDEALTYPES;
    }

    public void setIdDEALTYPES(DealTypes idDEALTYPES) {
        this.idDEALTYPES = idDEALTYPES;
    }

    public Cities getIdCITIES() {
        return idCITIES;
    }

    public void setIdCITIES(Cities idCITIES) {
        this.idCITIES = idCITIES;
    }

    public Amenties getIdAMENTIES() {
        return idAMENTIES;
    }

    public void setIdAMENTIES(Amenties idAMENTIES) {
        this.idAMENTIES = idAMENTIES;
    }

    public Agents getIdAGENTS() {
        return idAGENTS;
    }

    public void setIdAGENTS(Agents idAGENTS) {
        this.idAGENTS = idAGENTS;
    }

    @XmlTransient
    public Collection<Deals> getDealsCollection() {
        return dealsCollection;
    }

    public void setDealsCollection(Collection<Deals> dealsCollection) {
        this.dealsCollection = dealsCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idREALPROPERTIES != null ? idREALPROPERTIES.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Realproperties)) {
            return false;
        }
        Realproperties other = (Realproperties) object;
        if ((this.idREALPROPERTIES == null && other.idREALPROPERTIES != null) || (this.idREALPROPERTIES != null && !this.idREALPROPERTIES.equals(other.idREALPROPERTIES))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Realproperties[ idREALPROPERTIES=" + idREALPROPERTIES + " ]";
    }
    
}
