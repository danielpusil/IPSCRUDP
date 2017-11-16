package com.ips.model.generalInterface;

import com.ips.model.db.entities.HistoryClinical;
import com.ips.model.db.entities.Patient;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Daniel pusil< danielpusil@unicauac.edu.co>
 */
public interface HistoryClinicalInterface {

    public ArrayList<HistoryClinical> getHistoryClinicalListFromDB();

    public boolean createHistoryClinical(HistoryClinical h);

    public HistoryClinical getHistoryClinicalByPatient(Patient s);

    public HistoryClinical historiClinicalFromResulset(ResultSet resultSetObj);

}
