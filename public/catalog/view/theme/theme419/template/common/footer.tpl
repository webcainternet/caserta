<div class="clear"></div>

<div style="background-color: #519c87; height: 70px;">
dwqdwq
</div>

</div>
</div>
</div>
<div class="clear"></div>
</section>

<footer>
	<div class="container" style="border-top: solid 5px #519c87; padding: 0px 0 0px;">
		<div class="row">
			<div class="col-sm-2" style="width: 16.666666666666664%;">
				<img src="/image/data/logo.png" style="margin-top: 20px; max-width: 70%;">
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
					<h5>Aceitamos</h5>
					<img style="margin-top: -10px;" src="/image/bandeiras.png">

					<h5 style="margin-top: 10px; font-size: 12px;">Certificado de Segurança:</h5>
					<img src="/image/selo-ssl.png">
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