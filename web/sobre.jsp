<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
		<meta name="description" content="Atividade da disciplina Programação Web (AIEC), cujo objetivo visa complementar os conhecimentos adquiridos pelos discentes no âmbito da disciplina pela abordagem dos conceitos estudados com o desenvolvimento de páginas estáticas em linguagem HTML." />
		<meta name="keywords" content="calculadora,fracao,matematica,conta">
		<link rel="icon" type="image/png" href="assets/images/calculator.png" />
		<link rel="stylesheet" type="text/css" href="assets/css/base.css">
		<link rel="stylesheet" type="text/css" href="assets/css/sobre.css">
		<link rel="stylesheet" type="text/css" href="assets/css/mobile.css" media="screen and (max-width: 768px)">
		<script type="text/javascript" src="assets/js/jquery-1.9.0.js" ></script>
		<title>Páginas HTML Estáticas - Sobre</title>
	</head>
	<body class="equipe">
		<header class="main" >
			<h1><a href="index.html"><img src="assets/images/aiec-logo.png" class="logo"></a> Calculador de fração 1.0</h1>
			<%@ include file="/parts/menu.jsp" %>
		</header>
		<section class="content">
			<article>
				<header>
					<h1>Sobre</h1>
					<p>Trabalho da disciplina Programação WEB</p>
				</header>
				<p>
					<strong>Objetivo 1:</strong> Complementar os conhecimentos adquiridos pelos
					discentes no âmbito da disciplina pela abordagem dos conceitos estudados
					com o desenvolvimento de páginas estáticas em linguagem HTML.
				</p>
                                <p>
                                    <strong>Objetivo 2:</strong> Complementar os conhecimentos adquiridos pelos
discentes no âmbito da disciplina pela abordagem dos conceitos estudados
com o desenvolvimento de páginas web dinâmicas com Servlets (linguagem
Java).
                                </p>
				<p>Sistema para permitir ao usuário a manipulação de uma fração (numerador e denominador) matemática.</p>
				<p>&nbsp;</p>
				<p><strong>Professor:</strong> Guilherme Veloso Neves Oliveira</p>
			</article>
		</section>
		<%@ include file="/parts/footer.jsp" %>
	</body>
</html>