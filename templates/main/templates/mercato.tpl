<div id="main">
					
		<section class="spotlight">
							<div class="image"><img src="images/galliani.jpg" alt="" /></div><div class="content">
							<h2>Diventa il futuro Galliani</h2>
							<p>Fate il vostro Mercato, crea subito la tua squadra....</p>
					    </div>
						</section>
						
						<h5>Mercato Giocatori</h5>
                                                <h4><font color="orange">Portieri</font></h4>
									
									<div class="table-wrapper">
										<table>
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
                                                                                                        <td>   <button type="submit" class="button" background-color="orange" id="login-button"><a href="index.php?controller=Squadra&task=aggiungi">Compra</button>  </td>
                                                                                                        </tr>
                                                                                                       {/foreach}
												  
											</tbody>
										</table>
									</div>
									
                                                                       <h4><font color="yellow">Difensori</font></h4>
									
									<div class="table-wrapper">
										<table>
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
									
                                                                                        <h4><font color="green">Centrocampisti</font></h4>
									
									<div class="table-wrapper">
										<table>
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
                                                                                                        <td>      <button type="submit" class="button special" id="login-button"><a href="index.php?controller=Registrazione&task=login">Compra</button>         </td>
                                                                                                        </tr>
                                                                                                       {/foreach}
											</tbody>
										</table>
									</div>
									
                                                                                        <h4><font color="blue">Attaccanti</font></h4>
									
									<div class="table-wrapper">
										<table>
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
                                                                                                        <td>   <button type="submit" class="button special" id="login-button"><a href="index.php?controller=Registrazione&task=login">Compra</button>     </td>
                                                                                                      </tr>
                                                                                                       {/foreach}
											</tbody>
										</table>
									</div>             
			</div>

	