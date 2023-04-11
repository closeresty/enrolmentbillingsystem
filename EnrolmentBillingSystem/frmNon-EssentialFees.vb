Public Class frmNon_EssentialFees
    Dim E_id As Integer = 0
    Private Sub cboLevel_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cboLevel.KeyPress
        e.Handled = True
    End Sub
    Private Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If E_id = 0 Then '
            sql = "INSERT INTO tblnonessentialfees (`Description`, `Fees`, `YearLevel`) VALUES ('" & txtDesc.Text & "','" & txtAmount.Text & "','" & cboLevel.Text & "')"
            create(sql)
            Call btnClear_Click(sender, e)
        Else
            sql = "UPDATE tblnonessentialfees SET `Description`='" & txtDesc.Text & "', `Fees`='" & txtAmount.Text & "', `YearLevel`='" & cboLevel.Text & "' WHERE `NoneEssentialID`=" & E_id
            edit(sql)
            Call btnClear_Click(sender, e)
        End If

    End Sub
    Private Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        Try
            E_id = 0
            txtDesc.Clear()
            txtAmount.Clear()
            btnDelete.Enabled = False

            sql = "SELECT * FROM `level`"
            fillCombo(sql, cboLevel, "LEVEL")

            sql = "SELECT * FROM `tblnonessentialfees`"
            RetrieveData("Non-EssentialFees", sql, dtgList)
        Catch ex As Exception

        End Try
    End Sub
    Private Sub btnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click
        Me.Close()
    End Sub

    Private Sub dtgList_Click(sender As Object, e As EventArgs) Handles dtgList.Click
        Try
            btnDelete.Enabled = True
            With dtgList
                E_id = .CurrentRow.Cells(0).Value
                txtDesc.Text = .CurrentRow.Cells(1).Value
                txtAmount.Text = .CurrentRow.Cells(2).Value
                cboLevel.Text = .CurrentRow.Cells(3).Value
            End With
        Catch ex As Exception

        End Try
    End Sub

    Private Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        sql = "DELETE FROM `tblnonessentialfees` WHERE `NoneEssentialID` = " & E_id
        deleting(sql)
        Call btnClear_Click(sender, e)
    End Sub

    Private Sub frmNon_EssentialFees_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Call btnClear_Click(sender, e)
    End Sub
End Class