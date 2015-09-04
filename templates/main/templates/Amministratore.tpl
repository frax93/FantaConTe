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
      <script src="Javascript/Elimina.js"></script>
      <script src="Javascript/main.js"></script>
  </head>
  <body class="landing">
    <div class="laisias"><br>							
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
                      <li><a href="index.php?controller=Amministratore&task=amministratore">Cambia Voti</a></li>
		      <li><a href="index.php?controller=Registrazione&task=logout">Log Out</a></li>
		    </ul>
		  </div>
		</li>
	      </ul>
	    </nav>	
        </header>
  <section class="spotlight">
    <div class="image"><img src="images/admin.jpg" alt="" /></div>
    <div class="content">
      <h2>Aggiornamento Voti SERIE A</h2>
      <p>Ogni giocaotore avrà il suo voto in base alla partita giocata nella giornata corrente</p>
    </div>
  </section>
  <h5>Mercato Giocatori</h5>
  <form method="post" action="index.php?controller=Amministratore&task=cambiovoti">
  <input type="submit" name="submit" id="submit_1" class="button special" value="Salva VOTI"/>
  <h4><font color="orange">    Portieri   </font> </h4>
  <div class="table-wrapper">
    <table class="tabellaportieri">
      <thead>
        <tr>
          <th>Nome</th>
          <th>Cognome</th>
	  <th>Squadra</th>
	  <th>Prezzo</th>
          <th>      </th>
	</tr>
      </thead>
      <tbody>
	{foreach from=$portieri item=por}
          <tr>
              <td><font color="orange">{$por.nome} </font></td>
            <td><font color="orange">{$por.cognome} </font></td>
	    <td><font color="orange">{$por.squadra_reale} </font></td>
	    <td><font color="orange">{$por.valore}</font></td>
            <td> <select name={$por.id} id="voto" >
                <optgroup id="voto" >
                    {foreach from=$voti item=voto}
                        {if $voto eq "6"}
                    <option value={$voto} {$selected}{$default} >{$voto}</option>
                    {else}
                        <option value={$voto}>{$voto}</option> {/if}
                    {/foreach}
                </optgroup>
             </select>
        </td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  </div>
 <h4><font color="turquoise">    Difensori   </font></h4>
  <div class="table-wrapper">
    <table class="tabelladif">
      <thead>
        <tr>
          <th>Nome</th>
          <th>Cognome</th>
	  <th>Squadra</th>
	  <th>Prezzo</th>
          <th>      </th>
	</tr>
      </thead>
      <tbody>
	{foreach from=$difesa item=dif}
          <tr>
              <td><font color="turquoise">{$dif.nome} </font></td>
            <td><font color="turquoise">{$dif.cognome} </font></td>
	    <td><font color="turquoise">{$dif.squadra_reale}</font> </td>
	    <td><font color="turquoise">{$dif.valore}</font></td>
            <td> <select name={$dif.id} id="voto">
                <optgroup id="voto">
                    {foreach from=$voti item=voto}
                      {if $voto eq "6"}
                    <option value={$voto} {$selected}{$default} >{$voto}</option>
                    {else}
                        <option value={$voto}>{$voto}</option> {/if}
                    {/foreach}
                </optgroup>
             </select>
        </td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  </div>
  <h4><font color="CHARTREUSE">Centrocampisti  </font></h4>
  <div class="table-wrapper">
    <table class="tabellacen">
      <thead>
        <tr>
          <th>Nome</th>
          <th>Cognome</th>
	  <th>Squadra</th>
	  <th>Prezzo</th>
          <th>  </th>
        </tr>
      </thead>
      <tbody>
	{foreach from=$centrocampo item=cen}
          <tr>                                                                                                      
              <td><font color="CHARTREUSE">{$cen.nome} </font></td>
            <td><font color="CHARTREUSE">{$cen.cognome}</font> </td>
	    <td><font color="CHARTREUSE">{$cen.squadra_reale} </font></td>
	    <td><font color="CHARTREUSE">{$cen.valore} </font></td>
            <td> <select name={$cen.id} id="voto">
                <optgroup id="voto">
                    {foreach from=$voti item=voto}
                    {if $voto eq "6"}
                    <option value={$voto} {$selected}{$default} >{$voto}</option>
                    {else}
                        <option value={$voto}>{$voto}</option> {/if}
                    {/foreach}
                </optgroup>
             </select>
        </td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  </div>
  <h4><font color="DEEPSKYBLUE">   Attaccanti   </font></h4>
  <div class="table-wrapper">
    <table class="tabellaatt">
      <thead>
        <tr>
          <th>Nome</th>
            <th>Cognome</th>
	    <th>Squadra</th>
	    <th>Prezzo</th>
            <th>      </th>
	</tr>
      </thead>
      <tbody>
        {foreach from=$attacco item=att}
          <tr>
	    <td><font color="DEEPSKYBLUE">{$att.nome} </font></td>
            <td><font color="DEEPSKYBLUE">{$att.cognome} </font></td>
	    <td><font color="DEEPSKYBLUE">{$att.squadra_reale} </font></td>
            <td><font color="DEEPSKYBLUE">{$att.valore}</font></td>
            <td> <select name={$att.id} id="voto">
                <optgroup id="voto">
                    {foreach from=$voti item=voto}
                    {if $voto eq "6"}
                    <option value={$voto} {$selected}{$default} >{$voto}</option>
                    {else}
                        <option value={$voto}>{$voto}</option> {/if}
                    {/foreach}
                </optgroup>
             </select>
        </td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  </div>
  </form>
  <a href="#"><input type="submit" name="submit" id="submit_1" class="button special" value="TORNA SU"/></a>
</div>