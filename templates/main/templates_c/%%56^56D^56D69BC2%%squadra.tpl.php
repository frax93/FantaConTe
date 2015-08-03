<?php /* Smarty version 2.6.13, created on 2015-08-03 18:10:09
         compiled from squadra.tpl */ ?>
<div id="main"> 
  <section class="spotlight">
    <div class="image"><img src="images/serieA.jpg" alt="" /></div>
    <div class="content">
      <h2>La tua Rosa</h2>
      <p>Gioca inserendo la tua formazione</p>
    </div>
  </section>
  <h5>Elenco Rosa</h5>
  <input type="submit" name="submit" id="submit_1" class="button special" value="Salva"/>
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
	
          <tr>
            <td><?php echo $this->_tpl_vars['portieri']['nome']; ?>
 </td>
            <td><?php echo $this->_tpl_vars['portieri']['cognome']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['portieri']['squadra_reale']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['portieri']['valore']; ?>
</td>
            <td><input type="checkbox" id="cekpor">   </td>
          </tr>

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
	
          <tr>
	    <td><?php echo $this->_tpl_vars['dif']['nome']; ?>
 </td>
            <td><?php echo $this->_tpl_vars['dif']['cognome']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['dif']['squadra_reale']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['dif']['valore']; ?>
</td>
            <td><input type="checkbox" id="cekdif"></td>
          </tr>
       
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
          <tr>                                                                                                      
	    <td><?php echo $this->_tpl_vars['cen']['nome']; ?>
 </td>
            <td><?php echo $this->_tpl_vars['cen']['cognome']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['cen']['squadra_reale']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['cen']['valore']; ?>
 </td>
            <td><input type="checkbox" id="cekcen">   </td>
          </tr>
       
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
          <tr>
	    <td><?php echo $this->_tpl_vars['att']['nome']; ?>
 </td>
            <td><?php echo $this->_tpl_vars['att']['cognome']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['att']['squadra_reale']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['att']['valore']; ?>
</td>
            <td><input type="checkbox" id="cekatt"></td>
          </tr>
      
      </tbody>
    </table>
  </div>
  <button type="submit"  class="button special"><a href="#">Torna Su</a></button>
</div>


	