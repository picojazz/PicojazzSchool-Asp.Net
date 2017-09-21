Imports System.Data.SqlClient
Module traitement

    Public conn As New SqlConnection("server=(local);initial catalog=PicojazzSchool;integrated security=true")
    Public cmd As New SqlCommand
    Public dr As SqlDataReader

    Public matricule As Integer
    Public nom As String
    Public email As String
    Public adresse As String
    Public bio As String
    Public age As String
    Public photo As String
    Public compte As String
    Public passe As String

    Public Sub initialiserInfoEtudiant(ByVal dt As DataTable)
        matricule = dt.Rows(0)(0)
        nom = dt.Rows(0)(1)
        email = dt.Rows(0)(2)
        compte = dt.Rows(0)(3)
        passe = dt.Rows(0)(4)
        adresse = dt.Rows(0)(5)
        bio = dt.Rows(0)(6)
        age = dt.Rows(0)(7)
        photo = dt.Rows(0)(8)
    End Sub



    Public Sub ouvrirConn()
        If conn.State <> ConnectionState.Open Then
            conn.Open()
        End If
    End Sub

    Public Sub fermerConn()
        If conn.State = ConnectionState.Open Then
            conn.Close()
        End If
    End Sub

    Public Function executeSQL(ByVal req As String, Optional ByVal type As String = "r")
        ouvrirConn()
        cmd.CommandType = CommandType.Text
        cmd.CommandText = req
        cmd.Connection = conn

        If type = "r" Then
            Return cmd.ExecuteReader
        Else
            Return cmd.ExecuteNonQuery
        End If
    End Function

    Public Function addEtudiant(ByVal nom As String, ByVal email As String, ByVal compte As String, ByVal passe As String)
        Return executeSQL("insert into etudiant (nom,email,compte,passe,adresse,bio,age,photo)values('" & nom & "','" & email & "','" & compte & "','" & passe & "',' ',' ',' ','img/etudiant/0.png')")
    End Function
    Public Function login(ByVal compte As String, ByVal passe As String)

        Return executeSQL("select * from etudiant where compte ='" & compte & "' and passe='" & passe & "'")
    End Function
    Public Function lesFormations()
        Return executeSQL("select * from formation")
    End Function
    Public Function modifEtudiant(ByVal nom As String, ByVal email As String, ByVal compte As String, ByVal passe As String, ByVal adresse As String, ByVal bio As String, ByVal age As String, ByVal photo As String)
        Return executeSQL("UPDATE etudiant SET nom ='" & nom & "', email ='" & email & "', compte ='" & compte & "', passe ='" & passe & "', adresse ='" & adresse & "', bio ='" & bio & "', age ='" & age & "' , photo ='" & photo & "' where matricule ='" & matricule & "' ")
    End Function
    Public Function lesEtudiants()
        Return executeSQL("select * from etudiant")
    End Function

    Public Function addFormation(ByVal titre As String, ByVal desc As String, ByVal nbeleve As Integer, ByVal duree As String, ByVal dat As String, ByVal mensualite As Integer, ByVal image As String)
        Return executeSQL("insert into formation (titre,description,mensualite,nbEleves,date,duree,photo)values('" & titre & "','" & desc & "'," & mensualite & "," & nbeleve & ",'" & dat & "','" & duree & "','" & image & "')")
    End Function
    Public Function rechFormation(ByVal id As Integer)
        Return executeSQL("select * from formation where codeFor =" & id & "")
    End Function
    Public Function modifierFormation(ByVal titre As String, ByVal desc As String, ByVal nbeleve As Integer, ByVal duree As String, ByVal dat As String, ByVal mensualite As Integer, ByVal image As String, ByVal id As Integer)
        Return executeSQL("update formation set titre='" & titre & "', description='" & desc & "', mensualite=" & mensualite & ", nbEleves=" & nbeleve & ", date='" & dat & "', duree='" & duree & "', photo= '" & image & "' where codeFor=" & id & "")
    End Function
    Public Function supFormation(ByVal id As Integer)
        Return executeSQL("delete from formation where codeFor =" & id & "")
    End Function
End Module
