Public Class frmSubject

    Private Sub tsSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsSave.Click
        Try
            If txtsubjDesc.Text = "" Or txtsujCode.Text = "" Then
                MsgBox("Empty fields must be filled up.", MsgBoxStyle.Exclamation)
                Return
            End If
            'sql = "INSERT INTO `subject` (`SUBJ_CODE`, `SUBJ_DESCRIPTION`, `YR`, `AY`)" _
            '    & " VALUES ('" & txtsujCode.Text & "','" & txtsubjDesc.Text & "','" _
            '    & cboYear.Text & "','" & cbosy.Text & "')"
            sql = "INSERT INTO `subject` (`SUBJ_CODE`, `SUBJ_DESCRIPTION`, `YR`)" _
                 & " VALUES ('" & txtsujCode.Text & "','" & txtsubjDesc.Text & "','" _
                 & cboYear.Text & "')"
            messageTrue = "Subject has been saved."
            messageFalse = "Failed to save a sabject."
            CreateUpdateDeleteAllMessage(sql, messageTrue, messageFalse)

            Call tsNew_Click(sender, e)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub frmSubject_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Call tsNew_Click(sender, e)
    End Sub

    Private Sub tsNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsNew.Click
        sql = "SELECT * FROM ay"
        fillCombo(sql, cbosy, "ACADYR")

        sql = "SELECT * FROM level"
        fillCombo(sql, cboYear, "LEVEL")

        txtsubjDesc.Clear()
        txtsujCode.Clear()
        txtsujCode.Focus()
    End Sub

    Private Sub cboYear_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles cboYear.KeyPress, cbosy.KeyPress
        e.Handled = True
    End Sub

    Private Sub tsList_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsList.Click
        With frmListSubject
            .Show()
            .Focus()
            Me.Close()
        End With
    End Sub
End Class