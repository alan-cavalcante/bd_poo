<%-- 
    Document   : ConsultaIds
    Created on : Dec 8, 2023, 9:02:56 PM
    Author     : Alan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dados.DadosConsultados" %>
<%@ page import="dados.TabelaDAO" %>
<!DOCTYPE html>

<%
    TabelaDAO tabelaDAO = new TabelaDAO();
    List<DadosConsultados> dados = tabelaDAO.obterIdsProfessores();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Exibição de Dados</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>Nomes</th>
                    <th>ID</th>
                </tr>
            </thead>
            <% for (DadosConsultados objeto : dados) { %>
            <tr>
                <td><%= objeto.getNomeDoProfessor() %></td>
                <td><%= objeto.getProfessorId() %></td>
<!--                <td>
                <td><%= objeto.getNomeDaDisciplina() %></td>
                <td><%= objeto.getDisciplinaId() %></td>-->
            </tr>
            <% } %>
        </table>
    </body>
</html>