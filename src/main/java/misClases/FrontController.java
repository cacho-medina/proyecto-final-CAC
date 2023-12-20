package misClases;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("HOLA MI RAID AQUI TENES TU PAGINA PAPI => ").append(request.getContextPath());
		String accion = null;
		TicketDAO ticketDAO = null;
		OradorDAO oradorDAO = null;
		
		try{
			ticketDAO = new TicketDAO();
			oradorDAO = new OradorDAO();
		}catch (ClassNotFoundException e){
			System.out.println(e);
		}
		
		RequestDispatcher dispatcher = null;
		accion = request.getParameter("accion");
		
		if(accion == null || accion.isEmpty()) {
			dispatcher = request.getRequestDispatcher("vistas/index.jsp");
		}
		else if(accion.equals("comprar")) {
			dispatcher = request.getRequestDispatcher("vistas/comprarTicket.jsp");
		}
		else if(accion.equals("administrar")) {
			dispatcher = request.getRequestDispatcher("vistas/admin-panel.jsp");
		}
		else if(accion.equals("agregarOrador")) {
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String tematica = request.getParameter("tematica");
			
			Orador orador = new Orador(0,nombre,apellido,tematica);
			oradorDAO.insertarOrador(orador);
			
			dispatcher = request.getRequestDispatcher("vistas/index.jsp");
		}
		else if(accion.equals("finalizarCompra")) {
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String mail = request.getParameter("email");
			int cantidad = Integer.parseInt(request.getParameter("cantidad"));
			int tipo = Integer.parseInt(request.getParameter("categoria"));
			float descuento;
			switch(tipo) {
				case 1:
					descuento = 0.8f;
					break;
				case 2:
					descuento = 0.5f;
					break;
				case 3:
					descuento = 0.015f;
					break;
				default:
					descuento = 1;
					break;
			}
			float total = cantidad * (200 * descuento);
			
			Ticket ticket = new Ticket(0,nombre,apellido,mail,cantidad,tipo,total);
			
			ticketDAO.insertarTicket(ticket); 
			
			
			dispatcher = request.getRequestDispatcher("vistas/comprarTicket.jsp");
		}
		else if(accion.equals("eliminar")) {
			int id = Integer.parseInt(request.getParameter("id"));
			ticketDAO.eliminarTicket(id);
			dispatcher = request.getRequestDispatcher("vistas/admin-panel.jsp");
		}
		else if(accion.equals("eliminarOrador")) {
			int id = Integer.parseInt(request.getParameter("id"));
			oradorDAO.eliminarOrador(id);
			dispatcher = request.getRequestDispatcher("vistas/admin-panel.jsp");
		}
		dispatcher.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
