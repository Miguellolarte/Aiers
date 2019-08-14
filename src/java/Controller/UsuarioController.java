/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.UsuarioBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author BRAYAN STID BERNAL
 */




public class UsuarioController {
     ModelAndView mav=new ModelAndView();
   UsuarioBL usuariobl=new UsuarioBL();
   int idusuario;
   List dato;
   
   @RequestMapping("indexUsuario.htm")
   public ModelAndView Listar(){
   dato=usuariobl.listar();
   mav.addObject("lista",dato);
   mav.setViewName("indexUsuario");
   return mav;
   }
   @RequestMapping(value="AgregarUsuario.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new Usuario());
       mav.setViewName("AgregarUsuario");
       return mav;
   }
   @RequestMapping(value="AgregarUsuario.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(Usuario u){
       usuariobl.insertar(u);
       return new ModelAndView("redirect:/indexUsuario.htm");
   }
   @RequestMapping(value="editarUsuario.htm",method=RequestMethod.GET)
   public ModelAndView Editar(HttpServletRequest request){
     idusuario=Integer.parseInt(request.getParameter("idusuario"));
     dato=usuariobl.buscar(idusuario);
     mav.addObject("lista",dato);
     mav.setViewName("editarUsuario");
     return mav;
   }
  @RequestMapping(value="editarUsuario.htm",method=RequestMethod.POST)
   public ModelAndView Editar(Usuario u)
   {
      usuariobl.actualizar(u);
       return new ModelAndView("redirect:/indexUsuario.htm");
   } 
    @RequestMapping("deleteUsuario.htm")
   public ModelAndView Delete(HttpServletRequest request){
   idusuario= Integer.parseInt(request.getParameter("idusuario"));
   usuariobl.eliminar(idusuario);
   return new ModelAndView("redirect:/indexUsuario.htm");
   }  
   
   
   
   
   
}
