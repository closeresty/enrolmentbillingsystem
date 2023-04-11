Imports MySql.Data.MySqlClient
Module InsertUpdateDelete
    Public con As MySqlConnection = strConnection()
    Dim cmd As New MySqlCommand
    Dim da As New MySqlDataAdapter
    Dim result As String
    Public Sub create(ByVal sql As String)
        Try
            con.Open()
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox(ex.Message & " for create procedures  in the InsertUpdateDelete modules", MsgBoxStyle.Information)
        Finally
            con.Close()
        End Try
    End Sub
    Public Sub CreateUpdateDeleteAllMessage(ByVal sql As String, ByVal messageTrue As String, ByVal messageFalse As String)

        Try
            con.Open()
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            result = cmd.ExecuteNonQuery()
            If result = 0 Then
                MsgBox(messageFalse, MsgBoxStyle.Exclamation)
            Else
                MsgBox(messageTrue)

            End If
        Catch ex As Exception
            MsgBox(ex.Message & " for createUpdateDeleteAllMessage procedures  in the InsertUpdateDelete modules", MsgBoxStyle.Information)
        Finally
            con.Close()
        End Try
    End Sub 
End Module
