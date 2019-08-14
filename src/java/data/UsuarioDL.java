/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.Usuario;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author BRAYAN STID BERNAL
 */
public class UsuarioDL {
    Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="select * from usuario";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    public void insertar(Usuario u){
    try{
    String sql="insert into usuario (Nombre,Apellido,Documento,Telefono,Tipo,Clave,Direccion,Correo,Estado,FotoPerfil,FotosAdicionales,Detalles,Calificacion)values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
    jdbctemplate.update(sql,u.getNombre(),u.getApellido(),u.getDocumento(),u.getTelefono(),u.getTipo(),u.getClave(),u.getDireccion(),u.getCorreo(),u.getEstado(),u.getFotoPerfil(),u.getFotosAdicionales(),u.getDetalles(),u.getCalificacion());
    }catch(Exception e){
                System.out.println(e.getMessage());
        }
    }
    public List buscar(int idusuario){
        String sql="select * from usuario where idusuario="+idusuario;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(Usuario u){
        String sql="update usuario set Nombre=?,Apellido=?,Documento=?,Telefono=?,Tipo=?,Clave=?,Direccion=?,Correo=?,Estado=?,FotoPerfil=?,FotosAdicionales=?,Detalles=?,Calificacion=? where idusuario=?" ;
        jdbctemplate.update(sql,u.getNombre(),u.getApellido(),u.getDocumento(),u.getTelefono(),u.getTipo(),u.getClave(),u.getDireccion(),u.getCorreo(),u.getEstado(),u.getFotoPerfil(),u.getFotosAdicionales(),u.getDetalles(),u.getCalificacion(),u.getIdusuario());
    }
    public void eliminar(int idusuario){
        String sql="delete from usuario where idusuario="+idusuario;
        this.jdbctemplate.update(sql);
    }  
}
