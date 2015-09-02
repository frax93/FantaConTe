<?php /* Smarty version 2.6.13, created on 2015-09-02 14:38:21
         compiled from formazione.tpl */ ?>
<script src="Javascript/jquery.min.js"></script>
<script src="Javascript/Elimina.js"></script>
<div id="main">
    <br>
    <br>
  <section class="spotlight">
    <div class="image"><img src="images/formazione.jpg" alt="" /></div>
    <div class="content">
       <h2>La tua formazione</h2>
      <p> Raggiungi la vetta della classifica facendo il puntaeggio piu' alto.</p>
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
              <td><font color="orange"><?php echo $this->_tpl_vars['por']['voto']; ?>
 </font></td>
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
	    <th>Voto</th>
	  </tr>
	</thead>
	<tbody>
	  <?php $_from = $this->_tpl_vars['difensori']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['dif']):
?>
            <tr>
	      <td><font color="turquoise"><?php echo $this->_tpl_vars['dif']['nome']; ?>
 </font> </td>
              <td><font color="turquoise"><?php echo $this->_tpl_vars['dif']['cognome']; ?>
  </font></td>
	      <td><font color="turquoise"><?php echo $this->_tpl_vars['dif']['squadra_reale']; ?>
 </font> </td>
	      <td><font color="turquoise"><?php echo $this->_tpl_vars['dif']['voto']; ?>
 </font></td>
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
	    <th>Voto</th>
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
	      <td><font color="CHARTREUSE"><?php echo $this->_tpl_vars['cen']['voto']; ?>
 </font></td>
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
	    <th>Voto</th>
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
	      <td><font color="DEEPSKYBLUE"><?php echo $this->_tpl_vars['att']['voto']; ?>
 </font></td>
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
	</tbody>
      </table>
    </div>  
    <a href="#"><input type="submit" name="submit" id="submit_1" class="button special" value="TORNA SU"/></a>
                                                                                        
</div>