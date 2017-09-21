Public Class suppFormation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetNoStore()

        If Session.Item("isOpen") = "" Or Session("admin") <> "99" Then
            Response.Redirect("admin.aspx")
        Else
            Dim id As Integer = Val(Request.Params("id"))
            dr = supFormation(id)
            dr.Close()
            Response.Redirect("gestionFormations.aspx")
        End If

    End Sub

End Class