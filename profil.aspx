<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="profil.aspx.vb" Inherits="PicojazzSchool.profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

      		<div class="col s2 blue-grey darken-4 barLateral"  style="min-height: 100vh;margin-left: 0px;">
      			<div class="profil center-align">
      				<br>
                      <asp:Label ID="info" runat="server" Text=""></asp:Label>
      			</div><br>
      			<div class="menu">
      				<div class="menu-content">
      					<ul class="menu-item center-align grey-text text-lighten-1 " >
      						<li><a href="#" class="grey-text">Tableau de bord</a></li>
      						<li><a href="formations.aspx" class="grey-text">Les formations</a></li>
      						
      						
      					</ul>
      				</div>
      			</div>
            
      		</div>

      		<div class="col s10 grey lighten-5 layout" >
				<div class="right-align"><br>
      				<a href="#" class="btn grey darker-2 right-align">Modifier mes informations</a>
      			</div>
            	<div class="row">
            		<div class="col s2 offset-s2">
                        <asp:Label ID="photo1" runat="server" Text="Label"></asp:Label>
            		</div>
            		<div class="col s7 left-align">
                        <asp:Label ID="detail" runat="server" Text="Label"></asp:Label>
            		</div>
            	</div>
            	<div class="row">
            		<div class="col s7 offset-s1">
            		<h4 class="bio"> Bio</h4>
                        <asp:Label ID="bio" runat="server" Text=""></asp:Label>
            		</div>
            	</div>
    			
      		</div>
		
    	</div>
    	

    </div>
    </form>
</body>
</html>
