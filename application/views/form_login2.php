<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Toko Mumu | Log in</title>
  <link rel="icon" href="<?=base_url()?>/assets/images/logo2.png" type="image/png">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url() ?>assets/plugins/iCheck/square/blue.css">

  <link rel="stylesheet" href="<?php echo base_url() ?>assets/plugins/animation/style.css">
</head>
	<style type="text/css">
      .bg {
           width: 100%;
           height: 100%;
           position: absolute;
           z-index: -99;
           float: left;
           margin-top:-300;
		   
      }
      </style>
	
   
  </head>


  <body class="bg">
  <img src="<?php echo base_url().'assets/images/bg2.png'?>" alt="gambar" class="bg">
  <span class="border border-primary">
	<div class="rounded login-box">
  <div class="login-logo">
  <img width="200px" src="<?php echo base_url().'assets/images/logologin.png'?>"/>
  </div>

  <div class="login-box-body" style="background-color: rgba(75, 219, 181, .2);border-radius:20px;">
    <p class="login-box-msg" style="font-size: large; color:ghostwhite"> <a href="#">Silahkan<b>LOG</b>IN</a><br>Untuk Memulai Transaksi</p>

    <form action="" method="post" class="f-light">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="username"  name="username" id="username" required style="background-color: rgba(15, 219, 181, .2);border-radius:10px; color:ghostwhite;">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" name="password" id="password" type="password" required style="background-color: rgba(15, 219, 181, .2);border-radius:10px;color:ghostwhite;">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-12">
         
        </div>
        <!-- /.col -->
        <div class="col-xs-12">
          <button type="submit" name="submit" class="btn btn-danger btn-block"style="background-color: rgba(15, 219, 181, .5);border-radius:10px;color:ghostwhite;">Sign In</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

    
    
</div>
</span>
	<!--  -->


<script rel="script" src="<?php echo base_url() ?>assets/plugins/animation/javascript.js"></script>
    
  </body>
</html>