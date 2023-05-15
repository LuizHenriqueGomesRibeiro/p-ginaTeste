<%-- 
    Document   : insere_especialidades
    Created on : 5 de mai. de 2023, 16:09:46
    Author     : Luiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="conexao" scope="page" class="banco_dados.conexaoBancoDados"/>
<jsp:useBean id="especialidade" scope="page" class="banco_dados.especialidades"/>
<!DOCTYPE html>
<html>
    <head>
        <title>Conexão com banco de dados</title>
    </head>
    <body>
        <h1>Conexão com banco de dados</h1>
        <%
            if(conexao.abrirConexao()){
                especialidade.configurarConexao(conexao.obterConexao());
                
                if(especialidade.inserirRegistro("Clínica Geral")) out.println("<h2>Especialidade 'Clínica Geral' "
                + "cadastrada com sucesso!</h2>");
                else out.println("<h2>Erro ao tentar cadastrar especialidades!</h2>");
                
                conexao.fecharConexao();
            }
            else out.println("<p>Falha na conexão com o banco de dados.</p>");
        %>
    </body>
</html>
