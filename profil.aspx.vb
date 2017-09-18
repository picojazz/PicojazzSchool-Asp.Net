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
            info.Text = "<img src='" & photo & "' width='100' heigth='100' style='border-radius: 50px;' /><p class='white-text center-align'>" & nom & "<br/></p><a href='profil.aspx' class='center-align blue-text text-lighten-1'>voir profil</a>"
            photo1.Text = "<img src='" & photo & "' width='150' heigth='150' style='border-radius: 125px;' />"
            detail.Text = "<h4>" & nom & "</h4><p>" & email & "</p><p>Dakar , Ouakam , cité assemblée villa n° 164</p><strong>22 ans</strong>"
            bio.Text = "<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,  tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam </p>"




        End If
    End Sub

End Class