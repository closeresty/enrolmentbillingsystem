Public Class frmSY
    Public id As Integer = 0
    Private Sub frmSY_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        sql = "SELECT `AY_ID` as 'ID', `ACADYR` as 'School Year' FROM `ay`"
        fillGrid(sql, dtgList)
        txtsy.Clear()
        txtsy.Focus()
        id = 0
    End Sub

    Private Sub btnsave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try

            If id = 0 Then
                sql = "SELECT * FROM ay WHERE ACADYR LIKE '%" & txtsy.Text & "%'"
                fillSpecifictxt(sql)
                maxrow = dt.Rows.Count
                If maxrow > 0 Then
                    MsgBox("Data is already exist!", MsgBoxStyle.Exclamation)
                    Return
                Else
                    sql = "INSERT INTO  `ay`  (`ACADYR`) VALUES ('" & txtsy.Text & "')"
                    create(sql)
                    MsgBox("New Data has been saved in the database.")
                End If
            Else
                sql = "UPDATE ay SET ACADYR ='" & txtsy.Text & "' WHERE AY_ID=" & id
                edit(sql)
                MsgBox("Data has been updated in the database.")
            End If

            Call frmSY_Load(sender, e)

        Catch ex As Exception

        End Try
    End Sub

    Private Sub dtgList_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dtgList.Click
        Try
            id = dtgList.CurrentRow.Cells(0).Value
            txtsy.Text = dtgList.CurrentRow.Cells(1).Value
        Catch ex As Exception

        End Try
    End Sub

    Private Sub txtSearch_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtSearch.TextChanged
        sql = "SELECT `AY_ID` as 'ID', `ACADYR` as 'School Year' FROM `ay` WHERE ACADYR LIKE '%" & txtSearch.Text & "%'"
        fillGrid(sql, dtgList)
    End Sub

    Private Sub btnDelete_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Try
            sql = "DELETE FROM ay WHERE AY_ID = '" & dtgList.CurrentRow.Cells(0).Value & "'"
            deleting(sql)
            MsgBox("Data has been deleted in the database.")
            Call frmSY_Load(sender, e)
        Catch ex As Exception

        End Try
    End Sub
End Class