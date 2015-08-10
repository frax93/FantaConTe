<div id="main">
    <br>
    <br>
  <section class="spotlight">
    <div class="image"><img src="images/formazione.jpg" alt="" /></div>
    <div class="content">
      <h2>Inserisci la tua formazione</h2>
      <p> Raggiungi la vetta della classifica....</p>
      <button class="button special" type="submit" name="submit" id="submit_1"><a href="index.php?controller=Squadra&task=visualizza">MODIFICA FORMAZIONE</a></button>
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
              <td>{$por.nome} </td>
              <td>{$por.cognome} </td>
              <td>{$por.squadra_reale} </td>
              <td>{$por.voto}</td>
            </tr>
          {/foreach}
        </tbody>
      </table>
    </div>
    <h4><font color="yellow">    Difensori   </font></h4>
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
	      <td>{$dif.nome} </td>
              <td>{$dif.cognome} </td>
	      <td>{$dif.squadra_reale} </td>
	      <td>{$dif.voto}</td>
            </tr>
          {/foreach}
	</tbody>
      </table>
    </div>
    <h4><font color="green">Centrocampisti  </font></h4>
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
	      <td>{$cen.nome} </td>
              <td>{$cen.cognome} </td>
	      <td>{$cen.squadra_reale} </td>
	      <td>{$cen.voto} </td>
            </tr>
          {/foreach}
	</tbody>
      </table>
    </div>
    <h4><font color="blue">   Attaccanti   </font></h4>
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
	      <td>{$att.nome} </td>
              <td>{$att.cognome} </td>
	      <td>{$att.squadra_reale} </td>
	      <td>{$att.voto}</td>
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
          {foreach from=$totale item=tot}
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
          {/foreach}
	</tbody>
      </table>
    </div>  
    <button type="submit"  class="button special"><a href="#">Torna Su</a></button>
                                                                                        
</div>