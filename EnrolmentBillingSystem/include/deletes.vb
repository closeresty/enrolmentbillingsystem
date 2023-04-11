Imports MySql.Data.MySqlClient
Module deletes
    Public con As MySqlConnection = strConnection()
    Dim cmd As New MySqlCommand
    Dim da As New MySqlDataAdapter
    Dim result As String
    Public Sub deleting(ByVal sql As String)
        Try
            con.Open()
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            'MsgBox(ex.Message & " for create procedures  in the InsertUpdateDelete modules", MsgBoxStyle.Information)
        Finally
            con.Close()
        End Try
    End Sub
End Module
