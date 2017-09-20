<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin.aspx.vb" Inherits="PicojazzSchool.admin" %>

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
<body class="grey lighten-4">
    <form id="form1" runat="server">
    <div>
    	<div class="container">
    		
    		<div class="row" >
      			<div class="col s10 offset-s1 z-depth-1" style="margin-top: 10%;"">
      				<h1 class="titre center-align blue-grey-text"> Admin</h1><br>
        			<div class="center-align">
          				<div class="input-field col s6 offset-s3">
          					<input   type="text" name="user">
          					<label>Identifiant</label>
        				</div>
        				<div class="input-field col s6 offset-s3">
          					<input   type="password" name="pass">
          					<label>Mot de passe</label>
        				</div>
        				<div class="col s6 offset-s3 center-align" style="margin-bottom: 20px;"><br><br>
                        <asp:Button ID="Button1" runat="server" Text="se connecter" CssClass="btn  blue-grey " />
                        </div>
        			</div>
      			</div>
    		</div>
            
    	</div>	
		


    </div>
    </form>
</body>
</html>
