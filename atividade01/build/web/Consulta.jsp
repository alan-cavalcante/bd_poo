<%-- 
    Document   : Consulta
    Created on : Dec 4, 2023, 9:29:38 PM
    Author     : Alan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dados.DadosConsultados" %>
<%@ page import="dados.TabelaDAO" %>
<!DOCTYPE html>

<%
    TabelaDAO tabelaDAO = new TabelaDAO();
    List<DadosConsultados> dados = tabelaDAO.obterDados();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Exibição de Dados</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
<!--        <h1> <bold> Horários </bold> </h1>-->
        <!--<tr>
            <th>Dia da Semana</th>
            <th>Horário Início</th>
            <th>Horário Fim</th>
            <th>Professor ID</th>
            <th>Disciplina ID</th>
            <th>Nome do Professor</th>
            <th>Nome da Disciplina</th>
        </tr>-->
        <table border="1">
            <thead>
                <tr>
                    <th>Horários</th>
                    <th>Segunda-feira</th>
                    <th>Terça-feira</th>
                    <th>Quarta-feira</th>
                    <th>Quinta-feira</th>
                    <th>Sexta-feira</th>
                </tr>
            </thead>
            <% for (DadosConsultados objeto : dados) { %>
            <tr>
                <td><%= objeto.getHorarioInicio() %> - <%= objeto.getHorarioFim() %></td>
                <td><%= objeto.getNomeDoProfessor() %> <br> <%= objeto.getNomeDaDisciplina() %></td>
                <td><%=  objeto.getDiaSemana() %></td>
                <!--<td><%= objeto.getProfessorId() %></td>-->
                <!--<td><%= objeto.getDisciplinaId() %></td>-->
                <!--<td><%= objeto.getNomeDaDisciplina() %></td>-->
                <!--<td><%= objeto.getHorarioFim() %></td>-->
            </tr>

            <% } %>
        </table>
    </body>
</html>
