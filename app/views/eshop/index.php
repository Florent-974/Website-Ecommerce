<?php $this->view("header",$data); ?>
	
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>G</span>ODBUY</h1>
									<h2>Les nouvelles consoles disponibles chez nous</h2>
									<p>Nous avons ENFIN de nouveau des consoles PS5 prévues pour le courant de la semaine !🥳 </p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="<?= ASSETS . THEME ?>/images/home/ps5banner.png" class="girl img-responsive" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>G</span>ODBUY</h1>
									<h2>Livraison sur toute ile</h2>
									<p>Livraison sur toute l'île pour seulement 9,90€ en 48 heures⚡</p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="<?= ASSETS . THEME ?>/images/home/reunion.png" class="girl img-responsive" alt="" />
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>G</span>ODBUY</h1>
									<h2>Des prix imbattables</h2>
									<p>Retrouvez la liste de nos jeux disponible à partir de 20 euros📣</p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="<?= ASSETS . THEME ?>/images/home/jeuxbanner.png" class="girl img-responsive" alt="" />
									<img src="<?= ASSETS ?>eshop/images/home/20euros.png"  class="pricing" alt="" />
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	<section>
		<div class="container">
			<div class="row">
				
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Les nouveautés</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="<?= ASSETS . THEME ?>/images/product-details/returnal.png" alt="" />
											<h2>40 €</h2>
											<p>Returnal (PS5)</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										<div class="product-overlay">
											<div class="overlay-content">
												<h2>40 €</h2>
												<p>Returnal (PS5)</p>
												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
										</div>
								</div>
								<div class="choose">

								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<?= ASSETS . THEME ?>/images/product-details/rvillage.png" alt="" />
										<h2>50 €</h2>
										<p>Resident Evil Village (PS5)</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>50 €</h2>
											<p>Resident Evil Village (PS5)</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
								</div>
								<div class="choose">

								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<?= ASSETS . THEME ?>/images/product-details/ps5.png" alt="" />
										<h2>550 €</h2>
										<p>Sony PlayStation 5</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>550 €</h2>
											<p>Sony PlayStation 5</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
								</div>
								
						
					</div><!--features_items-->
					
					
					
					
					
				</div>
			</div>
		</div>
	</section>

<?php $this->view("footer",$data); ?>