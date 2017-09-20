Public Class formations
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetNoStore()

        If Session.Item("isOpen") = "" Then
            Response.Redirect("connexion.aspx")
        Else
            Label1.Text = ""
            Label2.Text = ""
            info1.Text = "<img src='" & photo & "' width='100' heigth='100' style='border-radius: 20%;' /><p class='white-text center-align'>" & nom & "<br/></p><a href='profil.aspx' class='center-align blue-text text-lighten-1'><i class='fa fa-eye' aria-hidden='true'></i> voir profil</a><br /><br /><a href='deconnexion.aspx' class='center-align grey-text text-lighten-1'><i class='fa fa-caret-square-o-left' aria-hidden='true'></i> Se deconnecter</a>"
            dr = lesFormations()
            If dr.HasRows Then
                While dr.Read
                    Label1.Text &= "<div class='col s3'><div class='formation z-depth-1'><img class='formation-photo' src='" & dr(7) & "'><div class='formation-content center-align'><a href='#" & dr(1) & "' class='modal-trigger btn blue lighten-2'><i class='fa fa-eye' aria-hidden='true'></i> details</a></div></div></div>"
                    Label2.Text &= "<div id='" & dr(1) & "' class='modal'><div class='modal-content'><div class='row'><div class='center-align'><img src='" & dr(7) & "' width='180' height='180'></div><br><p>" & dr(2) & "</p></div></div><div class='row'><h1 class='titre section-title center-align black-text'>tarifs</h1><div class='col s6'><p>Mensualité : <strong>" & dr(3) & " F cfa</strong></p><p>Durée : <strong>" & dr(6) & "</strong></p></div><div class='col s6'></div><p>Nombres d'eleves : <strong>" & dr(4) & " / classe</strong></p><p>Date de la nouvelle session : <strong>" & dr(5) & "</strong></p></div></div>"
                End While


            End If
            dr.Close()

        End If


    End Sub

End Class