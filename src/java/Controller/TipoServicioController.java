/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;


import Business.TipoServicioBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.TipoServicio;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author BRAYAN STID BERNAL
 */
public class TipoServicioController {
      ModelAndView mav=new ModelAndView();
   TipoServicioBL tiposerviciobl=new TipoServicioBL();
   int idtiposervicio;
   List dato;
   
   @RequestMapping("indexTipoServicio.htm")
   public ModelAndView Listar(){
   dato=tiposerviciobl.listar();
   mav.addObject("lista",dato);
   mav.setViewName("indexTipoServicio");
   return mav;
   }
   @RequestMapping(value="AgregarTipoServicio.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new TipoServicio());
       mav.setViewName("AgregarTipoServicio");
       return mav;
   }
   @RequestMapping(value="AgregarTipoServicio.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(TipoServicio t){
       tiposerviciobl.insertar(t);
       return new ModelAndView("redirect:/indexTipoServicio.htm");
   }
   @RequestMapping(value="editarTipoServicio.htm",method=RequestMethod.GET)
   public ModelAndView Editar(HttpServletRequest request){
     idtiposervicio=Integer.parseInt(request.getParameter("idtiposervicio"));
     dato=tiposerviciobl.buscar(idtiposervicio);
     mav.addObject("lista",dato);
     mav.setViewName("editarTipoServicio");
     return mav;
   }
  @RequestMapping(value="editarTipoServicio.htm",method=RequestMethod.POST)
   public ModelAndView Editar(TipoServicio t)
   {
      tiposerviciobl.actualizar(t);
       return new ModelAndView("redirect:/indexTipoServicio.htm");
   } 
    @RequestMapping("deleteTipoServicio.htm")
   public ModelAndView Delete(HttpServletRequest request){
   idtiposervicio= Integer.parseInt(request.getParameter("idtiposervicio"));
   tiposerviciobl.eliminar(idtiposervicio);
   return new ModelAndView("redirect:/indexTipoServicio.htm");
   }  
}
