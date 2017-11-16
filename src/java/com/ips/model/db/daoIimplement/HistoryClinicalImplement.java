package com.ips.model.db.daoIimplement;

import com.ips.model.db.entities.HistoryClinical;
import com.ips.model.db.entities.Patient;
import com.ips.model.generalInterface.HistoryClinicalInterface;
import com.ips.persitence.db.util.DataBaseConnection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Daniel
 */
public class HistoryClinicalImplement implements HistoryClinicalInterface {

    /*estatico unicamente para ver Historia si exite */
    /* Method To Fetch The HistoryClinical Records From Database */
    @Override
    public ArrayList<HistoryClinical> getHistoryClinicalListFromDB() {
        ArrayList<HistoryClinical> historyClinicalLst = new ArrayList<>();
        ResultSet resultSetObj = DataBaseConnection.executeQuery("select * from historyclinical");
        try {
            while (resultSetObj.next()) {
                HistoryClinical historyClinicalObj = new HistoryClinical();
                historyClinicalObj.setID(resultSetObj.getInt("ID"));
                historyClinicalObj.setDate(resultSetObj.getDate("date"));
                historyClinicalObj.setCurrent_illness(resultSetObj.getString("current_illness"));
                historyClinicalObj.setRasonConsultation(resultSetObj.getString("rasonConsultation"));
                historyClinicalObj.setDiagnostic(resultSetObj.getString("diagnostic"));
                historyClinicalObj.setFormula(resultSetObj.getInt("formula"));
                historyClinicalObj.setRemison(resultSetObj.getString("remison"));
                historyClinicalObj.setPatien_id(resultSetObj.getString("patien_id"));
                historyClinicalLst.add(historyClinicalObj);
            }
            DataBaseConnection.closeConnection();
        } catch (SQLException ex) {
            Logger.getLogger(HistoryClinicalImplement.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Total Records Fetched: " + historyClinicalLst.size());
        return historyClinicalLst;
    }

    @Override
    public boolean createHistoryClinical(HistoryClinical h) {
        boolean resp = false;

        return resp = false;
    }

    @Override
    public HistoryClinical getHistoryClinicalByPatient(Patient s) {

        String query = "select * from historyclinical where patient_id = " + s.getIdentification();//!!!!!cambiar BD (patient_id to patient_identification)
        ResultSet resultSetObj = DataBaseConnection.executeQuery(query);
        HistoryClinical histCliObjt = null;
        if (resultSetObj != null) {
            try {
                resultSetObj.next();
                histCliObjt = historiClinicalFromResulset(resultSetObj);
                //s.setHistoryClinical(histCliObjt);
            } catch (SQLException ex) {
                Logger.getLogger(HistoryClinicalImplement.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if (histCliObjt.getPatien_id() == null) {
            /*Static*/
            histCliObjt.setCurrent_illness("No definido");
            histCliObjt.setDate(Date.valueOf("2000-1-1"));
            histCliObjt.setDiagnostic("No definido");
            histCliObjt.setFormula(0);
            histCliObjt.setID((int) Math.random());
            histCliObjt.setPatien_id(s.getIdentification() + "");
            histCliObjt.setRasonConsultation("No definido");
            histCliObjt.setRemison("123445");
            System.out.println("Set Static");
        }
        DataBaseConnection.closeConnection();
        return histCliObjt;
    }

    /*Method  to Create a History Clinical When Patient is Create By Form CreatePatient*/
    public void createDefaulHistoryClinical(int identification) {//Foreg

        /*Identification is usage to minimize relation in DB*/
    }

    @Override
    public HistoryClinical historiClinicalFromResulset(ResultSet resultSetObj) {

        HistoryClinical histCliObjt = new HistoryClinical();
        try {
            histCliObjt.setID(resultSetObj.getInt("ID"));
            histCliObjt.setDate(resultSetObj.getDate("date"));
            histCliObjt.setCurrent_illness(resultSetObj.getString("current_illness"));
            histCliObjt.setRasonConsultation(resultSetObj.getString("rasonConsultation"));
            histCliObjt.setDiagnostic(resultSetObj.getString("diagnostic"));
            histCliObjt.setFormula(resultSetObj.getInt("formula"));
            histCliObjt.setRemison(resultSetObj.getString("remison"));
            histCliObjt.setPatien_id(resultSetObj.getString("patien_id"));
        } catch (SQLException ex) {
            System.out.println("Dont´t have History");
            /*Static*/
            histCliObjt.setCurrent_illness("No definido");
            histCliObjt.setDate(Date.valueOf("2000-1-1"));
            histCliObjt.setDiagnostic("No definido");
            histCliObjt.setFormula(0);
            histCliObjt.setID((int) Math.random());
            histCliObjt.setRasonConsultation("No definido");
            histCliObjt.setRemison("123445");
            System.out.println("Set Static");
        }
        return histCliObjt;

    }

}
