<html lang="es" dir="ltr">
<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ingresar comercio</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
     <script src="main.js"></script>
    <link href="estilos.css" rel="stylesheet">
</head>
<body>
            <div class="row text-center">
                <div class="col-sm-12">
                    <img class="img img-fluid" src="logoSRDomicilio.jpg">
                </div>
                </div>
    <!-- ajax contact form -->
    <section style="margin-top: 25px;">

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <h5 class="card-header" style="background-color:#8c7ae6;color:white"> Agregar nuevo comercio o servicio</h5>
                        <div class="card-body">
                            <form id="formulario" accept-charset="utf-8" class="was-validated" method="post">
                                <div class="row">
                                    <div class="col-md-12 form-group">
                                    <label for="tipo2">Seleccione tipo de negocio o servicio</label>
                                    <select class="form-control" name="tipo2" id="tipo2" required>
                                        <!--<option value="Seleccione una categoría de negocio" selected ></option>-->
                                    </select>
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input name="nombre" type="text" class="form-control" placeholder="Nombre comercial" required>
                                             <div class="valid-feedback">Válido</div>
                                            <div class="invalid-feedback">Por favor complete este campo.</div>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <input name="telefono" type="text" class="form-control" placeholder="Teléfono" required>
                                         <div class="valid-feedback">Válido</div>
                                            <div class="invalid-feedback">Por favor complete este campo.</div>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <input name="horario" type="text" class="form-control" placeholder="Horario" required>
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input name="direccion" type="text" class="form-control" placeholder="Dirección" required>
                                         <div class="valid-feedback">Válido</div>
                                            <div class="invalid-feedback">Por favor complete este campo.</div>
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input name="detalles" type="text" class="form-control" placeholder="Detalles del servicio" required>
                                         <div class="valid-feedback">Válido</div>
                                            <div class="invalid-feedback">Por favor complete este campo.</div>
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <input name="contacto" type="text" class="form-control" placeholder="Persona contacto" required>
                                             <div class="valid-feedback">Válido</div>
                                            <div class="invalid-feedback">Por favor complete este campo.</div>
                                    </div>
                                    <div class="col-md-12 form-group">
                                          <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="remember" required> Mi negocio ofrece servicio a domicilio
                                        <div class="valid-feedback">Válido</div>
                                        <div class="invalid-feedback">Marque para poder enviar.</div>
                                      </label>
                                      </div>
                                    <div class="col-12 text-center">
                                         <button id="btnEnviar" type="submit" class="btn btn-primary">Enviar</button>
                                    </div>
                                </div>
                                <!-- end form element -->
                            </form>
                            <div id="resultado" class="oculto">
                                <div  class="alert alert-success alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <div id="mensaje"></div>
                          </div>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   <script>
// Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
</body>

</html>