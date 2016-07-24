<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="assets/style.css">
</head>
<body>
	<header>
		<h2 class="navbar-title"><a href="#"><?php echo $user->get_data('navbar_title','id_navbar','1')['navbar_header'];?> </a></h2>

		<div class="navbar-menu">
			<?php
			if ( Session::exists('username') ){
			?>
				<?php
				if ( $user->is_admin( Session::get_session('username') ))
				{
				?>
					<a href="createnews.php">Create News</a>
					<a href="edit_display.php">Edit Display</a>
				<?php
			}
			?>
			<a href="news.php">News</a>
			<a href="profile.php">Profil</a>
			<a href="changepass.php">Change Password</a>
			<a href="logout.php">Logout</a>
			<?php
			}else{
			?>
			<a href="login.php">Login</a>
			<a href="register.php">Register</a>
			<?php
		}
			?>
		</div>

		<div class="clear-fix"></div>
	</header>
