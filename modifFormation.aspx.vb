Imports System.Data.SqlClient
Public Class modifFormation
    Inherits System.Web.UI.Page
    Dim photof As String
    Dim id As Integer
    Dim dr2 As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetNoStore()


        If Session.Item("isOpen") = "" Or Session("admin") <> "99" Then
            Response.Redirect("admin.aspx")
        Else
            id = Val(Request.Params("id"))
            dr = rechFormation(id)
            If dr.Read Then
                photoFormation.Text = "<img src='" & dr(7) & "' width='150' heigth='150' style='border-radius: 20%;' />"
                titre.Text = "<input name='ftitre' type='text' value='" & dr(1) & "'>"
                mensualite.Text = "<input name='fmensualite' type='number' value='" & dr(3) & "'>"
                nbeleve.Text = "<input name='fnbeleve' type='number' value='" & dr(4) & "'>"
                dat.Text = "<input name='fdat' type='text' value='" & dr(5) & "'>"
                duree.Text = "<input name='fduree' type='text' value='" & dr(6) & "'>"
                desc.Text = "<textarea name='fdesc' class='materialize-textarea'>" & dr(2) & "</textarea>"
                photof = dr(7)

            End If
            dr.Close()
        End If



    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ftitre As String = Request.Form("ftitre")
        Dim fmensualite As Integer = Request.Form("fmensualite")
        Dim fduree As String = Request.Form("fduree")
        Dim fdesc As String = Request.Form("fdesc")
        Dim fdat As String = Request.Form("fdat")
        Dim fnbeleve As Integer = Request.Form("fnbeleve")
        Dim fimage As String = "img/formation/" & ftitre & ".jpg"
        If photof = "img/formation/0.jpg" Then
            fimage = "img/formation/0.jpg"
        End If
        If FileUpload1.HasFile Then
            fimage = "img/formation/" & ftitre & ".jpg"
            FileUpload1.SaveAs("C:\Users\picojazz\Documents\Visual Studio 2012\Projects\PicojazzSchool\PicojazzSchool\img\formation\" & ftitre & ".jpg")

        End If
        dr2 = modifierFormation(ftitre, fdesc, fnbeleve, fduree, fdat, fmensualite, fimage, id)
        dr2.Close()
        Response.Redirect("gestionFormations.aspx")

    End Sub
End Class