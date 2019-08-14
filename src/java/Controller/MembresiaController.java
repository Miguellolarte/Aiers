/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;



import Business.MembresiaBL;
import Business.UsuarioBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.Membresia;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author BRAYAN STID BERNAL
 */
public class MembresiaController {
      ModelAndView mav=new ModelAndView();
   MembresiaBL membresiabl=new MembresiaBL();
    UsuarioBL usuariobl=new UsuarioBL();
   int idmembresia;
   List datos;
   
   @RequestMapping("indexMembresia.htm")
    public ModelAndView Listar(){
        datos = membresiabl.listar();
        mav.addObject("lista", datos);
        mav.setViewName("indexMembresia");
        return mav;
    }
   @RequestMapping(value="AgregarMembresia.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new Membresia());
       datos=usuariobl.listar();
       mav.addObject("lista", datos);
       mav.setViewName("AgregarMembresia");
       return mav;
   }
   @RequestMapping(value="AgregarMembresia.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(Membresia m){
       membresiabl.insertar(m);
       return new ModelAndView("redirect:/indexMembresia.htm");
   }
   @RequestMapping(value="editarMembresia.htm",method=RequestMethod.GET)
   public ModelAndView Editar(HttpServletRequest request){
     idmembresia =Integer.parseInt(request.getParameter("idmembresia"));
     datos = usuariobl.listar();
     mav.addObject("listad", datos);
     datos= membresiabl.buscar(idmembresia);
     mav.addObject("lista",datos);
     mav.setViewName("editarMembresia");
     return mav;
   }
   @RequestMapping(value="editarMembresia.htm",method=RequestMethod.POST)
   public ModelAndView Editar(Membresia m){
       membresiabl.actualizar(m);
       return new ModelAndView("redirect:/indexMembresia.htm");
   }
   
     @RequestMapping("deleteMembresia.htm")
    public ModelAndView Delete(HttpServletRequest  request){
        idmembresia = Integer.parseInt(request.getParameter("idmembresia"));
        membresiabl.eliminar(idmembresia);
        return new ModelAndView("redirect:/indexMembresia.htm");
    }
}
