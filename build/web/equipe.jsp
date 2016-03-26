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
		<link rel="stylesheet" type="text/css" href="assets/css/equipe.css">
		<link rel="stylesheet" type="text/css" href="assets/css/mobile.css" media="screen and (max-width: 768px)">
		<script type="text/javascript" src="assets/js/jquery-1.9.0.js" ></script>
		<title>Páginas HTML Estáticas - Equipe</title>
	</head>
	<body class="equipe">
		<header class="main" >
			<h1><a href="index.html"><img src="assets/images/aiec-logo.png" class="logo"></a> Calculador de fração 1.0</h1>
			<%@ include file="/parts/menu.jsp" %>
                </header>
		<section class="content">
			<article>
				<header>
					<h1>Team</h1>
					<p>Este site foi desenvolvido com a colaboração dos membros abaixo:</p>
				</header>
				<ul class="profile">
					<li>
						<figure>
							<img src="assets/images/anne.jpg">
							<figcaption>Anne Caroline</figcaption>
						</figure>
						<div class="description" itemscope itemtype="http://schema.org/Organization">
						    <h2 itemprop="occupation">Analista de Sistemas</h2>
						    <p itemprop="tel">41 9999-9999</p>
						    <p itemprop="address" itemscope itemtype="http://schema.org/address">
						      <span itemprop="locality">Curitiba</span>,
						      <span itemprop="region">Paraná</span>.
						    </p>
						</div>
					</li>
					<li>
						<figure>
							<img src="assets/images/gilmar.jpg">
							<figcaption>Gilmar Soares</figcaption>
						</figure>
						<div class="description" itemscope itemtype="http://schema.org/Organization">
						    <h2 itemprop="occupation">Analista de Sistemas</h2>
						    <p itemprop="tel">11 9999-9999</p>
						    <p itemprop="address" itemscope itemtype="http://schema.org/address">
						      <span itemprop="locality">São Paulo</span>,
						      <span itemprop="region">SP</span>.
						    </p>
						</div>
					</li>
					<li>
						<figure>
							<img src="assets/images/boreto.jpg">
							<figcaption>Ricardo Alonso</figcaption>
						</figure>
						<div class="description" itemscope itemtype="http://schema.org/Organization">
							<h2 itemprop="occupation">Analista de Sistemas</h2>
							<p itemprop="tel">11 9999-9999</p>
							<p itemprop="address" itemscope itemtype="http://schema.org/address">
								<span itemprop="locality">São Paulo</span>,
								<span itemprop="region">SP</span>.
							</p>
						</div>
					</li>
				</ul>
			</article>
		</section>
                <%@ include file="/parts/footer.jsp" %>
	</body>
</html>