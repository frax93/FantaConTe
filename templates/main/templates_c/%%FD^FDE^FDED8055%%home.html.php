<?php /* Smarty version 2.6.13, created on 2015-07-15 16:32:58
         compiled from home.html */ ?>
<!DOCTYPE HTML>
<!--
	Spectral by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title><?php echo $this->_tpl_vars['titolo']; ?>
</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body class="landing">

		<!-- Page Wrapper -->
			<div id="page-wrapper">


				<!-- Header -->
				
				<article id="main">
					
						<section class="spotlight">
							<div class="content"><?php echo $this->_tpl_vars['contenuto']; ?>
</div>
					    </div>
						</section>
						
					<header id="header">
						<h1><a href="index.php?controller=Classifica&task=nuova"><h2><font color=green>Fanta</font><font color=white>Con</font><font color=red>Te</font></h2></a></h1>
						<nav id="nav">
							<ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
											<li><a href="index.php?controller=Classifica&task=nuova">Home</a></li>
											<li><a href="index.php?controller=Mercato&task=riempi">Mercato</a></li>
											<li><a href="index.php?controller=Formazione&task=nuova">Formazione</a></li>
											<li><a href="index.php?controller=Registrazione&task=logout">Log Out</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</header>

			
              
              
              
              
              
              <div> </div>
              <div>  <h5>Classifica FantaConTe</h5> 
									
									<div class="table-wrapper">
										<table>
											<thead>
												<tr>
												    <th>Posizione</th>
													<th><font color=red>Squadra</font></th>
													<th>NomeUtente</th>
													<th>P.Giocate</th>
													<th><font color=red>Punti</font></th>
													<th>Percentuale Vittorie</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><?php echo $this->_tpl_vars['arr']['posizione']; ?>
</td>
													<td> <?php echo $this->_tpl_vars['arr']['squadra']; ?>
 </td>
													<td> <?php echo $this->_tpl_vars['arr']['nome']; ?>
 </td>
													<td> <?php echo $this->_tpl_vars['arr']['pgioc']; ?>
 </td>
													<td> <?php echo $this->_tpl_vars['arr']['punti']; ?>
 </td>
													<td> <?php echo $this->_tpl_vars['arr']['percv']; ?>
 </td>
													
												</tr>
											</tbody>
										</table>
									</div>
									
						</div>
				

				
                         <footer id="footer">
						
						<ul class="copyright">
							<li>&copy; Murador & Taranta & Maione</li>
						</ul>
					</footer>
			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>