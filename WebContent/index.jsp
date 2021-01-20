

<!--  CARLOS EDUARDO LEIVA CONTRERAS -->
<!--  IPSS.LEIVA@GMAIL.COM -->

<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<title>Proyecto Formulario</title>
</head>
<body>
<main>


	
<div class="container">
	<div class="row justify-content-center">
	
	<!-- Formulario Inicio -->
	
	<div class="col-md-6">
			<h4 class="mt-4 mb-2 text-center">Formulario</h4>
			<div class="text-center">
  			<img src="usuario.png"    class="img-thumbnail" style="width: 120px; height: 120px; alt="..." 	>
			</div>
		<form action="controladorServlet" method="post" class="needs-validation" novalidate>
			
		
		<div class="form-group">
			<label for="nombre">Nombre</label>
			<input type="text" class="form-control" id="nombre" name="nombre" required>
			<div class="valid-feedback">
			 Perfecto!
      		</div>
      		<div class="invalid-feedback">
			  Es obligatorio este campo!
      		</div>
		</div>
	
		<div class="form-group">
			<label for="apellido">Apellido</label>
			<input type="text" class="form-control" id="apellido" name="apellido" required>
			<div class="valid-feedback">
			  Perfecto!
      		</div>
      		<div class="invalid-feedback">
			  Es obligatorio este campo!
      		</div>
		</div>
		
			<div class="form-group">
			<label for="email">Correo Electronico</label>
			<input type="text" class="form-control" id="email" name="email" required>
			<div class="valid-feedback">
			  Perfecto!
      		</div>
      		 <div class="invalid-feedback">
			  Es obligatorio este campo!
      		</div>
		</div>
			<div class="form-group">
			<label for="edad">Edad</label>
			<input type="text" class="form-control" id="edad" name="edad" required>
			<div class="valid-feedback">
			  Perfecto!
      		</div>
      		<div class="invalid-feedback">
			  Es obligatorio este campo!
      		</div>
		</div>
	<input type="submit" class="btn btn-info btn-block" id="ingresar" value="Ingresar">
	</form>
	
	
	<!--  Resultados a mostrar -->
	
	<div class="form-group mt-4" >
	    </div>
			<div class="form-group">
			<label for="nombrecompleto">Nombre Completo</label>
			<input type="text" disabled class="form-control" id="nombrecompleto" name="nombrecompleto"
			value="<% if(request.getSession().getAttribute("r_nombrecompleto") == null){
				out.println("");
	
				}else{
				out.println(request.getSession().getAttribute("r_nombrecompleto"));
				}
			%>"></label>
		</div>
			<div class="form-group">
			<label for="r_email">Correo Electronico</label>
			<input type="text" disabled class="form-control" id="r_email" name="r_email"
			value="<% if(request.getSession().getAttribute("r_email") == null){
				out.println("");
	
				}else{
				out.println(request.getSession().getAttribute("r_email"));
				}
			%>"></label>
		</div>
			<div class="form-group">
			<label for="r_edad">Edad</label>
			<input type="text" disabled class="form-control" id="r_edad" name="r_edad"
			value="<% if(request.getSession().getAttribute("r_edad") == null){
				out.println("");
	
				}else{
			
				out.println(request.getSession().getAttribute("r_edad"));
				
				}
			%>"></label>
			<!-- Mensaje segun sea el caso mayor o menor de edad  -->
			
			<label type="text" id="r_mensaje" name="r_mensaje"
			value="<%
			if(request.getSession().getAttribute("r_mensaje") == null){
				out.println("");
	
				}else{
				out.println(request.getSession().getAttribute("r_mensaje"));
				}
			%>"></label>
		
		
		
		<!--  Funcion de validacion del formulario fuente boostrap 4.5 -->
<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields // FUENTE BOOTSTRAP VERSION 4.5
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
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
		
		
		
		
</div>
</div>
</div>
</main>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</html>
