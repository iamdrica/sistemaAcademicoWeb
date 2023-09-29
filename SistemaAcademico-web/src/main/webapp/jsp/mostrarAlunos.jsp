<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.exemplo.model.Aluno"%>


<!DOCTYPE html>
<html>
<head>
<title>Lista Alunos</title>

<link rel="stylesheet" href="css/style.css">

</head>
<body>

<div class="menu">

  <img class="imagem_logo" src="images/unicid copiar.png" alt="Logotipo">
  
  <a href="html/incluir.html">Incluir Aluno</a>
  <a href="index.html" style="float:right">Sair</a>
</div>

<hr>

	<table class="tabela">
		<tr>
			<th colspan="9"><h1 class="titulo_tabela">Lista de Alunos</h1></th>
		</tr>
		<tr>
			<th>RA</th>
			<th>Nome</th>
			<th>Endereço</th>
			<th>E-mail</th>
			<th>Nascimento</th>
			<th>Periodo</th>
			<th>Status</th>
	
		</tr>
		
		<%
		SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
		List<Aluno> lista = new ArrayList<Aluno>();
		lista = (ArrayList) request.getAttribute("alunosList");
		for (Aluno a : lista) {
		%>
		<tr>
			<td><%=a.getRa()%></td>
			<td><%=a.getNome()%></td>
			<td><%=a.getEndereco()%></td>
			<td><%=a.getEmail()%></td>
			<td><%=data.format(a.getDataNascimento())%></td>
			<td><%=a.getPeriodo()%></td>
			<td>
				<a href="ServletAluno?cmd=atu&txtRa=<%=a.getRa()%>"><button><img src="images/alterar.png "alt="Alterar"></button></a>
         		<a href="ServletAluno?cmd=exc&txtRa=<%=a.getRa()%>"><button><img src="images/excluir.png" alt="Excluir"></button></a>
            </td>
					
		</tr>
		<% } %>
		
		<!--  <tr>
			<th colspan="9" ><a href="index.html">Página Principal</a></th>
		</tr>	-->	
	</table>
	
	<section>
<footer>
 			<h5 class="rodape"> Copywriter Edriene Couto @2023</h5>
		</footer>
</section>
</body>
</html>

