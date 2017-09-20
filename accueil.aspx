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
		<div class="navbar-fixed" id="bar" style="display:none;z-index: 1">
    	 <nav>
    		<div class="nav-wrapper blue lighten-1">
      				<a href="#" class="brand-logo">Picojazz School</a>
      			<ul id="nav-mobile" class="right hide-on-med-and-down">
        			
        			<li><a href="connexion.aspx" class="white lighten-1 blue-text waves-effect waves-light btn">Espace Membre</a></li>
      			</ul>
    		</div>
  		 </nav>
  		</div>
		<div class="banner-content">
			<br>
			<div class="row">
				<div class="col s8">
					
				</div>
				<div class="col s4 right-align">
					
					<a href="connexion.aspx" class="blue lighten-1  waves-effect waves-light btn">Espace Membre</a>
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
					<a href="connexion.aspx" class="banner-button">Rejoignez-nous dès maintenant !</a>
				</div>
			</div>
		</div>
	</div>
	<section class="about">
			<br>
			<div class="row">
				<h1 class="titre section-title center-align blue-grey-text">Picojazz School , c'est quoi ?</h1><br><br>
				<div class="col s7 offset-s1  about-text">
					Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
				</div>
				<div class="col s4 center-align">
					<br>
					<img src="img/landingPage/ordi.png" width="150" height="150" >
				</div>
			</div>
	</section>
	<section class="modules indigo lighten-5">
		<br>
		<div class="container">
		<div class="row">
			<h1 class="titre section-title center-align blue-grey-text">Nos formations</h1><br><br><br><br>
			<div class="col s2"><a class=" modal-trigger" href="#html"><img class="icon" src="img/landingPage/html.png" width="120" height="120"></a></div>
			<div class="col s2"><a class=" modal-trigger" href="#java"><img class="icon" src="img/landingPage/java.png" width="120" height="120"></a></div>
			<div class="col s2"><a class=" modal-trigger" href="#js"><img class="icon" src="img/landingPage/js.png" width="120" height="120"></a></div>
			<div class="col s2"><a class=" modal-trigger" href="#php"><img class="icon" src="img/landingPage/php.png" width="120" height="120"></a></div>
			<div class="col s2"><a class=" modal-trigger" href="#ruby"><img class="icon" src="img/landingPage/ruby.png" width="120" height="120"></a></div>
			<div class="col s2"><a class=" modal-trigger" href="#css"><img class="icon" src="img/landingPage/css.png" width="120" height="120"></a></div>
		</div>
		</div>
		<br><br><br>
	</section>
	<section class="contact">
		<br>

			<div class="row">
				<h1 class="titre section-title center-align blue-grey-text">Contactez - nous</h1><br><br>
				<div class="col s5 offset-s1  about-text">
					<p>Senegal , Ouakam , Cité Assemblée , villa n° 164 <br> +221 33 820 28 36 +221 77 951 89 58 </p>
				</div>
				<div class="col social s4 offset-s2 "><br>
					<ul class="right-align">
						<li><img src="img/landingPage/facebook.png" width="40" class="icon" height="40" class="icon"></li>
						<li><img src="img/landingPage/twitter.png" width="40" class="icon" height="40" class="icon"></li>
						<li><img src="img/landingPage/linkedin.png" width="40" class="icon" height="40" class="icon"></li>
						<li><img src="img/landingPage/google.png" width="40" class="icon" height="40" class="icon"></li>
					</ul>
				</div>

			</div>
		<br><br>
	</section>
	<section class="footer  blue-grey darken-4 white-text">
	<div class="container">
		<br><br>
		<div class="row">
			<div class="col s9">Picojazz School ...</div>
			<div class="col s3">@Copyright 2017</div>
		</div>
		<br>
	</div>
		
	</section>


    </div>
    </form>






<!--Modals -->

 <div id="html" class="modal">
    <div class="modal-content">
      <div class="row">
      <div class="center-align">
      	<img src="img/landingPage/html.png" width="180" height="180">
      </div>
      <br>
      <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
      </div>
    </div>
    <div class="row">
      <h1 class="titre section-title center-align black-text">tarifs</h1>
      <div class="col s6">
      	<p>Mensualité : <strong>30 000 F cfa</strong></p>
      	<p>Durée : <strong>3 mois</strong></p>
      </div>
      <div class="col s6"></div>
      <p>Nombres d'eleves : <strong>20 / classe</strong></p>
      <p>Date de la nouvelle session : <strong>16 Septembre 2017 </strong></p>
    </div>
  </div>

  <div id="java" class="modal">
    <div class="modal-content">
      <div class="row">
      <div class="center-align">
      	<img src="img/landingPage/java.png" width="180" height="180">
      </div>
      <br>
      <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
      </div>
    </div>
    <div class="row">
      <h1 class="titre section-title center-align black-text">tarifs</h1>
      <div class="col s6">
      	<p>Mensualité : <strong>30 000 F cfa</strong></p>
      	<p>Durée : <strong>3 mois</strong></p>
      </div>
      <div class="col s6"></div>
      <p>Nombres d'eleves : <strong>20 / classe</strong></p>
      <p>Date de la nouvelle session : <strong>16 Septembre 2017 </strong></p>
    </div>
  </div>

  <div id="js" class="modal">
    <div class="modal-content">
      <div class="row">
      <div class="center-align">
      	<img src="img/landingPage/js.png" width="180" height="180">
      </div>
      <br>
      <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
      </div>
    </div>
    <div class="row">
      <h1 class="titre section-title center-align black-text">tarifs</h1>
      <div class="col s6">
      	<p>Mensualité : <strong>30 000 F cfa</strong></p>
      	<p>Durée : <strong>3 mois</strong></p>
      </div>
      <div class="col s6"></div>
      <p>Nombres d'eleves : <strong>20 / classe</strong></p>
      <p>Date de la nouvelle session : <strong>16 Septembre 2017 </strong></p>
    </div>
  </div>

  <div id="php" class="modal">
    <div class="modal-content">
      <div class="row">
      <div class="center-align">
      	<img src="img/landingPage/php.png" width="180" height="180">
      </div>
      <br>
      <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
      </div>
    </div>
    <div class="row">
      <h1 class="titre section-title center-align black-text">tarifs</h1>
      <div class="col s6">
      	<p>Mensualité : <strong>30 000 F cfa</strong></p>
      	<p>Durée : <strong>3 mois</strong></p>
      </div>
      <div class="col s6"></div>
      <p>Nombres d'eleves : <strong>20 / classe</strong></p>
      <p>Date de la nouvelle session : <strong>16 Septembre 2017 </strong></p>
    </div>
  </div>

  <div id="ruby" class="modal">
    <div class="modal-content">
      <div class="row">
      <div class="center-align">
      	<img src="img/landingPage/ruby.png" width="180" height="180">
      </div>
      <br>
      <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
      </div>
    </div>
    <div class="row">
      <h1 class="titre section-title center-align black-text">tarifs</h1>
      <div class="col s6">
      	<p>Mensualité : <strong>30 000 F cfa</strong></p>
      	<p>Durée : <strong>3 mois</strong></p>
      </div>
      <div class="col s6"></div>
      <p>Nombres d'eleves : <strong>20 / classe</strong></p>
      <p>Date de la nouvelle session : <strong>16 Septembre 2017 </strong></p>
    </div>
  </div>

  <div id="css" class="modal">
    <div class="modal-content">
      <div class="row">
      <div class="center-align">
      	<img src="img/landingPage/css.png" width="180" height="180">
      </div>
      <br>
      <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
      </div>
    </div>
    <div class="row">
      <h1 class="titre section-title center-align black-text">tarifs</h1>
      <div class="col s6">
      	<p>Mensualité : <strong>30 000 F cfa</strong></p>
      	<p>Durée : <strong>3 mois</strong></p>
      </div>
      <div class="col s6"></div>
      <p>Nombres d'eleves : <strong>20 / classe</strong></p>
      <p>Date de la nouvelle session : <strong>16 Septembre 2017 </strong></p>
    </div>
  </div>

  <!-- fin modals -->

<script type="text/javascript">
	 $(document).ready(function () {
	 	$('.modal').modal();
	 	var lang = ["java","php","c","html","javascript","ruby","go","perl","css","sql","c++"];
	 	setInterval(function () {
	 	    //$("#code").slideUp();
	 	    $("#code").html(lang[Math.floor(Math.random() * lang.length)]);
            
	 	},2000)

        
        $( window ).scroll(function() {
  			if($(document).scrollTop() > 588){
  				$('#bar').slideDown(); 
  			}else{
  				$('#bar').fadeOut(100);
  			}
  			console.log($(document).scrollTop())
		});
        	
         })
</script>

</body>
</html>
