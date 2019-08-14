$(function (){
    
    //alert();
    $('#frm-registro').validate({
       rules:{
           Nombre:{
               required:true,
               accept: "[a-zA-Z]+"
           },
           
           
           Apellido:{
               required:true
           },
           
           Documento:{
               required:true,
               accept: "[0-9]+"
               
           },
           
        
           Telefono:{
               required:true,
               number:true,
               minlength:10,
               maxlength:10,
               digits:true
           },
           
           
           Tipo:{
               required:true
           },
           
           
           Clave:{
               required:true
           },
           
           
           Direccion:{
               required:true
           },
           
        
           
           Correo:{
               required:true,
               email:true
           },
           
           Estado:{
               required:true
           },
           
           FotoPerfil:{
               required:true
           },
           
           
           FotosAdicionales:{
               required:true
           },
           
           Detalles:{
               required:true
           },
           
           Calificacion:{
               required:true
           }
           
           
       },   
       messages:{
           Nombre:{
               required:'Este campo es obligatorio',
                accept:'No se aceptan numeros'
           },
           Apellido:{
               required:'Este campo es obligatorio'
           },
           Documento:{
               required:'Este campo es obligatorio',
               accept:'No se aceptan letras'
           },
           Telefono:{
               required:'Este campo es obligatorio',
               number:'Digite un numero',
               minlength:'El telefono debe tener minimo 10 numeros',
               maxlength:'El telefono debe tener maximo 10 numeros'
           },
           Tipo:{
               required:'Este campo es obligatorio'
               
           },
           Clave:{
               required:'Este campo es obligatorio'
           },
           Direccion:{
               required:'Este campo es obligatorio'
           },
           Correo:{
               required:'Este campo es obligatorio',
               email:'El correo es invalido'
           },
           Estado:{
               required:'Este campo es obligatorio'
           },
           FotoPerfil:{
               required:'Este campo es obligatorio'
           },
            FotosAdicionales:{
               required:'Este campo es obligatorio'
           },
            Detalles:{
               required:'Este campo es obligatorio'
           },
            Calificacion:{
               required:'Este campo es obligatorio'
           }
       }
        
    });
});


$('#validate').click(function() {

    var regex = /[\w-\.]{2,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;

    if (regex.test($('#Correo').val().trim())) {
       

    } else {
        alert('La direccón de correo no es válida');
    }
});

jQuery.validator.addMethod("accept", function(value, element, param) {
  return value.match(new RegExp("." + param + "$"));
});



