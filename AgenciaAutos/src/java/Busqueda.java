
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
            throws ServletException, IOException {
        Connection connection;

        PreparedStatement command;
        ResultSet result;
        HttpSession sessionInfo = request.getSession();

        String modelo = request.getParameter("modelo");
        String zona = request.getParameter("zona");

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection("jdbc:mysql://192.168.1.73:3306/DBGAC?useSSL=false", "developer", "1234");

            command = connection.prepareStatement("select imagen, modelo, precio_estimado from automovil where zona= ? and modelo like '%" + modelo + "%' ;");
            command.setString(1, zona);
            result = command.executeQuery();

            sessionInfo.setAttribute("modelo", result);
            response.sendRedirect("ResultadosDeBusqueda.jsp");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
