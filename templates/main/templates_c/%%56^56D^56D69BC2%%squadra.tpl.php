<?php /* Smarty version 2.6.13, created on 2015-08-31 15:43:47
         compiled from squadra.tpl */ ?>
<div id="main"> 
    <br><br>
  <section class="spotlight">
    <div class="image"><img src="images/serieA.jpg" alt="" /></div>
    <div class="content">
      <h2>La tua Rosa</h2>
      <p>Gioca inserendo la tua formazione</p>
            <button class="button special" type="submit" name="submit" id="submit_1"><a href="index.php?controller=Squadra&task=modifica">RESET ROSA</a></button>
    </div>
  </section>
  <h5>Elenco Rosa</h5>
   <font color=yellow>CREDITI </font>   <font color=yellow><?php echo $this->_tpl_vars['fantasycosto']; ?>
</font>
  <form method="post" action="index.php?controller=Formazione&task=nuova">
  <input type="submit" name="submit" id="submit_1" class="button special" value="Inserisci Formazione"/>
  <br>
  <br>
  <tr> 
        <td align="left">Modulo</td>
        <td> <select name="modulo" id="selezione">
                <optgroup id="selezione">
                    <?php $_from = $this->_tpl_vars['moduli']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['modulo']):
?>
                    <option value=<?php echo $this->_tpl_vars['modulo']; ?>
><?php echo $this->_tpl_vars['modulo']; ?>
</option>
                    <?php endforeach; endif; unset($_from); ?>
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
	  <?php $_from = $this->_tpl_vars['portieri']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['por']):
?>
          <tr>
            <td><font color="orange"><?php echo $this->_tpl_vars['por']['nome']; ?>
 </font></td>
            <td><font color="orange"><?php echo $this->_tpl_vars['por']['cognome']; ?>
 </font></td>
	    <td><font color="orange"><?php echo $this->_tpl_vars['por']['squadra_reale']; ?>
 </font></td>
	    <td><font color="orange"><?php echo $this->_tpl_vars['por']['valore']; ?>
 </font></td>
            <td><input type="checkbox" id="premi" name=<?php echo $this->_tpl_vars['por']['id']; ?>
 value=<?php echo $this->_tpl_vars['por']['id']; ?>
></td>
          </tr>
      <?php endforeach; endif; unset($_from); ?>
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
	<?php $_from = $this->_tpl_vars['difensore']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['dif']):
?>
          <tr>
	    <td><font color="turquoise"><?php echo $this->_tpl_vars['dif']['nome']; ?>
 </font></td>
            <td><font color="turquoise"><?php echo $this->_tpl_vars['dif']['cognome']; ?>
 </font></td>
	    <td><font color="turquoise"><?php echo $this->_tpl_vars['dif']['squadra_reale']; ?>
 </font></td>
	    <td><font color="turquoise"><?php echo $this->_tpl_vars['dif']['valore']; ?>
 </font></td>
            <td><input type="checkbox" id="premi" name=<?php echo $this->_tpl_vars['dif']['id']; ?>
 value=<?php echo $this->_tpl_vars['dif']['id']; ?>
></td>
          </tr>
        <?php endforeach; endif; unset($_from); ?>
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
	<?php $_from = $this->_tpl_vars['centrocampo']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cen']):
?>
          <tr>                                                                                                      
	    <td><font color="CHARTREUSE"><?php echo $this->_tpl_vars['cen']['nome']; ?>
 </font></td>
            <td><font color="CHARTREUSE"><?php echo $this->_tpl_vars['cen']['cognome']; ?>
 </font></td>
	    <td><font color="CHARTREUSE"><?php echo $this->_tpl_vars['cen']['squadra_reale']; ?>
 </font></td>
	    <td><font color="CHARTREUSE"><?php echo $this->_tpl_vars['cen']['valore']; ?>
 </font></td>
            <td><input type="checkbox" id="premi" name=<?php echo $this->_tpl_vars['cen']['id']; ?>
 value=<?php echo $this->_tpl_vars['cen']['id']; ?>
></td>
          </tr>
        <?php endforeach; endif; unset($_from); ?>
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
        <?php $_from = $this->_tpl_vars['attacco']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['att']):
?>
          <tr>
	    <td><font color="DEEPSKYBLUE"><?php echo $this->_tpl_vars['att']['nome']; ?>
  </font></td>
            <td><font color="DEEPSKYBLUE"><?php echo $this->_tpl_vars['att']['cognome']; ?>
  </font></td>
	    <td><font color="DEEPSKYBLUE"><?php echo $this->_tpl_vars['att']['squadra_reale']; ?>
  </font></td>
	    <td><font color="DEEPSKYBLUE"><?php echo $this->_tpl_vars['att']['valore']; ?>
 </font></td>
            <td><input type="checkbox" id="premi" name=<?php echo $this->_tpl_vars['att']['id']; ?>
 value=<?php echo $this->_tpl_vars['att']['id']; ?>
></td>
          </tr>
        <?php endforeach; endif; unset($_from); ?>
      </tbody>
    </table>
  </div>
  </form>
  <button type="submit"  class="button special"><a href="#">Torna Su</a></button>
</div>


	