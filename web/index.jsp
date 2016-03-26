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
            <link rel="stylesheet" type="text/css" href="assets/css/home.css">
            <link rel="stylesheet" type="text/css" href="assets/css/calculadora.css">
            <link rel="stylesheet" type="text/css" href="assets/css/mobile.css" media="screen and (max-width: 768px)">
            <script type="text/javascript" src="assets/js/jquery-1.9.0.js" ></script>
            <script type="text/javascript" src="assets/js/calculator.js" ></script>
            <title>Calculadora de frações - Home</title>
	</head>
	<body class="home">
		<header class="main" >
			<h1><a href="index.html"><img src="assets/images/aiec-logo.png" class="logo"></a> Calculador de fração 1.0</h1>
			<%@ include file="/parts/menu.jsp" %>
		</header>
		<section class="content-left" >
			<article>
				<header>
					<h2>Calculadora de fração</h2>
					<p>Quando precisamos representar numericamente uma parte de um todo, utilizamos as frações. A estrutura da fração é dada por a/b, onde a é o numerador e b o denominador.
					a: numerador, b: denominador O traço entre o a e o b significa divisão.</p>
				</header>
				<p>
					Fração é uma parte do todo – inteiro. O conceito de fração é gerado em situação nas quais precisamos dividir um número menor por outro maior.
					<br>Com o intuito de auxiliar nas medições de terras, as frações surgiram no Egito há cerca de 3000 anos.
				</p>
				<p>
					Cada tipo de fração possui sua especificidade. Por isso, é necessária uma forma de classificá-las. Assim, há três tipos de fração: própria, imprópria e aparente.<br>
					<br><strong>Fração própria:</strong> o numerador é menor que o denominador.
					<br><strong>Fração imprópria:</strong> o numerador é maior do que o denominador.
					<br><strong>Fração aparente:</strong> São as frações em que o numerador é múltiplo do denominador.
				</p>
			</article>
		<%@ include file="/parts/calculadora.jsp" %>	
		</section>
		<section class="content-right" >
			<aside class="history">
				<table>
					<caption><img  src="assets/images/calculator.png" class="icon"> Cálculos recentes</caption>
					<thead>
						<tr>
							<th>Cálculo</th>
							<th>Resultado</th>
							<th>Classificação</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><span class="numerador">9.4</span><img src="assets/images/small-div.png"><span class="divisor">3</span></td>
							<td>3,13</td>
							<td>Imprópria</td>
						</tr>
						<tr>
							<td><span class="numerador">36</span><img src="assets/images/small-div.png"><span class="divisor">12</span></td>
							<td>3</td>
							<td>Aparente</td>
						</tr>
						<tr>
							<td><span class="numerador">5</span><img src="assets/images/small-div.png"><span class="divisor">6</span></td>
							<td>0,83</td>
							<td>Própria</td>
						</tr>
						<tr>
							<td><span class="numerador">23</span><img src="assets/images/small-div.png"><span class="divisor">1.25</span></td>
							<td>18,4</td>
							<td>Imprópria</td>
						</tr>
						<tr>
							<td><span class="numerador">12</span><img src="assets/images/small-div.png"><span class="divisor">2</span></td>
							<td>6</td>
							<td>Aparente</td>
						</tr>
						<tr>
							<td><span class="numerador">30</span><img src="assets/images/small-div.png"><span class="divisor">2.2</span></td>
							<td>13,63</td>
							<td>Imprópria</td>
						</tr>
						<tr>
							<td><span class="numerador">3.6</span><img src="assets/images/small-div.png"><span class="divisor">36</span></td>
							<td>0,1</td>
							<td>Própria</td>
						</tr>
						<tr>
							<td><span class="numerador">380</span><img src="assets/images/small-div.png"><span class="divisor">33</span></td>
							<td>11,51</td>
							<td>Imprópria</td>
						</tr>
					</tbody>
				</table>
			</aside>
		</section>
		<%@ include file="/parts/footer.jsp" %>
	</body>
</html>