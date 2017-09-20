Imports System.Data.SqlClient
Imports System.IO.File
Public Class modifProfil
    Inherits System.Web.UI.Page

    Dim dr1 As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
        Response.Cache.SetNoStore()

        If Session.Item("isOpen") = "" Then
            Response.Redirect("connexion.aspx")
        Else
            info2.Text = "<img src='" & photo & "' width='100' heigth='100' style='border-radius: 20%;' /><p class='white-text center-align'>" & nom & "<br/></p><a href='profil.aspx' class='center-align blue-text text-lighten-1'><i class='fa fa-eye' aria-hidden='true'></i> voir profil</a><br /><br /><a href='deconnexion.aspx' class='center-align grey-text text-lighten-1'><i class='fa fa-caret-square-o-left' aria-hidden='true'></i> Se deconnecter</a>"
            photoProfil.Text = "<img src='" & photo & "' width='150' heigth='150' style='border-radius: 20%;' />"
            fadresse.Text = "<input type='text' name='adresse' value='" & adresse & "' >"
            femail.Text = "<input type='email' name='email' value='" & email & "' >"
            fage.Text = "<input type='text' name='age' value='" & age & "' >"
            fcompte.Text = "<input type='text' name='compte' value='" & compte & "' >"
            fpasse.Text = "<input type='password' name='passe' value='" & passe & "' >"
            fnom.Text = "<input type='text' name='nom' value='" & nom & "' >"
            fbio.Text = "<textarea name='bio' class='materialize-textarea'>" & bio & "</textarea>"

        End If
    End Sub

    Protected Sub btnModif_Click(sender As Object, e As EventArgs) Handles btnModif.Click
        Dim n = Request.Form("nom")
        Dim emai = Request.Form("email")
        Dim ag = Request.Form("age")
        Dim compt = Request.Form("compte")
        Dim pass = Request.Form("passe")
        Dim bi = Request.Form("bio")
        Dim adress = Request.Form("adresse")
        Dim image As String = "img/etudiant/" & matricule & ".jpg"
        If photo = "img/etudiant/0.png" Then
            image = "img/etudiant/0.png"
        End If
        If FileUpload1.HasFile Then
            image = "img/etudiant/" & matricule & ".jpg"
            FileUpload1.SaveAs("C:\Users\picojazz\Documents\Visual Studio 2012\Projects\PicojazzSchool\PicojazzSchool\img\etudiant\" & matricule & ".jpg")

        End If
        dr = modifEtudiant(n, emai, compt, pass, adress, bi, ag, image)
        dr.Close()
        dr1 = login(compt, pass)
        If dr1.HasRows Then

            Dim dt As New DataTable
            dt.Load(dr1)
            Session("etudiant") = dt
        End If
        dr1.Close()
       

        Response.Redirect("profil.aspx")
    End Sub

   
End Class