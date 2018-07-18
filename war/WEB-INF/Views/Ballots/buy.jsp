<%@page import="model.entity.*" %>
<%
	Producto aux = (Producto) request.getAttribute("produc");
	User elUser = (User) request.getAttribute("user");
	String NBoleta = (String) request.getAttribute("NBoleta");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimun-scale=1.0">
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">

<link href="https://fonts.googleapis.com/css?family=Calligraffitti"
	rel="stylesheet">
<title>A�adir Compra</title>


<header>
<div class="wrapper">


	<ul class="nav">
	<li><a href="/ballots/"> Report </a>
		<li><a href="/roles"> Roles </a>
			<ul>
				<li><a id="add" href="/roles/add">A�adir rol</a></li>
				<li><a id="add" href="/roles">Lista roles</a></li>
			</ul></li>
		<li><a href="/users"> User </a>
			<ul>
				<li><a id="add" href="/users/add">A�adir Usuario</a></li>
				<li><a id="add" href="/users">Lista Usuario</a></li>
			</ul></li>
		<li><a href="/resources"> Recursos </a>
			<ul>
				<li><a id="add" href="/resources/add">A�adir recurso</a></li>
				<li><a id="add" href="/resources">Lista recurso</a></li>
			</ul></li>
		<li><a href="/ballots"> Boletas </a>
			<ul>
				<li><a id="add" href="/ballots/add">A�adir Boleta</a></li>
				<li><a id="add" href="/ballots">Lista Boletas</a></li>
			</ul></li>
		<li><a href="/productos"> Productos </a>
			<ul>
				<li><a id="add" href="/productos/add">A�adir Producto</a></li>
				<li><a id="add" href="/productos">Lista Producto</a></li>
			</ul></li>
		<li><a href="/access"> Access </a>
			<ul>
				<li><a id="add" href="/access/add">A�adir access</a></li>
				<li><a id="add" href="/access">Lista access</a></li>
			</ul></li>
		<li><a href="/users/login"> Login</a></li>
		<li><a href="/users/logout"> LogOut</a></li>

	</ul>
</div>
</header>
<br>
<br></br>
</br>
<div class="container text-center py-5">
	<h1>A�adir Boleta</h1>
</div>


</head>
<body>
	<div class="jumbotron boxlogin">
		<form method="post" action="/ballots/add" name="Reci" if="flogin">
			<label>Nombre Cliente: </label> 
			<input class="form-control" type="text" name="Usuario" value="<%=elUser.getNombre() %>" readonly><br /> 
			<label>DNI: </label> 
			<input class="form-control" type="number" name="dni" value="<%=elUser.getDNI() %>" readonly><br /> 
			<label>Direcci�n: </label> 
			<input class="form-control" type="text" name="direccion" value="<%=elUser.getDireccion() %>" readonly> <br /> 
			<label>Distrito: </label> 
			<input class="form-control" type="text" name="distrito" value="<%=elUser.getDistrito() %>" readonly> 
			<label>Tel�fono: </label> 
			<input class="form-control" type="number" name="telefono" value="<%=elUser.getTelefono() %>" readonly><br /> 
			<label>Cantidad: </label> 
			<input class="form-control" type="number" name="cantidad" placeholder="N�" required> 
			<label>N� Boleta: </label> 
			<input class="form-control" type="text" readonly value="<%=NBoleta%>"><br /> 
			<label>Llanta: </label> 
			<input class="form-control" type="text" name="llanta" value="<%=aux.getMedida() %>R<%=aux.getAro() %>" readonly> <br /> 
			<label>PrecioUnitario: </label> 
			<input class="form-control" type="text" name="precioUnit" value="<%=aux.getPrecio() %>" readonly> 
			<input name="Enviar" type="submit" value="Emitir Boleta">
		</form>
	</div>
	<footer id="pie">Valeria Nicoll Calderon Rodriguez-Diego Flores Camargo - Rodrigo Oleachea Sanchez
	 <br><a title="facebook" href="https://web.facebook.com/pg/Llantas-DJ-486510835126807/about/?ref=page_internal"><img src="/css/icoface.png" width="20px" /></a>
         <a title="Whatsapp" href="https://web.whatsapp.com/" ><img src="/css/icoWhats.png" width="20px" /></a>980702144 <a title="Gmail" href="https://mail.google.com/mail/" ><img src="/css/icoGmail.png" width="20px" /></a>jcamarguito@hotmail.com
          </footer>
	<script>
				(function(){
				
				
					var validarCantidad = function(e){
						if(formulario.cantidad.value == ""){
							alert("Llene el campo cantidad");
							e.preventDefault();
						}
					}
					var bloqueoBoton = function(e){
						document.forms['Reci']['Enviar'].disabled=true;
					}
					var validar = function(e){
						
						validarCantidad(e);
						bloqueoBoton(e);
					}
					
					formulario.addEventListener("submit",validar);
					
					
				}())	
			</script>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>
</body>
</html>