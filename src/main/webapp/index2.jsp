<%@ page import="java.sql.*, util.ConexionBD" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Verificar conexión a la base de datos</title>
</head>
<body>

<%
    // Manejo de inserción de nuevos usuarios
    if (request.getParameter("action") != null && request.getParameter("action").equals("insert")) {
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        int saldo = Integer.parseInt(request.getParameter("saldo"));

        try (Connection connection = ConexionBD.getConnection()) {
            System.out.println("Conexión establecida correctamente.");

            // Obtener el siguiente valor de id_usuario
            int nextUserId;
            try (PreparedStatement statement = connection.prepareStatement("SELECT MAX(id_usuario) AS max_id FROM USUARIO");
                 ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    nextUserId = resultSet.getInt("max_id") + 1;
                } else {
                    nextUserId = 1; // Si no hay usuarios en la tabla, comenzamos desde 1
                }
            }

            // Insertar el nuevo usuario con el siguiente valor de id_usuario
            PreparedStatement insertStatement = connection.prepareStatement("INSERT INTO USUARIO (id_usuario, nombre, correo_electronico, saldo) VALUES (?, ?, ?, ?)");
            insertStatement.setInt(1, nextUserId);
            insertStatement.setString(2, nombre);
            insertStatement.setString(3, correo);
            insertStatement.setInt(4, saldo);

            int rowsAffected = insertStatement.executeUpdate();
            if (rowsAffected > 0) {
                out.println("<p>Usuario agregado correctamente.</p>");
            } else {
                out.println("<p>No se pudo agregar el usuario.</p>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error al intentar insertar el usuario:</p>");
            out.println("<p>" + e.getMessage() + "</p>");
        }
    }
%>

<h2>Datos de Usuarios:</h2>
<table border='1'>
    <tr><th>ID</th><th>Nombre</th><th>Correo</th><th>Saldo</th></tr>
    <%
        try (Connection connection = ConexionBD.getConnection();
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM USUARIO");
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                int id = resultSet.getInt("id_usuario");
                String nombre = resultSet.getString("nombre");
                String correo = resultSet.getString("correo_electronico");
                int saldo = resultSet.getInt("saldo");
                out.println("<tr><td>" + id + "</td><td>" + nombre + "</td><td>" + correo + "</td><td>" + saldo + "</td></tr>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error al obtener los datos de usuarios:</p>");
            out.println("<p>" + e.getMessage() + "</p>");
        }
    %>
</table>

<h2>Agregar Nuevo Usuario:</h2>
<form action="<%= request.getRequestURI() %>" method="post">
    <input type="hidden" name="action" value="insert">
    Nombre: <input type="text" name="nombre"><br>
    Correo Electrónico: <input type="text" name="correo"><br>
    Saldo: <input type="text" name="saldo"><br>
    <input type="submit" value="Agregar Usuario">
</form>

</body>
</html>
