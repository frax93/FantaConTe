<?php /* Smarty version 2.6.13, created on 2015-08-31 15:18:36
         compiled from classifica.tpl */ ?>
<html>
  <head>
    <title><?php echo $this->_tpl_vars['title']; ?>
</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link rel="stylesheet" href="css/main.css" />
      <script src="Javascript/jquery.min.js"></script>
      <script src="Javascript/jquery.scrollex.min.js"></script>
      <script src="Javascript/jquery.scrolly.min.js"></script>
      <script src="Javascript/skel.min.js"></script>
      <script src="Javascript/util.js"></script>
      <script src="Javascript/main.js"></script>
  </head>
  <body class="landing">
    <div class="classifica"><br>							
      <div class="table-wrapper "> <br>
     <div id="page-wrapper">
      <!-- Header -->
      <article id="main">
	<section class="spotlight">
	  <div class="content"> </div>
    
        </section>
    </div>
        <header id="header">
          <h1><a href="index.php?controller=Classifica&task=nuova"><h2><font color=green><?php echo $this->_tpl_vars['Fanta']; ?>
</font><font color=white><?php echo $this->_tpl_vars['Con']; ?>
</font><font color=red><?php echo $this->_tpl_vars['Te']; ?>
</font></h2></a></h1>
                      
	    <nav id="nav">
    
	      <ul>
                  <font color=LIME> Benvenuto <?php echo $this->_tpl_vars['Benvenuto']; ?>
</font>&nbsp;&nbsp;&nbsp;&nbsp;
                <li class="special">
		  <a href="#menu" class="menuToggle"><span>Menu</span></a>
		  <div id="menu">
	            <ul>
                      <li><a href="index.php?controller=Classifica&task=nuova">Classifica</a></li>
		      <li><a href="index.php?controller=Mercato&task=riempi">Mercato</a></li>
                      <li><a href="index.php?controller=Squadra&task=visualizza">Squadra</a></li>
		      <li><a href="index.php?controller=Formazione&task=visualizza">Formazione</a></li>
		      <li><a href="index.php?controller=Registrazione&task=logout">Log Out</a></li>
		    </ul>
		  </div>
		</li>
	      </ul>
	    </nav>	
        </header>
                
        <table>
          <thead>
            <tr>
             <th>Email</th>
             <th><font color=red>Squadra</font></th>
	     <th>P.Giocate</th>
             <th><font color=red>Punti</font></th>
	    </tr>
	  </thead>
	  <tbody>  
              <?php $_from = $this->_tpl_vars['arr']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['arr1']):
?>
	    <tr> 
	      <td> <?php echo $this->_tpl_vars['arr1']['email']; ?>
</td>
              <td> <?php echo $this->_tpl_vars['arr1']['nome_squadra']; ?>
 </td>  
	      <td> <?php echo $this->_tpl_vars['arr1']['partite_giocate']; ?>
 </td>
              <td> <?php echo $this->_tpl_vars['arr1']['punteggio']; ?>
 </td>  
            </tr>
            <?php endforeach; endif; unset($_from); ?>
          </tbody>
        </table>
      </div>
            <div><font color=yellow>Complimenti <?php echo $this->_tpl_vars['vincitore']; ?>
 HAI VINTO!</font></div>
    </div>
    <footer id="footer">
      <ul class="copyright">
        <li>&copy; Murador & Taranta & Maione</li>
      </ul>
    </footer>
  </div>
</div>
</body>
</html>