<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="modifFormation.aspx.vb" Inherits="PicojazzSchool.modifFormation" %>

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
                <div class="col s2 offset-s3"><br>
                    <asp:Label ID="photoFormation" runat="server" Text=""></asp:Label>
                    </div>   
                        <div class="col s6 left-align"><br><br>
                            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                            <br />
                            
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>
			</div>	

				<div class="row">
        <div class=" col s4 offset-s2">
        	<label>Titre</label>
            <asp:Label ID="titre" runat="server" Text="Label"></asp:Label>
          
        </div>
        <div class=" col s4">
          <label>Nombre d'eleves</label>
            <asp:Label ID="nbeleve" runat="server" Text="Label"></asp:Label>
        </div>
      </div>
      <div class="row">
        <div class=" col s4 offset-s2">
          <label>Durée</label>
            <asp:Label ID="duree" runat="server" Text="Label"></asp:Label>
        </div>
        <div class=" col s4">
          <label>Mensualité</label>
            <asp:Label ID="mensualite" runat="server" Text="Label"></asp:Label>
        </div>
      </div>
      <div class="row">
        <div class=" col s8 offset-s2">
          <label>Date debut session</label>
            <asp:Label ID="dat" runat="server" Text="Label"></asp:Label>
        </div>
      </div>
      <div class="row">
        <div class=" col s10 offset-s1">
        	<label>Description</label>
            <asp:Label ID="desc" runat="server" Text="Label"></asp:Label>
          
        </div>
        <div class="center-align">
            <asp:Button ID="Button1" runat="server" Text="modifier" CssClass="btn green lighten-1" />
        </div>
      </div>


			</div>




    	</div>
    
    </div>
    </form>
</body>
</html>
