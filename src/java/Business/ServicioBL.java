/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;


import data.ServicioDL;
import java.util.List;
import model.Servicio;


/**
 *
 * @author Usuario
 */
public class ServicioBL {
    ServicioDL servicioDL=new ServicioDL();
    public List listar(){
        return servicioDL.Listar();
    }
    public void insertar (Servicio s){
       servicioDL.insertar(s);
    }
    public List buscar(int idservicio){
        return servicioDL.buscar(idservicio);
    }
    public void actualizar(Servicio s){
        servicioDL.actualizar(s);
    }
    public void eliminar(int idservicio){
        servicioDL.eliminar(idservicio);
    }    
}
