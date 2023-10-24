<%-- 
    Document   : machines
    Created on : Oct 24, 2023, 4:55:47 PM
    Author     : oussama
--%>

<%@page import="entities.Machine"%>
<%@page import="services.MachineService"%>
<%@page import="entities.Salle"%>
<%@page import="services.SalleService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Machinecontroller" method="GET">
            <fieldset>
                <legend> Informations machine</legend>
                <table border="0">
                   
                        <tr>
                            <td>Reference :</td>
                            <td><input type="text" name="ref" value="" /></td>
                        </tr>
                        <tr>
                            <td>Marque :</td>
                            <td><input type="text" name="marque" value="" /></td>
                        </tr>
                        <tr>
                            <td>prix</td>
                            <td><input type="text" name="prix" value="" /></td>
                        </tr>
                         
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Ajouter" /><input type="reset" value="Annuler" /></td>
                        </tr>
                        
                    
                </table>

            </fieldset>
        </form> 
        <fieldset>
            <legend> Liste des machines</legend>
            <table border="1">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Reference</th>
                        <th>Marque</th>
                        <th>Prix</th>
                        <th>Modifier</th>
                        <th>Supprimer</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        MachineService ms =new MachineService();
                        for(Machine m : ms.findAll()){
                            
                       
                        %>
                    <tr>
                        <td><%= m.getId() %></td>
                        <td><%= m.getRef() %></td>
                        <td><%= m.getMarque() %></td>
                        <td><%= m.getPrix() %></td>
                        <td><a href="Machinecontroller?op=update&id=<%= m.getId()%>">Modifier</a></td>
                        <td><a href="Machinecontroller?op=delete&id=<%= m.getId()%>">Supprimer</a></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </fieldset>
    </body>
</html>
