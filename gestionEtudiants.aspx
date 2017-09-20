<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="gestionEtudiants.aspx.vb" Inherits="PicojazzSchool.gestionEtudiants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/styles.css" />
<link rel="stylesheet" type="text/css" href="css/styles2.css" />
<link rel="stylesheet" type="text/css" href="css/materialize.min.css" />
<script src="js/jquery.min.js"></script>
<script src="js/materialize.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>


    	<div class="row">
    		<div class="col s2 blue-grey darken-4 barLateral"  style="height: 100vh;margin-left: 0px;">
      			<div class=" center-align" style="line-height: 110%;">
      				<br>
                      <h1 class="titre">Admin</h1><br>
                      <a href='deconnexion.aspx' class='center-align grey-text text-lighten-1'><i class='fa fa-caret-square-o-left' aria-hidden='true'></i> Se deconnecter</a>
      			</div><br>
      			<div class="menu">
      				<div class="menu-content">
      					<ul class="menu-item center-align grey-text text-lighten-1 " >
      						<li class="activ"><a href="gestionEtudiants.aspx" class="grey-text"><i class="fa fa-users" aria-hidden="true"></i>

 Gestion Etudiants</a></li>
      						<li><a href="gestionFormations.aspx" class="grey-text"><i class="fa fa-book" aria-hidden="true"></i>
 Gestions Formations</a></li>
      						
      						
      					</ul>
      				</div>
      			</div>
            
      		</div>
			<div class="col s10 grey lighten-5" style="height: 100%;margin-left: 16.7%;">
            	<div class="row">
            		<div class="input-field col s4 offset-s4">
          					<input  type="text" name="rech" >
          					<label>Recherche</label>
        			</div>
        			<div class="col s4"><br>
                        <asp:Button ID="btnRech" runat="server" Text="Recherche" CssClass="btn waves-light waves-effect blue-grey darken-4 white-text" />
        			</div>
            	</div>
            	<div class="row">
            		<h4 class="titre section-title center-align blue-grey-text">Liste des etudiants</h4><br><br>
                    
                    <div class="col s10 ">
                    	<ul class='collection'>
            				<asp:Label ID="etudiant" runat="server" Text="Label"></asp:Label>
            			</ul>
            		</div>
            		
            	</div>
    
      		</div>


    	</div>
    

    
    </div>
    </form>
</body>
</html>
