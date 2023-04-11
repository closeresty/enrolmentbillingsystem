Public Class frmSection
    Public id As Integer = 0
    Private Sub btnsave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try

            If id = 0 Then
                sql = "SELECT * FROM tblsection WHERE SECTION LIKE '%" & txtSection.Text & "%'"
                fillSpecifictxt(sql)
                maxrow = dt.Rows.Count
                If maxrow > 0 Then
                    MsgBox("Data is already exist!", MsgBoxStyle.Exclamation)
                    Return
                Else
                    sql = "INSERT INTO  `tblsection`  (`SECTION`) VALUES ('" & txtSection.Text & "')"
                    create(sql)
                    MsgBox("New Data has been saved in the database.")
                End If
            Else
                sql = "UPDATE tblsection SET SECTION ='" & txtSection.Text & "' WHERE SECTIONID=" & id
                edit(sql)
                MsgBox("Data has been updated in the database.")
            End If

            Call frmSection_Load(sender, e)

        Catch ex As Exception

        End Try
    End Sub

    Private Sub frmSection_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        sql = "SELECT `SECTIONID` as 'ID', `SECTION` FROM `tblsection`"
        fillGrid(sql, dtgList)
        txtSection.Clear()
        txtSection.Focus()
        id = 0
    End Sub

    Private Sub txtSearch_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtSearch.TextChanged
        sql = "SELECT `SECTIONID` as 'ID', `SECTION` FROM `tblsection` WHERE SECTION LIKE '%" & txtSearch.Text & "%'"
        fillGrid(sql, dtgList)
    End Sub

    Private Sub btnDelete_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Try
            sql = "DELETE FROM tblsection WHERE SECTIONID = '" & dtgList.CurrentRow.Cells(0).Value & "'"
            deleting(sql)
            MsgBox("Data has been deleted in the database.")
            Call frmSection_Load(sender, e)
        Catch ex As Exception

        End Try
    End Sub
End Class