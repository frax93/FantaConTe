<?php /* Smarty version 2.6.13, created on 2015-07-30 15:42:36
         compiled from registrati.tpl */ ?>
<script src="Javascript/jquery.min.js"></script>
<script src="Javascript/Login.js"></script> 
<div>
		<h2>Benvenuto nel modulo di registrazione</h2>
                
		 <form method="post" enctype="multipart/form-data" action="index.php?controller=Registrazione&task=salva">
			<input type="text" id="username" name="username" value="" placeholder="Nome Utente">
			<input type="text" id="nome" name="nome" value="" placeholder="Nome">
			<input type="text" id="cognome" name="cognome" value="" placeholder="Cognome">
			<input type="password" id="password" name="password" value="" placeholder="Password">
			<input type="password" id="password_1" name="password_1" value="" placeholder="Ripeti Password">
			<input type="text" id="email" name="email" value="" placeholder="Email">
                        <input type="text" id="nome_squadra" name="nome_squadra" value="" placeholder="Nome Squadra">
                        <input type="submit" name="submit" id="submit_1" class="button" value="Registrati"> 
                        <div id="errore"></div>
                       
		</form>
	</div>

  
