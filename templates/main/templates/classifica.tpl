<html>
  <head>
    <title>{$title}</title>
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
          <h1><a href="index.php?controller=Classifica&task=aggiorna"><h2><font color=green>{$Fanta}</font><font color=white>{$Con}</font><font color=red>{$Te}</font></h2></a></h1>
	    <nav id="nav">
	      <ul>	
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
	      <th>Percentuale Vittorie</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <td>{$arr.posizione}</td>
	      <td> {$arr.squadra} </td>
	      <td> {$arr.nome} </td>
	      <td> {$arr.pgioc} </td>
	      <td> {$arr.punti} </td>
	      <td> {$arr.percv} </td>
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
