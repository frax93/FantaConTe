<script src="Javascript/jquery.min.js"></script>
<script src="Javascript/Elimina.js"></script>
<div id="main">
    <br>
    <br>
  <section class="spotlight">
    <div class="image"><img src="images/formazione.jpg" alt="" /></div>
    <div class="content">
      <h2>Inserisci la tua formazione</h2>
      <p> Raggiungi la vetta della classifica....</p>
       <a href="index.php?controller=Formazione&task=modifica"><input class="button special" type="submit" name="submit" id="submit_1"  value="RESET FORMAZIONE"></a>
    </div>
  </section>
    <h5>Titolari</h5>
    <h4><font color="orange">     Portieri   </font></h4>
    <div class="table-wrapper">
      <table class="tabellapor">
        <thead>
          <tr>
	    <th>Nome</th>
            <th>Cognome</th>
	    <th>Squadra</th>
	    <th>Voto</th>
	  </tr>
	</thead>
	<tbody>
	  {foreach from=$portieri item=por}
            <tr>
              <td><font color="orange">{$por.nome} </font></td>
              <td><font color="orange">{$por.cognome} </font></td>
              <td><font color="orange">{$por.squadra_reale} </font></td>
              <td><font color="orange">{$por.voto} </font></td>
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
	    <th>Voto</th>
	  </tr>
	</thead>
	<tbody>
	  {foreach from=$difensori item=dif}
            <tr>
	      <td><font color="turquoise">{$dif.nome} </font> </td>
              <td><font color="turquoise">{$dif.cognome}  </font></td>
	      <td><font color="turquoise">{$dif.squadra_reale} </font> </td>
	      <td><font color="turquoise">{$dif.voto} </font></td>
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
	    <th>Voto</th>
	  </tr>
	</thead>
	<tbody>
	  {foreach from=$centrocampo item=cen}
            <tr>                                                                                                      
	      <td><font color="CHARTREUSE">{$cen.nome} </font></td>
              <td><font color="CHARTREUSE">{$cen.cognome} </font></td>
	      <td><font color="CHARTREUSE">{$cen.squadra_reale} </font></td>
	      <td><font color="CHARTREUSE">{$cen.voto} </font></td>
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
	    <th>Voto</th>
	  </tr>
	</thead>
	<tbody>
          {foreach from=$attacco item=att}
            <tr>
	      <td><font color="DEEPSKYBLUE">{$att.nome} </font></td>
              <td><font color="DEEPSKYBLUE">{$att.cognome} </font></td>
	      <td><font color="DEEPSKYBLUE">{$att.squadra_reale} </font></td>
	      <td><font color="DEEPSKYBLUE">{$att.voto} </font></td>
            </tr>
          {/foreach}
	</tbody>
      </table>
    </div>  
    <br>
    <div class="table-wrapper">
      <table class="tabellaatt">
        <thead>
          <tr>
            <th> </th>
            <th> </th>
            <th> </th>
            <th> </th>
	    <th> </th>
            <th> </th>
            <th> </th>
	    <th> </th>
            <th> </th>
            <th> </th>
	    <th> </th>
	    <th> Voto Totale</th>
	  </tr>
	</thead>
	<tbody>
            <tr>
	      <td> </td>
              <td> </td>
	      <td> </td>
              <td> </td>
	      <td> </td>
	      <td> </td>
              <td> </td>
	      <td> </td>
	      <td> </td>
	      <td> </td>
	      <td> </td>
	      <td> {$totale}</td>
            </tr>
	</tbody>
      </table>
    </div>  
    <a href="#"><input type="submit" name="submit" id="submit_1" class="button special" value="TORNA SU"/></a>
                                                                                        
</div>