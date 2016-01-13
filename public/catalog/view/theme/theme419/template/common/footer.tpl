<div class="clear"></div>

<style type="text/css">
	.dvnews {
		float: left;
		width: 50%;
		color: #FFF;
		text-transform: uppercase;
		font-weight: bold;
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
	<div style="background-color: #519c87; height: 70px;">
	
	<div class="dvnews">Receba as novidades de nosso site</div>
	<div class="dvnews2">
		<input type="text" placeholder="Digite seu email" style="width: 330px;">
		<input type="button" value="ENVIAR" style="border: 0px; height: 39px; width: 76px; background-color: #EEE; padding-bottom: 0px;">
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
</body></html>