package com.ips.model.db.daoIimplement;

import com.ips.model.db.entities.HistoryClinical;
import com.ips.model.generalInterface.PatienInterface;
import com.ips.model.db.entities.Patient;
import com.ips.persitence.db.util.DataBaseConnection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.context.FacesContext;

/*@Autor
 *Daniel Eduardo Pusil<danielpusil@unicauca.edu.co>
 */
public class PatientImplement implements PatienInterface {

    public PatientImplement() {

    }


    /* Method To Fetch The Patient Records From Database */
    @Override
    public ArrayList<Patient> getPatientsList() {
        ArrayList<Patient> patientsList = new ArrayList<>();
        ResultSet resultSetObj = DataBaseConnection.executeQuery("select * from patient_record");
        try {
            while (resultSetObj.next()) {
                Patient patientObj = patientFromResulSet(resultSetObj);
                patientsList.add(patientObj);
            }
            DataBaseConnection.closeConnection();
        } catch (SQLException ex) {
            Logger.getLogger(PatientImplement.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Total Alcanzados: " + patientsList.size());

        return patientsList;
    }

    /*Metho to Fech the Patient by Identification CC o TI*/
    @Override
    public Patient getByIdentificacion(int patientId) {
        Patient patientObj = null;
        String query = "select * from patient_record where patient_identification = " + patientId;
        ResultSet resultSetObj = DataBaseConnection.executeQuery(query);

        if (resultSetObj != null) {
            try {
                resultSetObj.next();
            } catch (SQLException ex) {
                Logger.getLogger(PatientImplement.class.getName()).log(Level.SEVERE, null, ex);
            }
            patientObj = patientFromResulSet(resultSetObj);
        }
        DataBaseConnection.closeConnection();
        return patientObj;
    }

    /* Method Used To Save New Patient Record In Database */
    @Override
    public boolean savePatientDetailsInDB(Patient newPatienObj) {
        boolean save = false;
        int saveResult = 0;

        String query = "INSERT INTO patient_record(patient_name, patient_email, patient_gender, patient_address, patient_age, patient_zone, patient_numphone, patient_occupations, patient_identification, patient_birthdate, patient_birthplace,patient_typeReg) VALUES\n"
                + " (?,?,?,?,?,?,?,?,?,?,?,?)";

        int pstmt = DataBaseConnection.prepareStatement(query);
        if (pstmt != 0) {
            try {
                DataBaseConnection.pstmt.setString(1, newPatienObj.getName());
                DataBaseConnection.pstmt.setString(2, newPatienObj.getEmail());
                DataBaseConnection.pstmt.setString(3, newPatienObj.getGender());
                DataBaseConnection.pstmt.setString(4, newPatienObj.getAddress());
                DataBaseConnection.pstmt.setString(5, newPatienObj.getAge() + "");
                DataBaseConnection.pstmt.setString(6, newPatienObj.getZone());
                DataBaseConnection.pstmt.setString(7, newPatienObj.getPhone() + "");
                DataBaseConnection.pstmt.setString(8, newPatienObj.getOccupation());
                DataBaseConnection.pstmt.setString(9, newPatienObj.getIdentification() + "");
                java.sql.Date sqlDate = new java.sql.Date(newPatienObj.getBirthDate().getTime());
                DataBaseConnection.pstmt.setDate(10, sqlDate);
                DataBaseConnection.pstmt.setString(11, newPatienObj.getBirthPlace() + "");
                DataBaseConnection.pstmt.setString(12, newPatienObj.getRegimen());
                saveResult = DataBaseConnection.pstmt.executeUpdate();
                DataBaseConnection.closeConnection();
            } catch (SQLException sqlException) {
                sqlException.printStackTrace();
            }
        }

        /*Mover al Controlador*/
        save = saveResult != 0;
        System.out.println("Guardado: " + saveResult + " " + save);
        return save;
    }

    /* Method Used To Edit Patient Record In Database */
    @Override
    public Patient editPatientRecordInDB(int patientId) {
        Patient patientEditRecord = null;
        System.out.println("editPatientRecordInDB() : Patient Id: " + patientId);

        /* Setting The Particular Patient Details In Session */
        String query = "select * from patient_record where patient_identification = " + patientId;
        try {
            ResultSet resultSetObj = DataBaseConnection.executeQuery(query);
            if (resultSetObj != null) {
                resultSetObj.next();
                patientEditRecord = patientFromResulSet(resultSetObj);
            }

            System.out.println("pateint fetch:" + patientEditRecord);
        } catch (Exception sqlException) {
            sqlException.printStackTrace();
        }
        DataBaseConnection.closeConnection();
        return patientEditRecord;
    }

    /* Method Used To Update Patient Record In Database */
    @Override
    public boolean updatePatientDetailsInDB(Patient updatePatientObj) {
        int saveUpdate = 0;
        boolean modification = false;
        try {
            DataBaseConnection.prepareStatement("UPDATE patient_record SET patient_name=?,patient_email=?,\n"
                    + "patient_gender=?,patient_address=?,patient_age=?,\n"
                    + "patient_zone=?,\n"
                    + "patient_numphone=?,\n"
                    + "patient_occupations=?,\n"
                    + "patient_identification=?,\n"
                    + "patient_birthdate=?,\n"
                    + "patient_birthplace=?,\n"
                    + "patient_typeReg=? WHERE patient_identification=?");

            DataBaseConnection.pstmt.setString(1, updatePatientObj.getName());
            DataBaseConnection.pstmt.setString(2, updatePatientObj.getEmail());
            DataBaseConnection.pstmt.setString(3, updatePatientObj.getGender());
            DataBaseConnection.pstmt.setString(4, updatePatientObj.getAddress());
            DataBaseConnection.pstmt.setInt(5, updatePatientObj.getAge());
            DataBaseConnection.pstmt.setString(6, updatePatientObj.getZone());
            DataBaseConnection.pstmt.setString(7, updatePatientObj.getPhone());
            DataBaseConnection.pstmt.setString(8, updatePatientObj.getOccupation());
            DataBaseConnection.pstmt.setInt(9, updatePatientObj.getIdentification());
            java.sql.Date sqlDate = new java.sql.Date(updatePatientObj.getBirthDate().getTime());
            DataBaseConnection.pstmt.setDate(10, sqlDate);
            DataBaseConnection.pstmt.setString(11, updatePatientObj.getBirthPlace());
            DataBaseConnection.pstmt.setString(12, updatePatientObj.getRegimen());
            DataBaseConnection.pstmt.setInt(13, updatePatientObj.getIdentification());

            saveUpdate = DataBaseConnection.pstmt.executeUpdate();
            DataBaseConnection.closeConnection();
        } catch (Exception sqlException) {
            sqlException.printStackTrace();
        }
        if (saveUpdate != 1) {
            modification = false;
        } else {
            modification = true;
        }

        return modification;
    }

    /* Method Used To Delete Patient Record From Database */
    @Override
    public boolean deletePatientRecordInDB(int patientIdentification) {
        System.out.println("deletePatientRecordInDB() : Patient Id: " + patientIdentification);
        int result = -1;
        boolean modification = false;

        try {
            DataBaseConnection.prepareStatement("delete from patient_record where patient_identification = " + patientIdentification);
            result = DataBaseConnection.pstmt.executeUpdate();
            DataBaseConnection.closeConnection();
        } catch (Exception sqlException) {
            sqlException.printStackTrace();
        }
        if (result != 1) {
            modification = false;
        } else {
            modification = true;//then delete is ok
        }
        return modification;
    }

    /*-------To get History Clinical------------*/
    @Override
    public Patient detaill(int pateintIdentification) {
        Patient patientDetaills = getByIdentificacion(pateintIdentification);
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
        DataBaseConnection.closeConnection();
        return patientDetaills;
    }

    //Method Lazy 
    /*Me evito
     *SELECT * FROM `patient_record` a INNER JOIN `historyclinical` b on a.patient_id = b.patien_id WHERE a.patient_id=1
     */
    @Override
    public HistoryClinical getHistoryClinical(Patient patient) {
        HistoryClinicalImplement hcl = new HistoryClinicalImplement();
        return hcl.getHistoryClinicalByPatient(patient);
    }

    /*Build a Obj from ResultSet*/
    private static Patient patientFromResulSet(ResultSet resultSetObj) {
        Patient patientObj = new Patient();
        try {
            patientObj.setId(resultSetObj.getInt("patient_id"));
            patientObj.setName(resultSetObj.getString("patient_name"));
            patientObj.setEmail(resultSetObj.getString("patient_email"));
            patientObj.setGender(resultSetObj.getString("patient_gender"));
            patientObj.setAddress(resultSetObj.getString("patient_address"));
            patientObj.setAge(resultSetObj.getInt("patient_age"));
            patientObj.setZone(resultSetObj.getString("patient_zone"));
            patientObj.setRegimen(resultSetObj.getString("patient_typeReg"));
            patientObj.setPhone(resultSetObj.getString("patient_numphone"));
            patientObj.setOccupation(resultSetObj.getString("patient_occupations"));
            patientObj.setIdentification(resultSetObj.getInt("patient_identification"));
            patientObj.setBirthDate((resultSetObj.getDate("patient_birthdate")));
            patientObj.setBirthPlace(resultSetObj.getString("patient_birthplace"));
        } catch (SQLException ex) {
            Logger.getLogger(PatientImplement.class.getName()).log(Level.SEVERE, null, ex);
        }
        return patientObj;
    }

    /*----To build Static historyClinical---*/
    public void buildHitoryforPatienr(Patient p) {
        /*Static*/
        HistoryClinical histCliObjt = new HistoryClinical();
        histCliObjt.setCurrent_illness("No definido");
        histCliObjt.setDate(Date.valueOf("2000-1-1"));
        histCliObjt.setDiagnostic("No definido");
        histCliObjt.setFormula(0);
        histCliObjt.setID((int) Math.random());
        histCliObjt.setPatien_id(p.getIdentification() + "");
        histCliObjt.setRasonConsultation("No definido");
        histCliObjt.setRemison("123445");
        System.out.println("Set Static");
    }

}
