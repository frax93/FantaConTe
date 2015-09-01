<html>
  <head>
    <title>{$title}</title>
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
          <h1><a href="index.php?controller=Classifica&task=nuova"><h2><font color=green>{$Fanta}</font><font color=white>{$Con}</font><font color=red>{$Te}</font></h2></a></h1>
                      
	    <nav id="nav">
    
	      <ul>
                  <font color=LIME> Benvenuto {$Benvenuto}</font>&nbsp;&nbsp;&nbsp;&nbsp;
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
             <th><font color=red>Punti</font></th>
	    </tr>
	  </thead>
	  <tbody>  
              {foreach from=$arr item=arr1}
	    <tr> 
	      <td> {$arr1.email}</td>
              <td> {$arr1.nome_squadra} </td>  
              <td> {$arr1.punteggio} </td>  
            </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
            <div><font color=yellow>Complimenti {$vincitore} HAI VINTO!</font></div>
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
