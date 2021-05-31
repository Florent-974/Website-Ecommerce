<?php $this->view("header",$data); ?>

	<section id="form" style="margin-top: 5px;"><!--form-->
		<div class="container">
			<div class="row" style="text-align: center;">

			<span style="font-size:18px;color:red;"><?php check_error() ?></span>

			<div class="col-sm-4" style="float: none;display: inline-block;">
					<div class="login-form"><!--login form-->
						<h2>Connecte toi a ton compte</h2>
						<form method="post">
							<input type="email" value="<?= isset($_POST['email']) ? $_POST['email'] : '';?>" name="email" placeholder="Email" />
							<input type="password" value="<?= isset($_POST['password']) ? $_POST['password'] : '';?>" name="password" placeholder="Mot de passe" />
							<span>
								<input type="checkbox" class="checkbox"> 
								Maintenir la connection
								
							</span>
							<button type="submit" class="btn btn-default">Connection</button>
						</form>
						<br>
						<a href="<?=ROOT?>signup">Tu n'as pas de compte ? Inscris toi</a>
					</div><!--/login form-->
				</div>
				
			</div>
		</div>
	</section><!--/form-->

<?php $this->view("footer",$data); ?>
