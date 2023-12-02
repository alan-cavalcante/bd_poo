<%@page import="dados.Inserir"%>
<%@page import="dados.Armazena"%>
<%@page import="bancodedados.Conexao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String jsp_diaSemana = request.getParameter("diaSemana");
           String jsp_horarioInicio = request.getParameter("horarioInicio");
           String jsp_horarioFim = request.getParameter("horarioFim");
           String jsp_disciplinaId = request.getParameter("disciplinaId");
           int discId = Integer.parseInt(jsp_disciplinaId);
           String jsp_professorId = request.getParameter("professorId");
           int profId = Integer.parseInt(jsp_professorId);
           
           Inserir a = new Inserir();
           Armazena arm = new Armazena();
           
           arm.setdiaSemana(jsp_diaSemana);
           arm.sethorarioInicio(jsp_horarioInicio);
           arm.sethorarioFim(jsp_horarioFim);
           arm.setdisciplinaId(discId);
           arm.setprofessorId(profId);
           
           Conexao b = new Conexao();
           
           // out.println(b.getConnection());
           
           out.println(arm.getDiaSemana());
           out.println(arm.getHorarioInicio());
           out.println(arm.getHorarioFim());
           out.println(arm.getDisciplinaId());
           out.println(arm.getProfessorId());
           // out.println(arm);
           a.inserirDados(arm);
        %>
        <table>
        <thead>
            <tr>
                <th>Horário</th>
                <th>Segunda</th>
                <th>Terça</th>
                <th>Quarta</th>
                <th>Quinta</th>
                <th>Sexta</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Horário 1</td>
                <td>08:00</td>
                <td>08:50</td>
                <td>09:40</td>
                <td>10:30</td>
                <td>11:20</td>
            </tr>
            <tr>
                <td>Horário 2</td>
                <td>08:00</td>
                <td>08:50</td>
                <td>09:40</td>
                <td>10:30</td>
                <td>11:20</td>
            </tr>
            <tr>
                <td>Horário 3</td>
                <td>08:00</td>
                <td>08:50</td>
                <td>09:40</td>
                <td>10:30</td>
                <td>11:20</td>
            </tr>
            <tr>
                <td>Horário 4</td>
                <td>08:00</td>
                <td>08:50</td>
                <td>09:40</td>
                <td>10:30</td>
                <td>11:20</td>
            </tr>
            <tr>
                <td>Horário 5</td>
                <td>08:00</td>
                <td>08:50</td>
                <td>09:40</td>
                <td>10:30</td>
                <td>11:20</td>
            </tr>
            <!-- Adicione mais linhas conforme necessário para os outros dias da semana -->
        </tbody>
    </table>
    </body>
</html>
