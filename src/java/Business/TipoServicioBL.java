/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;


import data.TipoServicioDL;
import java.util.List;
import model.TipoServicio;


/**
 *
 * @author BRAYAN STID BERNAL
 */
public class TipoServicioBL {
     TipoServicioDL tiposerviciodl=new TipoServicioDL();
    public List listar(){
    return tiposerviciodl.Listar();
    }
    public void insertar (TipoServicio t){
        tiposerviciodl.insertar(t);
    }
    public List buscar(int idusuario){
        return tiposerviciodl.buscar(idusuario);
    }
    public void actualizar(TipoServicio t){
        tiposerviciodl.actualizar(t);
    }
    public void eliminar(int idusuario){
        tiposerviciodl.eliminar(idusuario);
    }    
}
