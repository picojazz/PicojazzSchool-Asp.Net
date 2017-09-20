<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="modifProfil.aspx.vb" Inherits="PicojazzSchool.modifProfil" %>

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
      			<div class=" center-align" style="line-height: 100%;">
      				<br>
                      <asp:Label ID="info2" runat="server" Text=""></asp:Label>
      			</div><br>
      			<div class="menu">
      				<div class="menu-content">
      					<ul class="menu-item center-align grey-text text-lighten-1 " >
      						<li><a href="#" class="grey-text"><i class="fa fa-tachometer" aria-hidden="true"></i>
 Tableau de bord</a></li>
      						<li><a href="formations.aspx" class="grey-text"><i class="fa fa-book" aria-hidden="true"></i>
 Les formations</a></li>
      						
      						
      					</ul>
      				</div>
      			</div>
            
      		</div>
      		<div class="col s10  grey lighten-5 layout" style="height: 100%;margin-left: 16.7%;">
				
				<div class="row">
					<div class="col s2 offset-s3"><br>
                    <asp:Label ID="photoProfil" runat="server" Text=""></asp:Label>
                    </div>   
                        <div class="col s6 left-align"><br><br>
                            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                            <br />
                            
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </div>
                </div>
				
				<div class="row">
					<div class=" col s4 offset-s1">
						<label>Nom Complet</label>
                        <asp:Label ID="fnom" runat="server" Text="Label"></asp:Label>
          				
        			</div>
        			<div class=" col s4 offset-s1">
        				<label>Email</label>
          				<asp:Label ID="femail" runat="server" Text="Label"></asp:Label>
          				
        			</div>
				</div>
				<div class="row">
					<div class=" col s4 offset-s1">
						<label>Adresse</label>
          				<asp:Label ID="fadresse" runat="server" Text="Label"></asp:Label>
          				
        			</div>
        			<div class=" col s4 offset-s1">
        				<label>Age</label>
          				<asp:Label ID="fage" runat="server" Text="Label"></asp:Label>
          				
        			</div>
				</div>
				<div class="row">
					<div class=" col s4 offset-s1">
						<label>Nom d'utilisateur</label>
          				<asp:Label ID="fcompte" runat="server" Text="Label"></asp:Label>
          				
        			</div>
        			<div class=" col s4 offset-s1">
        				<label>password</label>
          				<asp:Label ID="fpasse" runat="server" Text="Label"></asp:Label>
          				
        			</div>
				</div>
				<div class="row">
        			<div class=" col s7 offset-s2">
        				<label>Bio</label>
                        <asp:Label ID="fbio" runat="server" Text="Label"></asp:Label>
          				
        			</div>

				</div>
				<div class="row center-align">
                  <asp:Button ID="btnModif" runat="server" Text="Modifier" CssClass=" btn green lighten-2 waves-light waves-effect" ></asp:Button>
                  </div>
      		</div>


		</div>
    </div>
    </form>
</body>
</html>
