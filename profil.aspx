<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="profil.aspx.vb" Inherits="PicojazzSchool.profil" %>

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
                      <asp:Label ID="info" runat="server" Text=""></asp:Label>
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

      		<div class="col s10  grey lighten-4 layout" style="height: 100%;margin-left: 16.7%;">
				<div class="right-align"><br>
      				<a href="modifProfil.aspx" class="btn blue-grey darken-4 waves-light waves-effect right-align"><i class="fa fa-pencil" aria-hidden="true"></i>
Modifier mon profil</a>
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
            			<div class="card blue-grey darken-4">
            				<div class="card-content white-text">
             					 <span class="card-title">qui suis-je ?</span>
                        			<asp:Label ID="biod" runat="server" Text=""></asp:Label>
                        	</div>
                        </div>
            		</div>
            	</div>

		<div class="row">
			<div class="col s9 "><br>
				<ul class="tabs">
					<li class="tab col s4 blue-grey darken-4"><a href="#test1" class="grey-text">formation en cours</a></li>
					<li class="tab col s4 blue-grey darken-4"><a  href="#test2" class="grey-text">formations finis</a></li>
					<li class="tab col s4 blue-grey darken-4"><a href="#test4" class="grey-text">suivis</a></li>
				</ul>
			</div>

		<div id="test1" class="col s9 ofsset-s2">regreg</div>
		<div id="test2" class="col s9 ofsset-s2">fgdfgdgdfgdfg</div>
		<div id="test4" class="col s9 ofsset-s2">yujuykuykyt</div>
		</div>
        
    			
      		</div>
		
    	</div>
    	

    </div>
    </form>
    <script type="text/javascript">
    	 $(document).ready(function(){
    	$('ul.tabs').tabs();
  			});
    </script>
</body>
</html>
