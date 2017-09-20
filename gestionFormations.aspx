<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="gestionFormations.aspx.vb" Inherits="PicojazzSchool.gestionFormations" %>

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
      						<li><a href="gestionEtudiants.aspx" class="grey-text"><i class="fa fa-users" aria-hidden="true"></i>

 Gestion Etudiants</a></li>
      						<li class="activ"><a href="gestionFormations.aspx" class="grey-text "><i class="fa fa-book" aria-hidden="true"></i>
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
            		<h4 class="titre section-title center-align blue-grey-text">Liste des Formations</h4><br>
            		<div class="right-align" style="margin-right: 13.5%;">
            		<a href="#modal1" class="modal-trigger btn blue-grey darken-4 waves-effect waves-light"><i class="fa fa-plus" aria-hidden="true"></i>
 Ajouter formation</a>
                    </div><br>
                    <div class="col s10 ">
                    	<ul class='collection'>
            				<asp:Label ID="formation" runat="server" Text="Label"></asp:Label>
            			</ul>
            		</div>
            		
            	</div>
    
      		</div>


    	</div>
    
    </div>



    <!-- Modal  -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <h4>Ajout formation</h4>
      <div class="row">
        <div class="input-field col s6">
          <input name="ftitre" type="text" class="validate">
          <label>Titre</label>
        </div>
        <div class="input-field col s6">
          <input name="feleve" type="number" class="validate">
          <label>Nombre d'eleves</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s6">
          <input name="fduree" type="text" class="validate">
          <label>Durée</label>
        </div>
        <div class="input-field col s6">
          <input name="fmensualite" type="number" class="validate">
          <label>Mensualité</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s6">
          <input name="fdate" type="text" class="validate">
          <label>Date debut session</label>
        </div>
        <div class=" col s6">
          <label>Photo</label><br><br>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <textarea name="fdesc" class="materialize-textarea"></textarea>
          <label>Description</label>
        </div>
        <div class="center-align">
            <asp:Button ID="Button1" runat="server" Text="ajouter" CssClass="btn blue lighten-1" />
        </div>
      </div>
      
    </div>
    
  </div>



    </form>

	<script type="text/javascript">
		$(document).ready(function(){
   
    		$('.modal').modal();
  		});
	</script>

</body>
</html>
