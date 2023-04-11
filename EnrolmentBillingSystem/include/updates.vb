Imports MySql.Data.MySqlClient
Module updates
    Public con As MySqlConnection = strConnection()
    Dim cmd As New MySqlCommand
    Dim da As New MySqlDataAdapter
    Dim result As String
    Public Sub increment(ByVal sql As String)
        con.Open()
        Try
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            cmd.ExecuteNonQuery()
            
        Catch ex As Exception
            MsgBox(ex.Message & " for increment procedures in the updates modules", MsgBoxStyle.Information)
        End Try
        con.Close()
    End Sub
    Public Sub edit(ByVal sql As String)
        con.Open()
        Try
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            MsgBox(ex.Message & " for edit procedures in the updates modules", MsgBoxStyle.Information)
        End Try
        con.Close()
    End Sub
End Module
