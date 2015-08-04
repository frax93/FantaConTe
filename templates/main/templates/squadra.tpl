<div id="main"> 
    <br><br>
  <section class="spotlight">
    <div class="image"><img src="images/serieA.jpg" alt="" /></div>
    <div class="content">
      <h2>La tua Rosa</h2>
      <p>Gioca inserendo la tua formazione</p>
    </div>
  </section>
  <h5>Elenco Rosa</h5>
  <form method="post" action="index.php?controller=Formazione&task=nuova">
  <input type="submit" name="submit" id="submit_1" class="button special" value="Inserisci Formazione"/>
  <br>
  <br>
  <tr> 
        <td align="left">Modulo</td>
        <td> <select name="modulo" id="selezione">
                <optgroup id="selezione">
                    {foreach from=$moduli item=modulo}
                    <option value={$modulo}>{$modulo}</option>
                    {/foreach}
                </optgroup>
             </select>
        </td>
     </tr>  
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
            <td>{$por} </td>
            <td>{$por.cognome} </td>
	    <td>{$por.squadra_reale} </td>
	    <td>{$por.valore}</td>
            <td><input type="checkbox" id="premi" name={$por.id} value={$por.id}></td>
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
	{foreach from=$difensore item=dif}
          <tr>
	    <td>{$dif.nome} </td>
            <td>{$dif.cognome} </td>
	    <td>{$dif.squadra_reale} </td>
	    <td>{$dif.valore}</td>
            <td><input type="checkbox" id="premi" name={$dif.id} value={$dif.id}></td>
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
            <td><input type="checkbox" id="premi" name={$cen.id} value={$cen.id}></td>
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
            <td><input type="checkbox" id="premi" name={$att.id} value={$att.id}></td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  </div>
  </form>
  <button type="submit"  class="button special"><a href="#">Torna Su</a></button>
</div>


	