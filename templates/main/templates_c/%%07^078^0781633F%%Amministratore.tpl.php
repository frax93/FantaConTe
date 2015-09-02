<?php /* Smarty version 2.6.13, created on 2015-09-02 15:13:30
         compiled from Amministratore.tpl */ ?>
 <script src="Javascript/jquery.min.js"></script>
    <script src="Javascript/Elimina.js"></script>
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
	<?php $_from = $this->_tpl_vars['portieri']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['por']):
?>
          <tr>
            <td><?php echo $this->_tpl_vars['por']['nome']; ?>
 </td>
            <td><?php echo $this->_tpl_vars['por']['cognome']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['por']['squadra_reale']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['por']['valore']; ?>
</td>
            <td> <select name=<?php echo $this->_tpl_vars['por']['id']; ?>
 id="voto" >
                <optgroup id="voto" >
                    <?php $_from = $this->_tpl_vars['voti']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['voto']):
?>
                        <?php if ($this->_tpl_vars['voto'] == '6'): ?>
                    <option value=<?php echo $this->_tpl_vars['voto']; ?>
 <?php echo $this->_tpl_vars['selected'];  echo $this->_tpl_vars['default']; ?>
 ><?php echo $this->_tpl_vars['voto']; ?>
</option>
                    <?php else: ?>
                        <option value=<?php echo $this->_tpl_vars['voto']; ?>
><?php echo $this->_tpl_vars['voto']; ?>
</option> <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?>
                </optgroup>
             </select>
        </td>
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
	<?php $_from = $this->_tpl_vars['difesa']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['dif']):
?>
          <tr>
	    <td><?php echo $this->_tpl_vars['dif']['nome']; ?>
 </td>
            <td><?php echo $this->_tpl_vars['dif']['cognome']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['dif']['squadra_reale']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['dif']['valore']; ?>
</td>
            <td> <select name=<?php echo $this->_tpl_vars['dif']['id']; ?>
 id="voto">
                <optgroup id="voto">
                    <?php $_from = $this->_tpl_vars['voti']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['voto']):
?>
                      <?php if ($this->_tpl_vars['voto'] == '6'): ?>
                    <option value=<?php echo $this->_tpl_vars['voto']; ?>
 <?php echo $this->_tpl_vars['selected'];  echo $this->_tpl_vars['default']; ?>
 ><?php echo $this->_tpl_vars['voto']; ?>
</option>
                    <?php else: ?>
                        <option value=<?php echo $this->_tpl_vars['voto']; ?>
><?php echo $this->_tpl_vars['voto']; ?>
</option> <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?>
                </optgroup>
             </select>
        </td>
          </tr>
        <?php endforeach; endif; unset($_from); ?>
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
	<?php $_from = $this->_tpl_vars['centrocampo']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cen']):
?>
          <tr>                                                                                                      
	    <td><?php echo $this->_tpl_vars['cen']['nome']; ?>
 </td>
            <td><?php echo $this->_tpl_vars['cen']['cognome']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['cen']['squadra_reale']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['cen']['valore']; ?>
 </td>
            <td> <select name=<?php echo $this->_tpl_vars['cen']['id']; ?>
 id="voto">
                <optgroup id="voto">
                    <?php $_from = $this->_tpl_vars['voti']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['voto']):
?>
                    <?php if ($this->_tpl_vars['voto'] == '6'): ?>
                    <option value=<?php echo $this->_tpl_vars['voto']; ?>
 <?php echo $this->_tpl_vars['selected'];  echo $this->_tpl_vars['default']; ?>
 ><?php echo $this->_tpl_vars['voto']; ?>
</option>
                    <?php else: ?>
                        <option value=<?php echo $this->_tpl_vars['voto']; ?>
><?php echo $this->_tpl_vars['voto']; ?>
</option> <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?>
                </optgroup>
             </select>
        </td>
          </tr>
        <?php endforeach; endif; unset($_from); ?>
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
        <?php $_from = $this->_tpl_vars['attacco']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['att']):
?>
          <tr>
	    <td><?php echo $this->_tpl_vars['att']['nome']; ?>
 </td>
            <td><?php echo $this->_tpl_vars['att']['cognome']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['att']['squadra_reale']; ?>
 </td>
	    <td><?php echo $this->_tpl_vars['att']['valore']; ?>
</td>
            <td> <select name=<?php echo $this->_tpl_vars['att']['id']; ?>
 id="voto">
                <optgroup id="voto">
                    <?php $_from = $this->_tpl_vars['voti']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['voto']):
?>
                    <?php if ($this->_tpl_vars['voto'] == '6'): ?>
                    <option value=<?php echo $this->_tpl_vars['voto']; ?>
 <?php echo $this->_tpl_vars['selected'];  echo $this->_tpl_vars['default']; ?>
 ><?php echo $this->_tpl_vars['voto']; ?>
</option>
                    <?php else: ?>
                        <option value=<?php echo $this->_tpl_vars['voto']; ?>
><?php echo $this->_tpl_vars['voto']; ?>
</option> <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?>
                </optgroup>
             </select>
        </td>
          </tr>
        <?php endforeach; endif; unset($_from); ?>
      </tbody>
    </table>
  </div>
  </form>
  <button type="submit"  class="button special"><a href="#">Torna Su</a></button>
</div>