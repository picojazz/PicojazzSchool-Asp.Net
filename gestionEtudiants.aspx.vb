Public Class gestionEtudiants
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetNoStore()

        If Session.Item("isOpen") = "" Or Session("admin") <> "99" Then
            Response.Redirect("admin.aspx")
        Else
            etudiant.Text = ""
            dr = lesEtudiants()
            If dr.HasRows Then
                While dr.Read
                    etudiant.Text &= "<li class='collection-item avatar'><img src='img/etudiant/" & dr(0) & ".jpg' alt='' class='circle'><span class='title'>" & dr(1) & "</span><p>" & dr(2) & "</p><a href='#!' class='secondary-content'><i style='font-size:25px ;color:gray;' class='fa fa-eye' aria-hidden='true'></i></a></li>"
                End While
            End If
            dr.Close()


        End If

    End Sub

End Class