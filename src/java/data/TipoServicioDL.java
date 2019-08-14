/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.TipoServicio;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author BRAYAN STID BERNAL
 */
public class TipoServicioDL {
      Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="select * from tiposervicio";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    public void insertar(TipoServicio t){
    try{
    String sql="insert into tiposervicio (Nombre)values (?)";
    jdbctemplate.update(sql,t.getNombre());
    }catch(Exception e){
                System.out.println(e.getMessage());
        }
    }
    public List buscar(int idtiposervicio){
        String sql="select * from tiposervicio where idtiposervicio="+idtiposervicio;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(TipoServicio t){
        String sql="update tiposervicio set Nombre=? where idtiposervicio=?" ;
        jdbctemplate.update(sql,t.getNombre(),t.getIdtiposervicio());
    }
    public void eliminar(int idtiposervicio){
        String sql="delete from tiposervicio where idtiposervicio="+idtiposervicio;
        this.jdbctemplate.update(sql);
    }  
}
