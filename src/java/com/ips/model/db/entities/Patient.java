package com.ips.model.db.entities;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author Daniel Pusil<danielpusil@unicauca.edu.co>
 */
public class Patient implements Serializable {

    private int id;
    private String name;
    private String email;
    private String gender;
    private String address;
    private int age;
    private String zone;
    private String phone;
    private String occupation;
    private Date birthDate;
    private String birthPlace;
    private int identification;//CC or TI
    private String regimen;//To patient_typeReg
    private HistoryClinical HistoryClinical;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getZone() {
        return zone;
    }

    public void setZone(String zone) {
        this.zone = zone;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getBirthPlace() {
        return birthPlace;
    }

    public void setBirthPlace(String birthPlace) {
        this.birthPlace = birthPlace;
    }

    public HistoryClinical getHistoryClinical() {
        return HistoryClinical;
    }

    public void setHistoryClinical(HistoryClinical HistoryClinical) {
        this.HistoryClinical = HistoryClinical;
    }

    public int getIdentification() {
        return identification;
    }

    public void setIdentification(int identification) {
        this.identification = identification;
    }

    public String getRegimen() {
        return regimen;
    }

    public void setRegimen(String regimen) {
        this.regimen = regimen;
    }
}
