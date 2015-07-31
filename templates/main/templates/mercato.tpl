<div id="main">                
  <section class="spotlight">
    <!--<script src="Javascript/Mercato.js"></script>-->
    <div class="image"><img src="images/galliani.jpg" alt="" /></div>
    <div class="content">
      <h2>Diventa il futuro Galliani</h2>
      <p>Fate il vostro Mercato, crea subito la tua squadra....</p>
      <div id=""></div>
    </div>
  </section>
  <h5>Mercato Giocatori</h5>
  <button type="submit" class="button ">SALVA</button>
  <pippo>This is a paragraph.</pippo>
  <ol>
  
  </ol>
  
  <button id="btn1">Append text</button>
  <button id="btn2">Append list items</button>
  <h4><font color="orange">    Portieri   </font></h4>
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
            <td>{$por.nome} </td>
            <td>{$por.cognome} </td>
	    <td>{$por.squadra_reale} </td>
	    <td>{$por.valore}</td>
            <td><input type="checkbox" name="portieri" value={$por.id}/>   </td>
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
	    <td>{$dif.nome} </td>
            <td>{$dif.cognome} </td>
	    <td>{$dif.squadra_reale} </td>
	    <td>{$dif.valore}</td>
            <td><input type="checkbox" name="difensori" value={$dif.id}/></td>
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
	  <th>Prezzo</th>
          <th>  </th>
        </tr>
      </thead>
      <tbody>
	{foreach from=$centrocampo item=cen}
          <tr>                                                                                                      
	    <td>{$cen.nome} </td>
            <td>{$cen.cognome} </td>
	    <td>{$cen.squadra_reale} </td>
	    <td>{$cen.valore} </td>
            <td><input type="checkbox" name="centrocampo" value={$cen.id}/>   </td>
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
	    <th>Prezzo</th>
            <th>      </th>
	</tr>
      </thead>
      <tbody>
        {foreach from=$attacco item=att}
          <tr>
	    <td>{$att.nome} </td>
            <td>{$att.cognome} </td>
	    <td>{$att.squadra_reale} </td>
	    <td>{$att.valore}</td>
            <td><input type="checkbox" name="attacco" value={$att.id}/></td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  </div>
  <button type="submit"  class="button special"><a href="#">Torna Su</a></button>
</div>


	