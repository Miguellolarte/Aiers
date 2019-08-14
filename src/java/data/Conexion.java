/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Diego
 */
public class Conexion {
   public DriverManagerDataSource conectar(){
DriverManagerDataSource datasource=new DriverManagerDataSource();
        datasource.setDriverClassName("com.mysql.jdbc.Driver");
        datasource.setUrl("jdbc:mysql://localhost:3306/aiers");
        datasource.setUsername("root");
        datasource.setPassword("");
        return datasource;
        
}    
}
