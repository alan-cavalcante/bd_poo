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
                    <p>A disciplina: </p>
                    <%
                       String jsp_nomeDaDisciplina = request.getParameter("nomeDisc");
                        Inserir a = new Inserir();
                        Armazena arm = new Armazena();
                        arm.setNomeDaDisciplina(jsp_nomeDaDisciplina);
                        Conexao b = new Conexao();
                        out.println("<b> " + arm.getNomeDaDisciplina() + " </b>");
                        a.inserirDisciplina(arm);
                    %>
                    <p>foi cadastrada.</p>
                    <a href="index.html" class="inputCadastrar" style="text-decoration: none" >VOLTAR</a>
                </div>
            </div>
        </div>
    </body>
</html>