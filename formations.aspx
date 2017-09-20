<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="formations.aspx.vb" Inherits="PicojazzSchool.formations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/styles2.css" />
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

      		<div class="col s2 blue-grey darken-4 barLateral"  style="height: 100vh;margin-left: 0px;">
      			<div class=" center-align" style="line-height: 100%;">
      				<br>
                      <asp:Label ID="info1" runat="server" Text=""></asp:Label>
      			</div><br>
      			<div class="menu">
      				<div class="menu-content">
      					<ul class="menu-item center-align grey-text text-lighten-1 " >
      						<li><a href="#" class="grey-text"><i class="fa fa-tachometer" aria-hidden="true"></i>
 Tableau de bord</a></li>
      						<li class="activ"><a href="formations.aspx" class="grey-text"><i class="fa fa-book" aria-hidden="true"></i>
 Les formations</a></li>
      						
      						
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
            		<h4 class="titre section-title center-align blue-grey-text">Les formations disponibles</h4><br><br>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            		
            		
            		
            	</div>
    
      		</div>

    	</div>



    </div>
    </form>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>


    <script type="text/javascript">
	 $(document).ready(function () {
	 	$('.modal').modal();
	 	
        	
         })
</script>
</body>
</html>
