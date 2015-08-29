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
            <td><font color="orange">{$por.nome} </font></td>
            <td><font color="orange">{$por.cognome} </font></td>
	    <td><font color="orange">{$por.squadra_reale} </font></td>
	    <td><font color="orange">{$por.valore} </font></td>
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
	    <td><font color="turquoise">{$dif.nome} </font></td>
            <td><font color="turquoise">{$dif.cognome} </font></td>
	    <td><font color="turquoise">{$dif.squadra_reale} </font></td>
	    <td><font color="turquoise">{$dif.valore} </font></td>
            <td><input type="checkbox" id="premi" name={$dif.id} value={$dif.id}></td>
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
            <td><font color="CHARTREUSE">{$cen.cognome} </font></td>
	    <td><font color="CHARTREUSE">{$cen.squadra_reale} </font></td>
	    <td><font color="CHARTREUSE">{$cen.valore} </font></td>
            <td><input type="checkbox" id="premi" name={$cen.id} value={$cen.id}></td>
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
	    <td><font color="DEEPSKYBLUE">{$att.nome}  </font></td>
            <td><font color="DEEPSKYBLUE">{$att.cognome}  </font></td>
	    <td><font color="DEEPSKYBLUE">{$att.squadra_reale}  </font></td>
	    <td><font color="DEEPSKYBLUE">{$att.valore} </font></td>
            <td><input type="checkbox" id="premi" name={$att.id} value={$att.id}></td>
          </tr>
        {/foreach}
      </tbody>
    </table>
  </div>
  </form>
  <button type="submit"  class="button special"><a href="#">Torna Su</a></button>
</div>


	