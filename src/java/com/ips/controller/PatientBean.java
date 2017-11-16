package com.ips.controller;

import com.ips.model.PatientModel;
import com.ips.model.db.entities.Patient;
import java.util.ArrayList;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;

/*CRUD for Patients Table*/
/*Is a front controller, I try implement one controller for view*/
@ManagedBean
@RequestScoped
public class PatientBean {

    public ArrayList<Patient> patientsListFromDB;
    public Patient patient = new Patient();
    PatientModel patienModel = new PatientModel();

    /*Metho Used to Multiples Call to DB
     */
    @PostConstruct
    public void init() {
        this.patientsListFromDB = patienModel.getPatientsListFromDB();
    }

    /* Method Used To Fetch All Records From The Database */
    public ArrayList<Patient> patientsList() {
        return patientsListFromDB;
    }

    /* Method Used To Save New Patient Record */
    public String savePatientDetails(Patient newPatientObj) {
        String navigationResult = "Error.xhtml";
        /*View control*/
        boolean save = patienModel.savePatientDetailsInDB(newPatientObj);
        if (save) {
            navigationResult = "patientsList.xhtml?faces-redirect=true";
        } else {
            navigationResult = "createPatient.xhtml?faces-redirect=true";
        }
        return navigationResult;
    }

    /* Method Used To Edit Patient Record */
    public String editPatientRecord(int patientId) {
        String navigationResult = "Error.xhtml";
        Patient patientEditRecord = patienModel.editPatientRecordInDB(patientId);
        if (patientEditRecord != null) {
            /*Taks for controller*/
            /* Setting The Particular Patient Details In Session */
            Map<String, Object> sessionMapObj = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
            sessionMapObj.put("editRecordObj", patientEditRecord);
            navigationResult = "/editPatient.xhtml?faces-redirect=true";
            System.out.println("to Edit form");
        } else {
            navigationResult = "/patientsList.xhtml?faces-redirect=true";
        }
        return navigationResult;
    }

    /* Method Used To Update Patient Record */
    public String updatePatientDetails(Patient updatePatientObj) {
        boolean resp = false;
        String navigationResult = "Error.xhtml";

        if (patienModel.updatePatientDetailsInDB(updatePatientObj)) {
            FacesMessage msg = new FacesMessage("Usuario Grabado");
            FacesContext.getCurrentInstance().addMessage(null, msg);
            navigationResult = "/patientsList.xhtml?faces-redirect=true";
        } else {
            FacesMessage msg = new FacesMessage("Usuario No Grabado");
            FacesContext.getCurrentInstance().addMessage(null, msg);
            navigationResult = "/editPatient.xhtml?faces-redirect=true";

        }
        return navigationResult;
    }

    /* Method Used To Delete Patient Record */
    public String deletePatientRecord(int patientId) {
        String navigation = "";
        boolean rep = patienModel.deletePatientRecordInDB(patientId);
        if (rep) {
            navigation = "/patientsList.xhtml?faces-redirect=true";
        } else {
            FacesMessage msg = new FacesMessage("Usuario No Grabado");
            FacesContext.getCurrentInstance().addMessage(null, msg);
            navigation = "/patientsList.xhtml?faces-redirect=true";
        }
        return navigation;
    }
    /*Method Used to View Details and relations [only HistoriClinical... Relation Professional in working]*/

    public String getDetaills(int studenId) {
        /*Mostar la informacion de paciente y mini historia clinica */
        Map<String, Object> sessionMapObj = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
        Patient patient = patienModel.detaill(studenId);
        sessionMapObj.put("patient", patient);
        return "/patientDetaills.xhtml?faces-redirect=true";
    }

    /*Setteres and Getteres*/
    public ArrayList<Patient> getPatientsListFromDB() {
        return patientsListFromDB;
    }

    public void setPatientsListFromDB(ArrayList<Patient> patientsListFromDB) {
        this.patientsListFromDB = patientsListFromDB;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

}
