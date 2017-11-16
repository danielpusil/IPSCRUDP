package com.ips.model.generalInterface;

import com.ips.model.db.entities.HistoryClinical;
import com.ips.model.db.entities.Patient;
import java.util.ArrayList;

/**
 *
 * @author Daniel Pusil<danielpusil@unicauca.edu.co>
 */
public interface PatienInterface {

    public ArrayList<Patient> getPatientsList();

    public Patient getByIdentificacion(int patientId);

    public Patient editPatientRecordInDB(int patientId);

    public boolean updatePatientDetailsInDB(Patient updatePatientObj);

    public boolean savePatientDetailsInDB(Patient newPatienObj);

    public boolean deletePatientRecordInDB(int patientIdentification);

    public HistoryClinical getHistoryClinical(Patient patient);

    public Patient detaill(int patientdenId);
}
