package com.ips.controller;

import java.util.ArrayList;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author Daniel Pusil <danielpusil@unicauca.edu.co>
 */
@ManagedBean
@RequestScoped
public class HistoryClinical {
    /*!!!!!!!!!!Solo mostrar datos statico..por ahora*/

    public ArrayList<HistoryClinical> patientsListFromDB;
    public HistoryClinical patient = new HistoryClinical();/*To evit join*/

}
