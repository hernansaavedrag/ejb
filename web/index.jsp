<%-- 
    Document   : index
    Created on : 23-04-2019, 20:53:17
    Author     : sistemas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.naming.InitialContext"%>
<%@page import="cl.model.ServicioLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! ServicioLocal servicio;%>
<%
    InitialContext contx = new InitialContext();
    servicio = (ServicioLocal) contx.lookup("java:global/Ejemplo1EJB/Servicio!cl.model.ServicioLocal");
%>
<c:set var="servicio" scope="page" value="<%=servicio%>"/>

<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>
        <div class="row">
            <div class="col s6 offset-s3">
                <div class="card-panel">
                    <h3 class="center-align">Registro Clientes</h3>
                    <form action="control.do" method="post">

                        <div class="input-field">
                            <input id="rut" type="text" name="rut">
                            <label for="rut">Rut</label>
                        </div>
                        
                        <div class="input-field">
                            <input id="nombre" type="text" name="nombre">
                            <label for="nombre">Nombre</label>
                        </div>
                        <div class="input-field">
                            <input id="apellido" type="text" name="apellido">
                            <label for="apellido">Apellido</label>
                        </div>
                        <button type="submit" class="btn right">
                            Guardar
                        </button>
                        <br><br>
                    </form>

                    <table class="bordered highlight">
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                        </tr>
                        <c:forEach items="${servicio.clientes}" var="cli">
                            <tr>
                                <td>${cli.rut}</td>
                                <td>${cli.nombre}</td>
                                <td>${cli.apellido}</td>
                                <td>
                                    <a href="actualizar.jsp" class="btn-floating blue">
                                        <i class="material-icons">mode_edit</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="eliminar.jsp" class="btn-floating red">
                                        <i class="material-icons">delete</i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>




        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>
