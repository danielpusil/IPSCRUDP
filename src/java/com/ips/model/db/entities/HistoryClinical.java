package com.ips.model.db.entities;

import java.io.Serializable;
import java.sql.Date;

/**
 * @author Daniel pusil<danielpusil@unicauca.edu.co>
 */
public class HistoryClinical implements Serializable {

    private int ID;
    private Date date;
    private String current_illness;
    private String rasonConsultation;
    private String diagnostic;
    private int formula;
    private String remison;
    private String patien_id;

    public HistoryClinical() {
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getCurrent_illness() {
        return current_illness;
    }

    public void setCurrent_illness(String current_illness) {
        this.current_illness = current_illness;
    }

    public String getRasonConsultation() {
        return rasonConsultation;
    }

    public void setRasonConsultation(String rasonConsultation) {
        this.rasonConsultation = rasonConsultation;
    }

    public String getDiagnostic() {
        return diagnostic;
    }

    public void setDiagnostic(String diagnostic) {
        this.diagnostic = diagnostic;
    }

    public int getFormula() {
        return formula;
    }

    public void setFormula(int formula) {
        this.formula = formula;
    }

    public String getRemison() {
        return remison;
    }

    public void setRemison(String remison) {
        this.remison = remison;
    }

    public String getPatien_id() {
        return patien_id;
    }

    public void setPatien_id(String patien_id) {
        this.patien_id = patien_id;
    }

}
