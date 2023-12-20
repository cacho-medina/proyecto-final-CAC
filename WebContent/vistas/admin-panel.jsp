<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="misClases.Ticket"%>
<%@page import="misClases.TicketDAO"%>
<%@page import="misClases.Orador"%>
<%@page import="misClases.OradorDAO"%>    
<%@page import="java.util.List"%>    
    
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Panel de Admin</title>
        <link
            rel="shortcut icon"
            href="img/admin.svg"
            type="image/x-icon"
        />
        <link rel="stylesheet" href="css/styles.css" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    </head>
<body>
	<header class="header">
            <nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="FrontController">
                        <img
                            src="img/codoacodo.png"
                            alt="Logo"
                            width="100"
                            class="d-inline-block"
                        />
                        Conf Bs As
                    </a>
                    <button
                        class="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarNav"
                        aria-controls="navbarNav"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                    >
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div
                        class="collapse navbar-collapse justify-content-md-end"
                        id="navbarNav"
                    >
                        <ul
                            class="navbar-nav align-items-end align-items-md-center"
                        >
                            <li class="nav-item">
                                <a
                                    class="nav-link"
                                    aria-current="page"
                                    href="FrontController#conferencia"
                                    >La conferencia</a
                                >
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="FrontController#oradores"
                                    >Oradores</a
                                >
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="FrontController#lugar_fecha"
                                    >Lugar y fecha</a
                                >
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="FrontController#ser_orador"
                                    >Conviertete en orador</a
                                >
                            </li>
                            <li class="nav-item">
                                <a
                                    class="nav-link comprar_ticket"
                                    href="FrontController?accion=comprar"
                                    >Comprar ticket</a
                                >
                            </li>
                            <li class="nav-item">
                                <i class="bi bi-person-circle" style="color: #FFC900; font-size: 1.5rem; padding: 0 5px;"></i>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
	<main class="admin">
		<div class="container-fluid container-md py-3 p-lg-5">
			<h2 class="text-center display-3">
        		<i class="bi bi-gear-wide-connected"></i>Panel de Administracion
      		</h2>
      		<div class="tabla table-responsive my-5 rounded">
      			<table class="table table-hover align-middle text-center mb-0">
      			<thead>
      				<tr class="table-dark">
      					<th class="fw-medium py-2 fs-3" colspan="8">
      						Tabla de Personas
      					</th>
      				</tr>
      				<tr>
      					<th>id</th>
      					<th>nombre</th>
      					<th>apellido</th>
      					<th>correo</th>
      					<th>tipo</th>
      					<th>cantidad</th>
      					<th>total</th>
      					<th>eliminar</th>
      				</tr>
      			</thead>
      			<%
      			
      			List <Ticket> resultado = null;
      			TicketDAO ticket = new TicketDAO();
      			
      			resultado = ticket.listarTicket();
      			int totalFacturado = 0;
      			
      			for(int x = 0; x<resultado.size();x++){
      				
      				String rutaDelete = "FrontController?accion=eliminar&id="+resultado.get(x).getId();
      				String tipoTicket = "";
      				
      				
      				switch(resultado.get(x).getTipo_ticket()){
      					case 1:
      						tipoTicket = "Estudiante";
      						break;
      					case 2:
      						tipoTicket = "Trainee";
      						break;
      					case 3:
      						tipoTicket = "Junior";
      						break;
      					default:
      						break;
      				}
      			
      			%>
      			<tbody>
      				<tr>
      					<td><%=resultado.get(x).getId() %></td>
      					<td><%=resultado.get(x).getNombre() %></td>
      					<td><%=resultado.get(x).getApellido() %></td>
      					<td><%=resultado.get(x).getMail() %></td>
      					<td><%=tipoTicket %></td>
      					<td><%=resultado.get(x).getCantidad() %></td>
      					<td><%=resultado.get(x).getTotal_facturado() %></td>
      					<td class="d-flex justify-content-center gap-2">
      						<a href=<%=rutaDelete %> class="btn btn-danger"><i class="bi bi-trash3"></i></a>
      					</td>
      				</tr>
      				
      				<%
      					
      					totalFacturado += resultado.get(x).getTotal_facturado();
      			}
      				%>
      				
      				<tr>
      					<td colspan="8" class="text-center table-secondary">Total facturado: $<%=totalFacturado %></td>
      				</tr>
      			</tbody>
      		</table>
      		</div>
      		<div class="tabla table-responsive my-5 rounded">
      			<table class="table table-hover align-middle text-center mb-0">
      			<thead>
      				<tr class="table-dark">
      					<th class="fw-medium py-2 fs-3" colspan="8">
      						Tabla de Oradores
      					</th>
      				</tr>
      				<tr>
      					<th>id</th>
      					<th>nombre</th>
      					<th>apellido</th>
      					<th>tema</th>
      					<th>eliminar</th>
      				</tr>
      			</thead>
      			<%
      			
      			List <Orador> list = null;
      			OradorDAO orador = new OradorDAO();
      			
      			list = orador.listarOradores();
      			
      			for(int x = 0; x < list.size(); x++){
      				
      				String delete = "FrontController?accion=eliminarOrador&id="+list.get(x).getId();
      			
      			%>
      			<tbody>
      				<tr>
      					<td><%=list.get(x).getId() %></td>
      					<td><%=list.get(x).getNombre() %></td>
      					<td><%=list.get(x).getApellido() %></td>
      					<td class="text-truncate" style="max-width: 150px;"><%=list.get(x).getTematica() %></td>
      					<td class="d-flex justify-content-center gap-2">
      						<a href=<%=delete %> class="btn btn-danger"><i class="bi bi-trash3"></i></a>
      					</td>
      				</tr>
      				<%} %>
      			</tbody>
      			</table>
      		</div>
      		<a class="btn btn-outline-primary" href="FrontController">Volver a inicio</a>
		</div>
	</main>
	<footer class="footer text-light">
            <div class="container py-3">
                <p class="text-center">©Derechos Reservados | Joaquin Medina</p>
            </div>
        </footer>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        ></script>
</body>
</html>