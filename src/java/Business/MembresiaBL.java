/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import data.MembresiaDL;
import java.util.List;
import model.Membresia;

/**
 *
 * @author BRAYAN STID BERNAL
 */
public class MembresiaBL {
      MembresiaDL membresiadl=new MembresiaDL();
    public List listar(){
    return membresiadl.Listar();
    }
    public void insertar (Membresia m){
        membresiadl.insertar(m);
    }
    public List buscar(int idmembresia){
        return membresiadl.buscar(idmembresia);
    }
    public void actualizar(Membresia m){
        membresiadl.actualizar(m);
    }
    public void eliminar(int idusuario){
        membresiadl.eliminar(idusuario);
    }     
}
