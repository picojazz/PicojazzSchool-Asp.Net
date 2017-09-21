Public Class accueil
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        dr = lesFormations()
        If dr.HasRows Then
            While dr.Read
                formationAccueil.Text &= "<div class='col s2'><a class=' modal-trigger' href='#" & dr(1) & "'><img class='icon' src='" & dr(7) & "' width=120' height='120'></a></div>"
                formationModal.Text &= "<div id='" & dr(1) & "' class='modal'><div class='modal-content'><div class='row'><div class='center-align'><img src='" & dr(7) & "' width='180' height='180'></div><br><p>" & dr(2) & "</p></div></div><div class='row'><h1 class='titre section-title center-align black-text'>tarifs</h1><div class='col s6'><p>Mensualité : <strong>" & dr(3) & " F cfa</strong></p><p>Durée : <strong>" & dr(6) & "</strong></p></div><div class='col s6'></div><p>Nombres d'eleves : <strong>" & dr(4) & " / classe</strong></p><p>Date de la nouvelle session : <strong>" & dr(5) & "</strong></p></div></div>"
            End While


        End If
        dr.Close()
    End Sub

End Class