Public Class admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim compte As String = Request.Form("user")
        Dim passe As String = Request.Form("pass")
        If compte = "admin" And passe = "admin" Then
            Session("isOpen") = "1"
            Session("admin") = "99"
            Response.Redirect("gestionEtudiants.aspx")
        Else
            Response.Redirect("accueil.aspx")
        End If

    End Sub
End Class