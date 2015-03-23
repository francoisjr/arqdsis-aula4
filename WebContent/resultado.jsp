<%@ page import="java.util.*"%>
<%@page import="model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/imagens.css">
<link rel="stylesheet" href="./css/main.css">
<title>Guia de Cervejas</title>
</head>
<body>
	<a href="index.html">Voltar</a>
	<h2>Cervejas Recomendadas</h2>
	<%
		TreeSet<Cerveja> lista = (TreeSet<Cerveja>) request
				.getAttribute("listaDeMarcas");

		for (Cerveja cerveja : lista) {

			out.println("<div class=\"img\">");
			out.println("<div class=\"nome\">" + cerveja.getNome()
					+ "</div>");
			out.println("<a target=\"_blank\" href=\"carrinho.html\">");
			out.println("<img src=\"./img/" + cerveja.getImagem()
					+ ".jpg\" alt=\"" + cerveja.getNome()
					+ "\" width=\"210\" height=\"210\"></a>");
			out.println("<div class=\"desc\">Estilo: "
					+ cerveja.getEstilo() + "</div>");
			out.println("<div class=\"desc\">Cor: " + cerveja.getCor()
					+ "</div>");
			out.println("<div class=\"desc\">País: " + cerveja.getPais()
					+ "</div>");
			out.println("</div>");
		}
	%>
</body>
</html>