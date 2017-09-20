Imports System.Data.SqlClient
Public Class connexion
    Inherits System.Web.UI.Page

    Dim dr2 As SqlDataReader
    Dim dr3 As SqlDataReader
    Dim dr4 As SqlDataReader
    Dim dr5 As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnInscription_Click(sender As Object, e As EventArgs) Handles btnInscription.Click
        Dim nom As String = Request.Form("nom")
        Dim compte As String = Request.Form("compte")
        Dim email As String = Request.Form("email")
        Dim passe As String = Request.Form("passe")
        dr = addEtudiant(nom, email, compte, passe)
        dr.Close()
        dr2 = login(compte, passe)
        If dr2.HasRows Then
            Session("isOpen") = "1"
            Dim dt As New DataTable
            dt.Load(dr2)
            Session("etudiant") = dt
            Response.Redirect("profil.aspx")

            dr2.Close()

        Else
            Response.Redirect("accueil.aspx")
        End If
    End Sub

    Protected Sub success_Click(sender As Object, e As EventArgs)

    End Sub


    Protected Sub btnConnexion_Click(sender As Object, e As EventArgs) Handles btnConnexion.Click
        Dim compte As String = Request.Form("compte1")
        Dim passe As String = Request.Form("passe1")
        dr5 = login(compte, passe)
        If dr5.HasRows Then
            Session("isOpen") = "1"
            Dim dt As New DataTable
            dt.Load(dr5)
            Session("etudiant") = dt


            Response.Redirect("profil.aspx")


        Else
            Response.Redirect("accueil.aspx")
        End If
        dr5.Close()


    End Sub
End Class