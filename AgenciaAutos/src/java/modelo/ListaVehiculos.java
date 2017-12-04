package modelo;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ListaVehiculos extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection connection;

        PreparedStatement command;
        ResultSet result;
        HttpSession sessionInfo = request.getSession();

        String zona = request.getParameter("currentZone");

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/car-agency?useSSL=false", "root", "4688");

            command = connection.prepareStatement("SELECT modelo FROM automovil where zona = ? ;");
            command.setString(1, zona);
            result = command.executeQuery();
            sessionInfo.setAttribute("zona", result);
            response.sendRedirect("pruebaManejo.jsp");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
