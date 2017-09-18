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

    Public Sub initialiserInfoEtudiant(ByVal dt As DataTable)
        matricule = dt.Rows(0)(0)
        nom = dt.Rows(0)(1)
        email = dt.Rows(0)(2)
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
        Return executeSQL("insert into etudiant (nom,email,compte,passe,adresse,bio,age,photo)values('" & nom & "','" & email & "','" & compte & "','" & passe & "','','','','')")
    End Function
    Public Function login(ByVal compte As String, ByVal passe As String)

        Return executeSQL("select * from etudiant where compte ='" & compte & "' and passe='" & passe & "'")
    End Function
    Public Function formations()
        Return executeSQL("select * from formation")
    End Function




End Module
