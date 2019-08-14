/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import com.sun.xml.rpc.processor.modeler.j2ee.xml.string;

/**
 *
 * @author Usuario
 */
public class Membrecia {
    private int idmembrecia;
    private int idusuario;
    private string FechaInicio;
    private string FechaFIn;
    private int Valor;
    private int Detalles;

    public int getIdmembrecia() {
        return idmembrecia;
    }

    public void setIdmembrecia(int idmembrecia) {
        this.idmembrecia = idmembrecia;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public string getFechaInicio() {
        return FechaInicio;
    }

    public void setFechaInicio(string FechaInicio) {
        this.FechaInicio = FechaInicio;
    }

    public string getFechaFIn() {
        return FechaFIn;
    }

    public void setFechaFIn(string FechaFIn) {
        this.FechaFIn = FechaFIn;
    }

    public int getValor() {
        return Valor;
    }

    public void setValor(int Valor) {
        this.Valor = Valor;
    }

    public int getDetalles() {
        return Detalles;
    }

    public void setDetalles(int Detalles) {
        this.Detalles = Detalles;
    }
    
     
}
