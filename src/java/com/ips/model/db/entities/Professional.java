package com.ips.model.db.entities;

/**
 *
 * @author Daniel Pusil<danielpusil@unicauca.edu.co>
 */
public class Professional {

    private int Id;
    private int identification;//CC
    private String name;
    private String reg;//para el registro medico[DEFAULT INT]
    private String speciality;
    private String signature;

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public int getIdentification() {
        return identification;
    }

    public void setIdentification(int identification) {
        this.identification = identification;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getReg() {
        return reg;
    }

    public void setReg(String reg) {
        this.reg = reg;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }
    
    
    
    

}
