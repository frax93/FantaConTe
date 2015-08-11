<?php /* Smarty version 2.6.13, created on 2015-08-11 11:15:33
         compiled from classifica.tpl */ ?>
<html>
  <head>
    <title><?php echo $this->_tpl_vars['title']; ?>
</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link rel="stylesheet" href="css/main.css" />
      <link rel="stylesheet" href="css/tabella.css" />
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
        <header id="header">
          <h1><a href="index.php?controller=Classifica&task=aggiorna"><h2><font color=green><?php echo $this->_tpl_vars['Fanta']; ?>
</font><font color=white><?php echo $this->_tpl_vars['Con']; ?>
</font><font color=red><?php echo $this->_tpl_vars['Te']; ?>
</font></h2></a></h1>
                      
	    <nav id="nav">
    
	      <ul>
                  <font color=yellow> CREDITI </font>
                  <font color=yellow> <?php echo $this->_tpl_vars['crediti']; ?>
 250 </font>
                <li class="special">
		  <a href="#menu" class="menuToggle"><span>Menu</span></a>
		  <div id="menu">
	            <ul>
                      <li><a href="index.php">Home</a></li>
		      <li><a href="index.php?controller=Mercato&task=riempi">Mercato</a></li>
                      <li><a href="index.php?controller=Squadra&task=visualizza">Squadra</a></li>
		      <li><a href="index.php?controller=Formazione&task=nuova">Formazione</a></li>
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
              <th>Posizione</th>
	      <th><font color=red>Squadra</font></th>
	      <th>NomeUtente</th>
	      <th>P.Giocate</th>
	      <th><font color=red>Punti</font></th>
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
	      <td> <?php echo $this->_tpl_vars['totale']; ?>
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
</div>
</body>
</html>