package modelo;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class InformacionVehiculo extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        Connection connection;
        
        PreparedStatement command;
        ResultSet result;
        HttpSession sessionInfo = request.getSession();
        
        String Modelo = request.getParameter("selectedvehicle");
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/car-agency?useSSL=false", "root", "4688");
            
            command = connection.prepareStatement("SELECT imagen, modelo, color, segmento, no_puertas, cilindraje, velocidad_max, año, zona, costo_servicio FROM automovil where modelo = ? ;");
            command.setString(1, Modelo);
            result = command.executeQuery();
                    sessionInfo.setAttribute("modelo", result);
                    response.sendRedirect("vehicle-Information.jsp");
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
    }
}
