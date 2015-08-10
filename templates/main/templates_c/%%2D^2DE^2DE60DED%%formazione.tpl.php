<?php /* Smarty version 2.6.13, created on 2015-08-10 16:43:57
         compiled from formazione.tpl */ ?>
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
              <td><?php echo $this->_tpl_vars['por']['voto']; ?>
</td>
            </tr>
          <?php endforeach; endif; unset($_from); ?>
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
	  <?php $_from = $this->_tpl_vars['difensori']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['dif']):
?>
            <tr>
	      <td><?php echo $this->_tpl_vars['dif']['nome']; ?>
 </td>
              <td><?php echo $this->_tpl_vars['dif']['cognome']; ?>
 </td>
	      <td><?php echo $this->_tpl_vars['dif']['squadra_reale']; ?>
 </td>
	      <td><?php echo $this->_tpl_vars['dif']['voto']; ?>
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
	    <th>Voto</th>
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
	      <td><?php echo $this->_tpl_vars['cen']['voto']; ?>
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
	    <th>Voto</th>
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
	      <td><?php echo $this->_tpl_vars['att']['voto']; ?>
</td>
            </tr>
          <?php endforeach; endif; unset($_from); ?>
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
          <?php $_from = $this->_tpl_vars['totale']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['tot']):
?>
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
	      <td> <?php echo $this->_tpl_vars['totale']; ?>
</td>
            </tr>
          <?php endforeach; endif; unset($_from); ?>
	</tbody>
      </table>
    </div>  
    <button type="submit"  class="button special"><a href="#">Torna Su</a></button>
                                                                                        
</div>