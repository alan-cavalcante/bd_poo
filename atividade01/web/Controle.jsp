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
           
           a.inserirDados(arm);
        %>
    </body>
</html>
