Public Class deconnexion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session.Item("isOpen") = "" Then
            Response.Redirect("connexion.aspx")
        Else
            Session.Contents.RemoveAll()



            Response.Redirect("accueil.aspx")

        End If
    End Sub

End Class