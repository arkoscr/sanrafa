    var tipoComercio;
    var comercios=[];
   $( document ).ready(function() {  
       obtenerTipos();
       obtenerTipos2();
       obtenerComercios();
        $('#tipos').change(function(){
            tipoComercio=$('#tipos').val();
            console.log("Tipo arriba: "+tipoComercio);
            $('#visor').empty();
            mostrar((tipoComercio));
        });


    });
    
    $(function() {     
         $("#btnEnviar").on("click", function(e) {
             e.preventDefault();
            enviarComercio();
         });  
    }); 

         
function obtenerComercios() {
      $.getJSON("obtener_comercios.php", function(data){
        comercios = data;
      });
}

function enviarComercio(){
        $("#mensaje").empty();
        
        $.ajax({
            type: 'POST',
            dataType: 'json',
            url: "enviar_datos.php",
            data: $("#formulario").serialize(),
            success: function(response){
                mostrarRespuesta(response.msj);
            },
            error: function(response){
                $("#mensaje").html("<p>"+response.msj+ "</p>");
                 $("#resultado").removeClass("oculto");
            }
        });
}

function mostrarRespuesta(respuesta){
    $("#mensaje").html("<p>"+respuesta+ "</p>");
    $('#formulario')[0].reset(); 
     $("#resultado").removeClass("oculto");
}

function obtenerTipos() {
      $.getJSON("obtener_select.php", function(data){
        console.log(data);
        $.each(data, function(i, valor){
            $("#tipos").append("<option value=" + valor.id  + ">" +valor.tipo + "</option>");
        });
      });
}

function obtenerTipos2() {
      $.getJSON("obtener_select.php", function(data){
        console.log(data);
        $.each(data, function(i, valor){
            $("#tipo2").append("<option value=" + valor.id  + ">" +valor.tipo + "</option>");
        });
      });
}

function mostrar(tipo) {
    console.log(comercios);
    console.log("Tipo seleccionado: "+tipo);
    var encontrado=0;
   for (let index = 0; index < (comercios.length); index++) {
       
           if (comercios[index].id==tipo){
               if (encontrado===0){$('#visor').empty(); 
                   encontrado=1;
               }
                console.log("Encontrado: "+encontrado);
               console.log("Tipo de comercio: "+comercios[index].id);
               $('#visor').append("<h3>"+comercios[index].nombre+"</h3>");
                $('#visor').append("<p><i class='fas fa-phone-square'></i> "+comercios[index].telefono+" <a href='tel:"+comercios[index].telefono+"'> Llamar</a></p>");
                $('#visor').append("<p><i class='fas fa-info-circle'></i> "+comercios[index].adicional+"</p>");
                $('#visor').append("<p><i class='fas fa-map-marker-alt'></i> "+comercios[index].ubicacion+"</p>");
                $('#visor').append("<p><i class='fas fa-clock'></i> "+comercios[index].horario+"</p>");
                $('#visor').append("<hr>");
               
           }

  
}
       if (encontrado===0){
             $('#visor').html("<h3>Aún no hay comercios en esta categoría</h3>");
      }

}