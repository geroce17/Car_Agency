
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Busqueda extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        Connection connection;
        
        PreparedStatement command;
        ResultSet result;
        HttpSession sessionInfo = request.getSession();
        
        String nombre = request.getParameter("name");
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/world?useSSL=false", "root", "4688");
            
            command = connection.prepareStatement("SELECT Name, District FROM city WHERE Name = ?");
            command.setString(1, nombre);
            //command.setString(2, distrito);
            result = command.executeQuery();
            
            
                    sessionInfo.setAttribute("Name", result);
                    response.sendRedirect("ResultadosDeBusqueda.jsp");
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
    }
}
