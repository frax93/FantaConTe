<?php /* Smarty version 2.6.13, created on 2015-09-02 14:31:12
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
      <nav id="nav">
      </nav>
    </header>
    <div class="doppio" id="banner">
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
    
    <a href="index.php?controller=Registrazione&task=tutorial" class="more scrolly">Segui Tutorial</a>
    <!-- collegare il bottone per il tutorial -->
    </div>
    <ul class="copyright">
      <li>&copy; Murador & Taranta & Maione</li>	
    </ul>
  </body>
</html>