<div id="main"> 
    <br>
    <br>
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
            <td>{$por.nome} </td>
            <td>{$por.cognome} </td>
	    <td>{$por.squadra_reale} </td>
	    <td>{$por.valore}</td>
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
	    <td>{$dif.nome} </td>
            <td>{$dif.cognome} </td>
	    <td>{$dif.squadra_reale} </td>
	    <td>{$dif.valore}</td>
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
  <button type="submit"  class="button special"><a href="#">Torna Su</a></button>
</div>