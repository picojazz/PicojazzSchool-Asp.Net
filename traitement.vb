Imports System.Data.SqlClient
Module traitement

    Public conn As New SqlConnection("server=(local);initial catalog=PicojazzSchool;integrated security=true")
    Public cmd As New SqlCommand
    Public dr As SqlDataReader



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

End Module
