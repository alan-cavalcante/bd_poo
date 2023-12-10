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

        <div class="container2">
            <div class="suportecontainer">
                <div class="professorCadastrado" >
                    <p>O professor: </p>
                    <%
                       String jsp_nomeDoProfessor = request.getParameter("nomeProf");
           
                       Inserir a = new Inserir();
                       Armazena arm = new Armazena();
           
                       arm.setNomeDoProfessor(jsp_nomeDoProfessor);
           
                       Conexao b = new Conexao();
                       out.println("<b>" + arm.getNomeDoProfessor() + "</b>");
                       a.inserirProfessor(arm);
                    %>
                    <p>foi cadastrado.</p>
                    <a href="index.html" class="inputCadastrar" style="text-decoration: none" >VOLTAR</a>
                </div>
            </div>
        </div>
    </body>
</html>