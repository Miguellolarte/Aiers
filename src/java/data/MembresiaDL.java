/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.Membresia;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author BRAYAN STID BERNAL
 */
public class MembresiaDL {
  Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="SELECT  u.Nombre,u.Apellido,u.Documento,u.Telefono,u.Correo,u.Estado ,m.* from membresia m, usuario u where u.idusuario=m.idusuario";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    
    public void insertar(Membresia m){
     try{
    String sql="insert into membresia (idusuario,FechaInicio,FechaFin,Valor,Detalles) values(?,?,?,?,?)";
    jdbctemplate.update(sql,m.getIdusuario(),m.getFechaInicio(),m.getFechaFin(),m.getValor(),m.getDetalles());
    }catch(Exception e){
        System.out.println(e.getMessage());
}
    }
    public List buscar(int idmembresia){
        String sql="select * from membresia where idmembresia="+idmembresia;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(Membresia m){
        String sql="update membresia set idusuario=?,  FechaInicio=?, FechaFin=? ,Valor=? ,Detalles=? where idmembresia=?";
        jdbctemplate.update(sql,m.getIdusuario(),m.getFechaInicio(),m.getFechaFin(),m.getValor(),m.getDetalles(),m.getIdmembresia());
    }
    public void eliminar(int idmembresia){
        String sql="delete from membresia where idmembresia="+idmembresia;
        this.jdbctemplate.update(sql);
    }   
}
