Imports MySql.Data.MySqlClient
Module connection
    Public Function strConnection() As MySqlConnection
        Return New MySqlConnection("server=localhost;user id=root;password=;database=dbenrolment;sslMode=none")
    End Function
    Public con As MySqlConnection = strConnection()
End Module

Public Class MySqlConnection
    Public Sub New(v As String)
    End Sub
End Class
