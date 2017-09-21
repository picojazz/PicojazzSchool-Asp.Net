Imports System.Data.SqlClient
Public Class gestionFormations
    Inherits System.Web.UI.Page

    Dim dr2 As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetNoStore()

        If Session.Item("isOpen") = "" Or Session("admin") <> "99" Then
            Response.Redirect("admin.aspx")
        Else
            formation.Text = ""
            dr = lesFormations()
            If dr.HasRows Then
                While dr.Read
                    formation.Text &= "<li class='collection-item avatar'><img src='" & dr(7) & "' alt='' class='circle'><span class='title'>" & dr(1) & "</span><p><strong>Debut session : </strong>" & dr(5) & "</p><a href='modifFormation.aspx?id=" & dr(0) & "' class=''><i style='font-size:25px ;color:gray;padding-top:15px;' class='fa fa-pencil' aria-hidden='true'></i></a><a href='suppFormation.aspx?id=" & dr(0) & "' class='supp' style='font-size:25px ;color:gray;margin-left:25px;padding-top:15px;'><i class='fa fa-trash-o' aria-hidden='true'></i></a></li>"
                End While
            End If
            dr.Close()


        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim titre As String = Request.Form("ftitre")
        Dim eleve As Integer = Val(Request.Form("feleve"))
        Dim duree As String = Request.Form("fduree")
        Dim mensualite As Integer = Val(Request.Form("fmensualite"))
        Dim dat As String = Request.Form("fdate")
        Dim desc As String = Request.Form("fdesc")
        Dim image As String = "img/formation/0.jpg"
        If FileUpload1.HasFile Then
            image = "img/formation/" & titre & ".jpg"
            FileUpload1.SaveAs("C:\Users\picojazz\Documents\Visual Studio 2012\Projects\PicojazzSchool\PicojazzSchool\img\formation\" & titre & ".jpg")

        End If
        dr2 = addFormation(titre, desc, eleve, duree, dat, mensualite, image)
        dr2.Close()
        Response.Redirect("gestionFormations.aspx")
    End Sub
End Class