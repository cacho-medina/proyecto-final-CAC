package misClases;

public class Ticket {
	private int id;
	private String nombre;
	private String apellido;
	private String mail;
	private int tipo_ticket;
	private int cantidad;
	private float total_facturado;
	
	//constructor
	public Ticket(int id, String nombre, String apellido, String mail, int tipo_ticket, int cantidad, float total_facturado) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.mail = mail;
		this.tipo_ticket = tipo_ticket;
		this.cantidad = cantidad;
		this.total_facturado = total_facturado;
	}
	
	//Getters y Setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getTipo_ticket() {
		return tipo_ticket;
	}
	public void setTipo_ticket(int tipo_ticket) {
		this.tipo_ticket = tipo_ticket;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public float getTotal_facturado() {
		return total_facturado;
	}
	public void setTotal_facturado(float total_facturado) {
		this.total_facturado = total_facturado;
	}
	
	
	
	
}
