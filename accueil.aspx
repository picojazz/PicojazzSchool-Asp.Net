<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="accueil.aspx.vb" Inherits="PicojazzSchool.accueil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="css/styles.css" />
<link rel="stylesheet" type="text/css" href="css/materialize.min.css" />
<script src="js/jquery.min.js"></script>
<script src="js/materialize.min.js"></script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    	
	<div class="banner">
		<div class="banner-content">
			<br>
			<div class="row">
				<div class="col s8">
					
				</div>
				<div class="col s4 right-align">
					<a href="#" class="btnInscrire">S'INSCRIRE</a>
					<a href="#" class="blue lighten-1  waves-effect waves-light btn">Se connecter</a>
				</div>
			</div>
			<br><br><br><br>
			<div class="row" >
				<div class="col s12">
					<h2 class="titre banner-title">Vous voulez apprendre à coder en <span id="code" class="blue-text text-lighten-3">java</span></h2>
					<br>
					<h5 class="banner-title taille-text">Picojazz School est faite pour vous !</h5>
				</div>
			</div><br><br>
			<div class="row">
				<div class="col s12 center-align">
					<a href="#" class="banner-button">Rejoignez-nous dès maintenant !</a>
				</div>
			</div><br><br><br><br>
			<div class="center-align">
				<img src="../img/landingPage/flecheBas.png" width="80" height="80">
			</div>
		</div>
	</div>


    </div>
    </form>



<script type="text/javascript">
	 $(document).ready(function () {

	 	var lang = ["java","php","c","html","javascript","ruby","go","perl","css","sql","c++"];
	 	setInterval(function () {
	 	    //$("#code").slideUp();
	 	    $("#code").html(lang[Math.floor(Math.random() * lang.length)]);
            
	 	},2000)

            

         })
</script>

</body>
</html>
