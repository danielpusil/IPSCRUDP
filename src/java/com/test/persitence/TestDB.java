package com.test.persitence;

import com.ips.model.PatientModel;
import com.ips.model.db.daoIimplement.PatientImplement;
import com.ips.model.db.entities.Patient;
import java.sql.Date;

public class TestDB {

    public static void main(String[] args) {
        PatientImplement implementDB = new PatientImplement();

        Patient newPatObj = new Patient();
        newPatObj.setName("Daniel Eduardo Pusil lll");
        newPatObj.setAge(24);
        newPatObj.setIdentification(1111223);
        newPatObj.setBirthDate(Date.valueOf("2000-02-23"));
        newPatObj.setZone("Rural");
        newPatObj.setBirthPlace("Popayan");
        newPatObj.setOccupation("Estudiante");
        newPatObj.setPhone("057-3216442946");
        newPatObj.setRegimen("Subsidiado");

        boolean res = implementDB.savePatientDetailsInDB(newPatObj);
        System.out.println("save " + res);

        newPatObj.setAge(67);
        implementDB.updatePatientDetailsInDB(newPatObj);
        System.out.println("update " + implementDB.getByIdentificacion(newPatObj.getIdentification()).getAge());

        newPatObj = implementDB.detaill(newPatObj.getIdentification());
        System.out.println(" Get history " + newPatObj.getHistoryClinical().getCurrent_illness());//Defaul
        // System.out.println("Del " + implementDB.deletePatientRecordInDB(newPatObj.getIdentification()));
        PatientModel model = new PatientModel();
        newPatObj.setAge(68);
        model.updatePatientDetailsInDB(newPatObj);
        System.out.println("update " + implementDB.getByIdentificacion(newPatObj.getIdentification()).getAge());

    }

}
