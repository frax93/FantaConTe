<?php /* Smarty version 2.6.13, created on 2015-07-25 16:35:29
         compiled from mercato.tpl */ ?>
<div id="main">                
		<section class="spotlight">
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                    
                    <!--<script src="Javascript/Mercato.js"></script>-->
							<div class="image"><img src="images/galliani.jpg" alt="" /></div><div class="content">
							<h2>Diventa il futuro Galliani</h2>
							<p>Fate il vostro Mercato, crea subito la tua squadra....</p>
                                                        <script language="JavaScript" src="Javascript/mio.js"></script>
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
												<?php $_from = $this->_tpl_vars['portieri']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['por']):
?>
                                                                                                
                                                                                                    <tr>
													<td ><?php echo $this->_tpl_vars['por']['nome']; ?>
 </td>
                                                                                                        <td id="prova"><?php echo $this->_tpl_vars['por']['cognome']; ?>
 </td>
													<td><?php echo $this->_tpl_vars['por']['squadra_reale']; ?>
 </td>
													<td><?php echo $this->_tpl_vars['por']['valore']; ?>
</td>
                                                                                                        <td> <k>  <button type="submit" class="buttonp" id="pippo">Compra</button> </k>     </td>
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
                                                                                                        <td>    <button type="submit" class="buttond" id="login-button">Compra</button>      </td>
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
                                                                                                        <td>      <button type="submit" class="buttonc" id="login-button">Compra</button>         </td>
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
                                                                                                        <td>   <button type="submit" class="buttona" id="login-button">Compra</button>     </td>
                                                                                                      </tr>
                                                                                                       <?php endforeach; endif; unset($_from); ?>
											</tbody>
										</table>
                                                                                  
									</div>  
                                                                                        <button type="submit"  class="button special"><a href="#">Torna Su</a></button>
                                                                                        
			</div>


	