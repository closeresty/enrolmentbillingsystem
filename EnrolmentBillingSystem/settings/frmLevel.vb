Public Class frmLevel
    Dim id As Integer = 0
    Private Sub btnsave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnsave.Click
  Try

            If id = 0 Then
                sql = "SELECT * FROM level WHERE LEVEL LIKE '%" & txtLevel.Text & "%'"
                fillSpecifictxt(sql)
                maxrow = dt.Rows.Count
                If maxrow > 0 Then
                    MsgBox("Data is already exist!", MsgBoxStyle.Exclamation)
                    Return
                Else
                    sql = "INSERT INTO  `level`  (`LEVEL`) VALUES ('" & txtLevel.Text & "')"
                    create(sql)
                    MsgBox("New Data has been saved in the database.")
                End If
            Else
                sql = "UPDATE level SET LEVEL ='" & txtLevel.Text & "' WHERE YR_ID=" & id
                edit(sql)
                MsgBox("Data has been updated in the database.")
            End If

            Call frmLevel_Load(sender, e)

        Catch ex As Exception

        End Try 
    End Sub

    Private Sub frmLevel_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        sql = "SELECT `YR_ID` as 'ID', `LEVEL` FROM `level`"
        fillGrid(sql, dtgList)
        txtLevel.Clear()
        txtLevel.Focus()
        id = 0
    End Sub

    Private Sub txtSearch_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtSearch.TextChanged
        sql = "SELECT `YR_ID` as 'ID', `LEVEL` FROM `level` WHERE LEVEL LIKE '%" & txtSearch.Text & "%'"
        fillGrid(sql, dtgList)
    End Sub
    Private Sub dtgList_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dtgList.Click
        Try
            id = dtgList.CurrentRow.Cells(0).Value
            txtLevel.Text = dtgList.CurrentRow.Cells(1).Value
        Catch ex As Exception

        End Try
    End Sub

    Private Sub btnDelete_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Try
            sql = "DELETE FROM level WHERE YR_ID = '" & dtgList.CurrentRow.Cells(0).Value & "'"
            deleting(sql)
            MsgBox("Data has been deleted in the database.")
            Call frmLevel_Load(sender, e)
        Catch ex As Exception

        End Try
    End Sub
End Class