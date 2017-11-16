package com.ips.model;

import com.ips.model.db.daoIimplement.HistoryClinicalImplement;
import com.ips.model.db.daoIimplement.PatientImplement;
import com.ips.model.db.entities.HistoryClinical;
import com.ips.model.db.entities.Patient;
import java.sql.Date;
import java.util.ArrayList;

/*@Autor
 *Daniel Eduardo Pusil<danielpusil@unicauca.edu.co>
 */
public class PatientModel {

    PatientImplement patienFronDB = new PatientImplement();

    public PatientModel() {

    }


    /* Method To Fetch The Patient Records From Database */
    public ArrayList<Patient> getPatientsListFromDB() {
        /*other logic*/
        return patienFronDB.getPatientsList();
    }
    /*Metho to Fech the Patient by Identification CC o TI*/

    public Patient getByIdentificacion(int patientId) {
        /*other logic */
        return patienFronDB.getByIdentificacion(patientId);
    }

    /* Method Used To Save New Patient Record In Database */
    public boolean savePatientDetailsInDB(Patient newPatienObj) {
        boolean save = patienFronDB.savePatientDetailsInDB(newPatienObj);
        return save;
    }

    /* Method Used To Edit Patient Record In Database */
    public Patient editPatientRecordInDB(int patientId) {
        Patient patient = patienFronDB.editPatientRecordInDB(patientId);
        System.out.println("pient model"+patient.getName());
        return patient;
    }

    /* Method Used To Update Patient Record In Database */
    public boolean updatePatientDetailsInDB(Patient updatePatientObj) {

        return patienFronDB.updatePatientDetailsInDB(updatePatientObj);
    }

    /* Method Used To Delete Patient Record From Database */
    public boolean deletePatientRecordInDB(int patientIdentification) {
        return patienFronDB.deletePatientRecordInDB(patientIdentification);

    }

    public Patient detaill(int patientdenId) {
        Patient patientDetaills = patienFronDB.detaill(patientdenId);
        patientDetaills.setHistoryClinical(getHistoryClinical(patientDetaills));
        System.out.println("" + patientDetaills.getHistoryClinical().getRasonConsultation());
        if (patientDetaills.getHistoryClinical() != null) {
            return patientDetaills;
        } else {
            patientDetaills.setHistoryClinical(new HistoryClinical());
            patientDetaills.getHistoryClinical().setCurrent_illness(" null");
            patientDetaills.getHistoryClinical().setDate(Date.valueOf("2000-1-1"));
            patientDetaills.getHistoryClinical().setDiagnostic("No definido");
            patientDetaills.getHistoryClinical().setFormula(0);
            patientDetaills.getHistoryClinical().setRasonConsultation("No definido");
        }
        return patientDetaills;

    }

    //Method Lazy 
    /*Me evito
     *SELECT * FROM `patient_record` a INNER JOIN `historyclinical` b on a.patient_id = b.patien_id WHERE a.patient_id=1
     */
    public HistoryClinical getHistoryClinical(Patient patient) {
        HistoryClinicalImplement hcl = new HistoryClinicalImplement();
        return hcl.getHistoryClinicalByPatient(patient);
    }

 
}
