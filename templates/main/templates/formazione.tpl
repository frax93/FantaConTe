<div id="main">
					
		<section class="spotlight">
							<div class="image"><img src="images/formazione.jpg" alt="" /></div><div class="content">
							<h2>Inserisci la tua formazione</h2>
							<p> Raggiungi la vetta della classifica....</p>
                                                        <button type="submit" class="button special">SALVA FORMAZIONE</button>
					    </div>
                                                        
						</section>
						
						<h5>Squadra</h5>
                  
                                                <h4><font color="orange">     Portieri   </font></h4>
									
									<div class="table-wrapper">
										<table class="tabellapor">
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
                                                                                                        <td>   <button type="submit" class="button" background-color="orange" id="login-button"><a href="index.php?controller=Registrazione&task=login">Compra</button>  </td>
                                                                                                        </tr>
                                                                                                       {/foreach}
												  
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
                                                                                                        <td>    <button type="submit" class="button" color="yellow" id="login-button"><a href="index.php?controller=Registrazione&task=login">Compra</button>      </td>
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
                                                                                                        <td>      <button type="submit" class="button" id="login-button"><a href="index.php?controller=Registrazione&task=login">Compra</button>         </td>
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
                                                                                                        <td>   <button type="submit" class="button" id="login-button"><a href="index.php?controller=Registrazione&task=login">Compra</button>     </td>
                                                                                                      </tr>
                                                                                                       {/foreach}
											</tbody>
										</table>
                                                                                  
									</div>  
                                                                                        <button type="submit"  class="button special"><a href="#">Torna Su</a></button>
                                                                                        
			</div>