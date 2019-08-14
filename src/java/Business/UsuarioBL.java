/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import data.UsuarioDL;
import java.util.List;
import model.Usuario;

/**
 *
 * @author BRAYAN STID BERNAL
 */
public class UsuarioBL {
    UsuarioDL usuarioDl=new UsuarioDL();
    public List listar(){
    return usuarioDl.Listar();
    }
    public void insertar (Usuario u){
        usuarioDl.insertar(u);
    }
    public List buscar(int idusuario){
        return usuarioDl.buscar(idusuario);
    }
    public void actualizar(Usuario u){
        usuarioDl.actualizar(u);
    }
    public void eliminar(int idusuario){
        usuarioDl.eliminar(idusuario);
    }    
}
