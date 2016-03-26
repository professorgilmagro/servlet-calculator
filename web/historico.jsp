<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
		<meta name="description" content="Atividade da disciplina Programação Web (AIEC), cujo objetivo visa complementar os conhecimentos adquiridos pelos discentes no âmbito da disciplina pela abordagem dos conceitos estudados com o desenvolvimento de páginas estáticas em linguagem HTML." />
		<meta name="keywords" content="calculadora,fracao,matematica,conta">
		<link rel="icon" type="image/png" href="assets/images/calculator.png" />
		<link rel="stylesheet" type="text/css" href="assets/css/dataTables.css">
		<link rel="stylesheet" type="text/css" href="assets/css/base.css">
		<link rel="stylesheet" type="text/css" href="assets/css/historico.css">
		<link rel="stylesheet" type="text/css" href="assets/css/mobile.css" media="screen and (max-width: 768px)">
		<script type="text/javascript" src="assets/js/jquery-1.9.0.js" ></script>
		<script type="text/javascript" src="assets/js/dataTables.min.js" ></script>
		<script type="text/javascript" src="assets/js/historic.js" ></script>
		<title>Páginas HTML Estáticas - Equipe</title>
	</head>
	<body class="equipe">
		<header class="main" >
			<h1><a href="index.html"><img src="assets/images/aiec-logo.png" class="logo"></a> Calculador de fração 1.0</h1>
			<%@ include file="/parts/menu.jsp" %>
		</header>
		<section class="content">
			<h1>Histórico</h1>
			<article class="historic" >
				<table id="tabela-historico">
					<caption>Histórico de cálculos</caption>
					<thead>
						<tr>
							<th>Cálculo</th>
							<th>Resultado</th>
							<th>Classificação</th>
							<th>Data</th>
							<th>Usuário</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><span class="numerador">9.4</span> <img src="assets/images/small-div.png"><span class="divisor"> 3</span></td>
							<td>3,13</td>
							<td>Imprópria</td>
							<td><time datetime="2016-02-02 20:00">02/02/2016 20:00</time></td>
							<td>Mendonça</td>
						</tr>
						<tr>
							<td><span class="numerador">36</span> <img src="assets/images/small-div.png"><span class="divisor"> 12</span></td>
							<td>3</td>
							<td>Aparente</td>
							<td><time datetime="2016-02-02 19:25">02/02/2016 19:25</time></td>
							<td>José Maria</td>
						</tr>
						<tr>
							<td><span class="numerador">5</span> <img src="assets/images/small-div.png"><span class="divisor"> 6</span></td>
							<td>0,83</td>
							<td>Própria</td>
							<td><time datetime="2016-02-02 19:02">02/02/2016 19:02</time></td>
							<td>João Rodrigues</td>
						</tr>
						<tr>
							<td><span class="numerador">23</span> <img src="assets/images/small-div.png"><span class="divisor"> 1.25</span></td>
							<td>18,4</td>
							<td>Imprópria</td>
							<td><time datetime="2016-02-02 18:41">02/02/2016 18:41</time></td>
							<td>Rodrigo Costa</td>
						</tr>
						<tr>
							<td><span class="numerador">12</span> <img src="assets/images/small-div.png"><span class="divisor"> 2</span></td>
							<td>6</td>
							<td>Aparente</td>
							<td><time datetime="2016-02-02 18:40">02/02/2016 18:40</time></td>
							<td>Catarina da Silva</td>
						</tr>
						<tr>
							<td><span class="numerador">30</span> <img src="assets/images/small-div.png"><span class="divisor"> 2.2</span></td>
							<td>13,63</td>
							<td>Imprópria</td>
							<td><time datetime="2016-02-02 18:35">02/02/2016 18:35</time></td>
							<td>Christian Soares</td>
						</tr>
						<tr>
							<td><span class="numerador">3.6</span> <img src="assets/images/small-div.png"><span class="divisor"> 36</span></td>
							<td>0,1</td>
							<td>Própria</td>
							<td><time datetime="2016-02-02 18:20">02/02/2016 18:20</time></td>
							<td>Fernanda Pereira</td>
						</tr>
						<tr>
							<td><span class="numerador">380</span> <img src="assets/images/small-div.png"><span class="divisor"> 33</span></td>
							<td>11,51</td>
							<td>Imprópria</td>
							<td><time datetime="2016-02-02 18:01">02/02/2016 18:01</time></td>
							<td>Tereza Mendes</td>
						</tr>
						<tr>
							<td><span class="numerador">9.4</span> <img src="assets/images/small-div.png"><span class="divisor"> 3</span></td>
							<td>3,13</td>
							<td>Imprópria</td>
							<td><time datetime="2016-02-02 20:00">02/02/2016 20:00</time></td>
							<td>Joaquim Barbosa</td>
						</tr>
						<tr>
							<td><span class="numerador">36</span> <img src="assets/images/small-div.png"><span class="divisor"> 12</span></td>
							<td>3</td>
							<td>Aparente</td>
							<td><time datetime="2016-02-02 19:25">02/02/2016 19:25</time></td>
							<td>José Maria</td>
						</tr>
						<tr>
							<td><span class="numerador">5</span> <img src="assets/images/small-div.png"><span class="divisor"> 6</span></td>
							<td>0,83</td>
							<td>Própria</td>
							<td><time datetime="2016-02-02 19:02">02/02/2016 19:02</time></td>
							<td>Douglas Saulo</td>
						</tr>
						<tr>
							<td><span class="numerador">23</span> <img src="assets/images/small-div.png"><span class="divisor"> 1.25</span></td>
							<td>18,4</td>
							<td>Imprópria</td>
							<td><time datetime="2016-02-02 18:41">02/02/2016 18:41</time></td>
							<td>Paulo Costa</td>
						</tr>
						<tr>
							<td><span class="numerador">12</span> <img src="assets/images/small-div.png"><span class="divisor"> 2</span></td>
							<td>6</td>
							<td>Aparente</td>
							<td><time datetime="2016-02-02 18:40">02/02/2016 18:40</time></td>
							<td>Zé Luiz</td>
						</tr>
						<tr>
							<td><span class="numerador">30</span> <img src="assets/images/small-div.png"><span class="divisor"> 2.2</span></td>
							<td>13,63</td>
							<td>Imprópria</td>
							<td><time datetime="2016-02-02 18:35">02/02/2016 18:35</time></td>
							<td>Márcia Augusta</td>
						</tr>
						<tr>
							<td><span class="numerador">3.6</span> <img src="assets/images/small-div.png"><span class="divisor"> 36</span></td>
							<td>0,1</td>
							<td>Própria</td>
							<td><time datetime="2016-02-02 18:20">02/02/2016 18:20</time></td>
							<td>Kaio Cesar</td>
						</tr>
						<tr>
							<td><span class="numerador">380</span> <img src="assets/images/small-div.png"><span class="divisor"> 33</span></td>
							<td>11,51</td>
							<td>Imprópria</td>
							<td><time datetime="2016-02-02 18:01">02/02/2016 18:01</time></td>
							<td>Joaquim Souza</td>
						</tr>
					</tbody>
				</table>
			</article>
		</section>
		<%@ include file="/parts/footer.jsp" %>
	</body>
</html>