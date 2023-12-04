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
           String jsp_nomeDaDisciplina = request.getParameter("nomeDisc");
           
           Inserir a = new Inserir();
           Armazena arm = new Armazena();
           
           arm.setNomeDaDisciplina(jsp_nomeDaDisciplina);
           
           Conexao b = new Conexao();
           
           out.println("A disciplina " + arm.getNomeDaDisciplina() + " foi cadastrada.");
           
           a.inserirDisciplina(arm);
        %>
        <a href="index.html">Voltar</a>
    </body>
</html>