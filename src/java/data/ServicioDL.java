/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.Servicio;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Familia Olarte
 */
public class ServicioDL {
     Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="SELECT  s.* from servicio s, tiposervicio t, usuario u where t.idtiposervicio=s.idtiposervicio and s.idusuario=u.idusuario";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    
    public void insertar(Servicio s){
     try{
    String sql="insert into servicio (idtiposervicio,idusuario,FechaInicio,FechaFin,Valor,Telefono,Correo,Direccion,Detalles) values(?,?,?,?,?,?,?,?,?)";
    jdbctemplate.update(sql,s.getIdtiposervicio(),s.getIdusuario(),s.getFechaInicio(),s.getFechaFin(),s.getValor(),s.getTelefono(),s.getCorreo(),s.getDireccion(),s.getDetalles());
    }catch(Exception e){
        System.out.println(e.getMessage());
}
    }
    public List buscar(int idservicio){
        String sql="select * from servicio where idservicio="+idservicio;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(Servicio s){
        String sql="update servicio set idtiposervicio=? idusuario=?,  FechaInicio=?, FechaFin=? ,Valor=?,Telefono=?,Correo=?,Direccion=?,Detalles=? where idservicio=?";
        jdbctemplate.update(sql,s.getIdtiposervicio(),s.getIdusuario(),s.getFechaInicio(),s.getFechaFin(),s.getValor(),s.getTelefono(),s.getCorreo(),s.getDireccion(),s.getDetalles(),s.getIdservicio());
    }
    public void eliminar(int idservicio){
        String sql="delete from servicio where idservicio="+idservicio;
        this.jdbctemplate.update(sql);
    }   
}
