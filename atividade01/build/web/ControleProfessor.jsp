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
           String jsp_nomeDoProfessor = request.getParameter("nomeProf");
           
           Inserir a = new Inserir();
           Armazena arm = new Armazena();
           
           arm.setNomeDoProfessor(jsp_nomeDoProfessor);
           
           Conexao b = new Conexao();
           
           out.println("O professor " + arm.getNomeDoProfessor() + " foi cadastrado.");
//           out.println(arm.getNomeDoProfessor());
           
           a.inserirProfessor(arm);
        %>
        <a href="index.html">Voltar</a>
    </body>
</html>