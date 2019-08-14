/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;




import Business.ServicioBL;
import Business.TipoServicioBL;
import Business.UsuarioBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.Servicio;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Usuario
 */
public class ServicioController {
    ModelAndView mav=new ModelAndView();
   ServicioBL serviciobl=new ServicioBL();
    UsuarioBL usuariobl=new UsuarioBL();
    TipoServicioBL tipoServiciobl=new TipoServicioBL();
   int idservicio;
   List datos;
   
   @RequestMapping("indexServicio.htm")
    public ModelAndView Listar(){
        datos = serviciobl.listar();
        mav.addObject("lista", datos);
        mav.setViewName("indexServicio");
        return mav;
    }
   @RequestMapping(value="AgregarServicio.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new Servicio());
       datos=usuariobl.listar();
       mav.addObject("lista", datos);
       mav.setViewName("AgregarServicio");
       return mav;
   }
   @RequestMapping(value="AgregarServicio.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(Servicio s){
       serviciobl.insertar(s);
       return new ModelAndView("redirect:/indexServicio.htm");
   }
   @RequestMapping(value="editarServicio.htm",method=RequestMethod.GET)
   public ModelAndView Editar(HttpServletRequest request){
     idservicio =Integer.parseInt(request.getParameter("idservicio"));
     datos = usuariobl.listar();
     mav.addObject("listad", datos);
     datos= serviciobl.buscar(idservicio);
     mav.addObject("lista",datos);
     datos = tipoServiciobl.listar();
     mav.addObject("listare", datos);
     mav.setViewName("editarServicio");
     return mav;
   }
   @RequestMapping(value="editarServicio.htm",method=RequestMethod.POST)
   public ModelAndView Editar(Servicio s){
       serviciobl.actualizar(s);
       return new ModelAndView("redirect:/indexServicio.htm");
   }
   
     @RequestMapping("deleteServicio.htm")
    public ModelAndView Delete(HttpServletRequest  request){
        idservicio = Integer.parseInt(request.getParameter("idservicio"));
        serviciobl.eliminar(idservicio);
        return new ModelAndView("redirect:/indexServicio.htm");
    } 
}
