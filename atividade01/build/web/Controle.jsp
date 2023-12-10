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
           
        %>
         <div class="container2">
            <div class="suportecontainer">
                <div class="professorCadastrado" >
                    <%
                       String jsp_diaSemana = request.getParameter("diaSemana");
           String jsp_horarioInicio = request.getParameter("horarioInicio");
           String jsp_horarioFim = request.getParameter("horarioFim");
           String jsp_disciplinaId = request.getParameter("disciplinaId");
           int jsp_discId = Integer.parseInt(jsp_disciplinaId);
           String jsp_professorId = request.getParameter("professorId");
           int jsp_profId = Integer.parseInt(jsp_professorId);
           String jsp_turno = request.getParameter("turno");
           
           Inserir a = new Inserir();
           Armazena arm = new Armazena();
           
           arm.setdiaSemana(jsp_diaSemana);
           arm.sethorarioInicio(jsp_horarioInicio);
           arm.sethorarioFim(jsp_horarioFim);
           arm.setdisciplinaId(jsp_discId);
           arm.setprofessorId(jsp_profId);
           arm.setTurno(jsp_turno);
           
           Conexao b = new Conexao();
           
           // out.println(b.getConnection());
           
           out.println("Horário cadastrado para: " + arm.getDiaSemana() + " das " + arm.getHorarioInicio() + " às " + arm.getHorarioFim() + " no turno " + arm.getTurno() + "<br>" );
           a.inserirDados(arm);
                    %>
                    <a href="index.html" class="inputCadastrar" style="text-decoration: none" >VOLTAR</a>
                </div>
            </div>
        </div>
    </body>
</html>
