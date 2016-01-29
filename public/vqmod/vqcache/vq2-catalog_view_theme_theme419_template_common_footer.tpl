<div class="clear"></div>

<style type="text/css">
	.dvnews {
		float: left;
		width: 50%;
		color: #FFF;
		text-transform: uppercase;
		font-size: 20px;
		text-align: right;
		padding: 30px 25px 0px 0px;
	}
	.dvnews2 {
		float: left;
		width: 50%;
		color: #FFF;
		text-transform: uppercase;
		font-weight: bold;
		font-size: 20px;
		padding: 20px 25px 0px 0px;
	}
</style>

<div style="width: 1200px; margin: auto; margin-top: 30px;">
	<div style="background-color: #519c87; height: 75px;">
	
	<div class="dvnews">Receba as novidades de nosso site</div>
	<div class="dvnews2">
		<input type="text" placeholder="Digite seu email" style="width: 330px; height: 38px;">
		<input type="button" value="ENVIAR" style="border: 0px; height: 38px; width: 76px; background-color: #EEE; padding-bottom: 0px;">
	</div>


	</div>
</div>

</section>


<footer>

	<div class="container" style="padding: 45px 0 0px;">
		<div class="row">
			<div class="col-sm-2" style="width: 16.666666666666664%;">
				<img src="/image/data/logo.png" style="margin-top: 20px; max-width: 85%;">
			</div>


			<?php if ($informations) { ?>
			<div class="col-sm-2" style="width: 16.666666666666664%;">
				<h3><?php echo $text_information; ?></h3>
				<ul>
				<?php foreach ($informations as $information) { ?>
				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				<?php } ?>
				</ul>
			</div>
			<?php } ?>
			<div class="col-sm-2" style="width: 16.666666666666664%;">
				<h3><?php echo $text_service; ?></h3>
				<ul>
				<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
				<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
				<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
				</ul>
			</div>
			<div class="col-sm-2" style="width: 16.666666666666664%;">
				<h3><?php echo $text_account; ?></h3>
				<ul>
				<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
				<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				</ul>
			</div>
			<?php /* <div class="col-sm-4">
				<ul class="socials">
					<li><a href="//www.twitter.com/"></a></li>
					<li><a href="//www.facebook.com/"></a></li>
				</ul>
			</div> */ ?>

			<div class="col-sm-4" style="width: 33.33333333333333%;">
				<div class="footer_box social" style="padding-top: 10px;">
					<h5 style="text-transform: uppercase; ">Aceitamos</h5>
					<img style="text-transform: uppercase; margin-top: -10px;" src="/image/bandeiras.png">

					<h5 style="margin-top: 10px; text-transform: uppercase;">Atendimento</h5>
					contato@vivacaserta.com.br | 15 3011-0150

					<h5 style="margin-top: 10px; text-transform: uppercase;">RTAIAR DECOR E-COMMERCE EIRELI - ME</h5>
					CNPJ: 23.761.806/0001-06
				</div>
			</div>
		</div>
		
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div id="copyright">
					<?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->
				</div>
			</div>
		</div>
	</div>
</footer>
<script type="text/javascript" 	src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/js/livesearch.js"></script>
</div>
</div>
</div>

				
					</body>

					<script type="text/javascript">
						$(function() {
							buscacep();
						});
						
						function buscacep(){							
							$('.postcode-register').focusout(function(){
								cep('register');
							});
							
							$('.postcode-register2').focusout(function(){
								cep('register2');
							});
							
							$('.postcode-guest').focusout(function(){
								cep('guest');
							});
							
							$('.postcode-payment').focusout(function(){
								cep('payment');
							});
							
							$('.postcode-shipping').focusout(function(){
								cep('shipping');
							});
							
							$('.postcode-addressform').focusout(function(){
								cep('addressform');
							});
							
							function cep(sufixo)
							{
								var campo, cep, url, estado;
								url = $('base').attr('href') + 'index.php?route=account/register/cep';
								campo = $('.postcode-' + sufixo)
								var cep = campo.val().replace(/[^0-9]/g, "");
								
								if(cep && cep.length == 8)
								{
									$.ajax({
										url: url + '&numero_cep=' + cep,
										type: "POST",
										dataType: 'json',
										async: true,
										beforeSend: function(){
											campo.after('<span style="margin-left: 5px;" class="load-cep"> Aguarde...</span>');
										},
										success: function(data){
											if(data)
											{
												if(data.valido == true)
												{
													$('.address-1-' + sufixo).val(data.rua + ', nº ');
													$('.address-2-' + sufixo).val(data.bairro);
													$('.city-' + sufixo).val(data.cidade);
													
													estado = nomeuf(data.siglauf);
													
													$('.zone-id-' + sufixo + ' > option').each(function() {
														if($(this).text() == estado)
														{
															$(this).prop("selected", true);
														}
													});
													
													$('.address-1-' + sufixo).focus();
													
													$('.address-1-' + sufixo).setCursorPosition(data.rua.length + 5);
												}
											}
										},
										complete: function(){
											$('.load-cep').remove();
										}
									});
								}
							}
							
							function nomeuf(sigla)
							{
								var estado;

								switch(sigla)
								{
									case 'AC': estado = 'Acre'; break;
									case 'AL': estado = 'Alagoas'; break;
									case 'AP': estado = 'Amapá'; break;
									case 'AM': estado = 'Amazonas'; break;
									case 'BA': estado = 'Bahia'; break;
									case 'CE': estado = 'Ceará'; break;
									case 'DF': estado = 'Distrito Federal'; break;
									case 'ES': estado = 'Espírito Santo'; break;
									case 'GO': estado = 'Goiás'; break;
									case 'MA': estado = 'Maranhão'; break;
									case 'MT': estado = 'Mato Grosso'; break;
									case 'MS': estado = 'Mato Grosso do Sul'; break;
									case 'MG': estado = 'Minas Gerais'; break;
									case 'PA': estado = 'Pará'; break;
									case 'PB': estado = 'Paraíba'; break;
									case 'PR': estado = 'Paraná'; break;
									case 'PE': estado = 'Pernambuco'; break;
									case 'PI': estado = 'Piauí'; break;
									case 'RJ': estado = 'Rio de Janeiro'; break;
									case 'RN': estado = 'Rio Grande do Norte'; break;
									case 'RS': estado = 'Rio Grande do Sul'; break;
									case 'RO': estado = 'Rondônia'; break;
									case 'RR': estado = 'Roraima'; break;
									case 'SC': estado = 'Santa Catarina'; break;
									case 'SP': estado = 'São Paulo'; break;
									case 'SE': estado = 'Sergipe'; break;
									case 'TO': estado = 'Tocantins'; break;
								}
								
								return estado;
							}
							
							$.fn.setCursorPosition = function(pos) {
								this.each(function(index, elem) {
									if (elem.setSelectionRange) {
										elem.setSelectionRange(pos, pos);
									} else if (elem.createTextRange) {
										var range = elem.createTextRange();
										range.collapse(true);
										range.moveEnd('character', pos);
										range.moveStart('character', pos);
										range.select();
									}
								});
								return this;
							};
						}
					</script>
					
					</html>
				
			