Public Class profil
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetNoStore()

        If Session.Item("isOpen") = "" Then
            Response.Redirect("connexion.aspx")
        Else
            Dim dt As DataTable = Session("etudiant")
            initialiserInfoEtudiant(dt)
            info.Text = "<img src='" & photo & "' width='100' heigth='100' style='border-radius: 20%;' /><p class='white-text center-align'>" & nom & "<br/></p><a href='profil.aspx' class='center-align blue-text text-lighten-1'><i class='fa fa-eye' aria-hidden='true'></i> voir profil</a><br /><br /><a href='deconnexion.aspx' class='center-align grey-text text-lighten-1'><i class='fa fa-caret-square-o-left' aria-hidden='true'></i> Se deconnecter</a>"
            photo1.Text = "<img src='" & photo & "' width='150' heigth='150' style='border-radius: 20%;' />"
            detail.Text = "<h4>" & nom & "</h4><p>" & email & "</p><p>" & adresse & "</p><strong>" & age & "</strong>"
            biod.Text = "<p>" & bio & "</p>"




        End If
    End Sub

End Class