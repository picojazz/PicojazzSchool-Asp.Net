<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="connexion.aspx.vb" Inherits="PicojazzSchool.connexion" %>

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
    	<div class="row">
    		<div class="col s6 grey lighten-5" style="height: 100vh;">
    			<div class="center-align" style="margin-top: 5px;">
    				
    			<img src="img/landingPage/inscription.png" class="center-align" width="100" height="100">
    			<h4>Inscription</h4>
    			</div>
				
    				<div class="row ">
    					<div class="input-field col s8 offset-s2">
          					<input  type="text" name="nom" class="validate">
          					<label>Nom Complet</label>
        				</div>
    				</div>
    				<div class="row ">
    					<div class="input-field col s8 offset-s2">
          					<input  type="email" name="email" class="validate">
          					<label>email</label>
        				</div>
    				</div>
    				<div class="row ">
    					<div class="input-field col s8 offset-s2">
          					<input  type="text" name="compte" class="validate">
          					<label>Nom d'utilisateur</label>
        				</div>
    				</div>
    				<div class="row ">
    					<div class="input-field col s8 offset-s2">
          					<input  type="password" name="passe" class="validate">
          					<label>Mot de Passe</label>
        				</div>
    				</div>
    				<div class="row ">
    					<div class="input-field col s8 offset-s2">
                            <asp:Button  ID="btnInscription" runat="server" Text="S'inscrire" CssClass="waves-effect waves-light btn  green lighten-1" />
          					
        				</div>
    				</div>
    			
    		</div>
    		<div class="col s6" style="height: 100vh;">
    			<div class="center-align" style="margin-top: 5px;">
    				<img src="img/landingPage/connexion.png" class="center-align" width="100" height="100">
    				<h4>Espace Membre</h4>
    			</div>
    			<br><br>
    			
    				<div class="row ">
    					<div class="input-field col s8 offset-s2">
          					<input  type="text" name="compte1" class="validate">
          					<label>Nom d'utilisateur</label>
        				</div>
    				</div>
    				<div class="row ">
    					<div class="input-field col s8 offset-s2">
          					<input  type="password" name="passe1" class="validate">
          					<label>Mot de Passe</label>
        				</div>
    				</div>
    				<div class="row ">
    					<div class="input-field col s8 offset-s2">
          					<asp:Button ID="btnConnexion" runat="server" Text="Se connecter" CssClass="waves-effect waves-light btn  blue lighten-1" />
          					
        				</div>
    				</div>
    			
    		</div>
    	</div>
    
    </div>
    </form>



    <script type="text/javascript">
    	$(document).ready(function () {
    		function success () {
    			Materialize.toast('I am a toast', 4000)
    		}
    	})
    </script>
</body>
</html>
