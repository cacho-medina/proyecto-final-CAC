package misClases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion {

	public String driver = "com.mysql.cj.jdbc.Driver";
	
	public Connection getConection() throws ClassNotFoundException {
		Connection conexion = null;
		
		try {
			Class.forName(driver);
			conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectofinalcac","root","215469");
		}catch(SQLException e){
			System.out.println(e);
		}
		
		return conexion;
	}
	
	
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Connection conexion = null;
		Conexion con = new Conexion();
		conexion = con.getConection();
		
		PreparedStatement ps;
		ResultSet rs;
		
		ps = conexion.prepareStatement("select * from tickets");
		rs = ps.executeQuery();
		
		while(rs.next()) {
			String nombre = rs.getString("nombre");
			String apellido = rs.getString("apellido");
			int id = rs.getInt("id");
			System.out.println("usuario "+id+" - "+nombre+" "+apellido);
		}
	}

}
