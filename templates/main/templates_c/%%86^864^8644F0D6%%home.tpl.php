<?php /* Smarty version 2.6.13, created on 2015-08-03 10:26:50
         compiled from home.tpl */ ?>
<html>
  <head>
    <title><?php echo $this->_tpl_vars['title']; ?>
</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="css/main.css" />
    <!-- Scripts -->
    <script src="Javascript/jquery.min.js"></script>
    <script src="Javascript/jquery.scrollex.min.js"></script>
    <script src="Javascript/jquery.scrolly.min.js"></script>
    <script src="Javascript/skel.min.js"></script>
    <script src="Javascript/util.js"></script>
    <script src="Javascript/main.js"></script>
  </head>
  <body class="landing">
    <!-- Page Wrapper -->
    <div id="page-wrapper">
      <!-- Header -->
      <article id="main">
	<section class="spotlight">
	  <div class="content"> </div>
    
        </section>
    </div>
    <header id="header">
      <h1><a href="index.php?controller=Classifica&task=aggiorna"><h2><font color=green><?php echo $this->_tpl_vars['Fanta']; ?>
</font><font color=white><?php echo $this->_tpl_vars['Con']; ?>
</font><font color=red><?php echo $this->_tpl_vars['Te']; ?>
</font></h2></a></h1>
      <nav id="nav">
        <ul>
	  <li class="special">
	    <a href="#menu" class="menuToggle"><span>Menu</span></a>
	    <div id="menu">
	      <ul>
                <li><a href="index.php">Home</a></li>
		<li><a href="index.php?controller=Mercato&task=riempi">Mercato</a></li>
		<li><a href="index.php?controller=Formazione&task=nuova">Formazione</a></li>
		<li><a href="index.php?controller=Registrazione&task=logout">Log Out</a></li>
	      </ul>
	    </div>
	  </li>
	</ul>
      </nav>
    </header>
    <div class="inner" id="banner">
      <h2><font color=green>Fanta</font><font color=white>Con</font><font color=red>Te</font></h2>
        <p><font color=yellow>Crea la tua squadra e diventa un Allenatore<br/>
	  .... il sito per il vostro Calcio<br /></font>
	</p>
	<!-- per cancellare i bottoni di login <div class="cancellabottone"> -->
        <form method="POST" enctype="multipart/form-data" action="index.php?controller=Registrazione&task=login">	
          <div>
            <ul class="actions">
	        <li>
                  <div class="buttonin1" >
		    <input type="text" id="email" name="email" value="" placeholder="Email">
		  </div>
		</li>
		<li>
                  <div class="buttonin2" >
		    <input type="password" id="password" name="password" value=""placeholder="Password">
		  </div>
		</li>
                <li> 
                  <input type="submit" name="submit" id="login-button" class="button special" value="login"> 
                  </form>
            </ul>
            <a href="index.php?controller=Registrazione&task=modulo_registrazione" class="button">Registrati</a>
	  </div>
    </div>
    <a href="index.php?controller=Registrazione&task=tutorial" class="more scrolly">Segui Tutorial</a>
    <!-- collegare il bottone per il tutorial -->
    <ul class="copyright">
      <li>&copy; Murador & Taranta & Maione</li>	
    </ul>
  </body>
</html>