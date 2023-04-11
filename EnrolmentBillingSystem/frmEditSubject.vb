Public Class frmEditSubject

    Private Sub txtSubjectID_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtSubjectID.TextChanged
        Try
            sql = "SELECT * FROM ay"
            fillCombo(sql, cbosy, "ACADYR")

            sql = "SELECT * FROM level"
            fillCombo(sql, cboYear, "LEVEL")


            sql = "SELECT  * FROM `subject` WHERE `SUBJ_ID`='" & txtSubjectID.Text & "'"
            fillSpecifictxt(sql)
            txtsujCode.Text = dt.Rows(0).Item("SUBJ_CODE")
            txtsubjDesc.Text = dt.Rows(0).Item("SUBJ_DESCRIPTION")
            cboYear.Text = dt.Rows(0).Item("YR")
            'cbosy.Text = dt.Rows(0).Item("AY")
        Catch ex As Exception

        End Try
    End Sub

    Private Sub tsSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsSave.Click
        Try
            If txtsubjDesc.Text = "" Or txtsujCode.Text = "" Then
                MsgBox("Empty fields must be filled up.", MsgBoxStyle.Exclamation)
                Return
            End If
            'sql = "UPDATE `subject` SET `SUBJ_CODE`='" & txtsujCode.Text & "', `SUBJ_DESCRIPTION`='" & txtsubjDesc.Text & "', `YR`='" _
            '    & cboYear.Text & "', `AY`='" & cbosy.Text & "' WHERE SUBJ_ID ='" & txtSubjectID.Text & "'"
            sql = "UPDATE `subject` SET `SUBJ_CODE`='" & txtsujCode.Text & "', `SUBJ_DESCRIPTION`='" & txtsubjDesc.Text & "', `YR`='" _
                & cboYear.Text & "' WHERE SUBJ_ID ='" & txtSubjectID.Text & "'"
            messageTrue = "Subject has been updated."
            messageFalse = "Failed to update a sabject."
            CreateUpdateDeleteAllMessage(sql, messageTrue, messageFalse)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub tsList_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsList.Click
        With frmListSubject
            .Show()
            .Focus()
            Me.Close()
        End With
    End Sub

    Private Sub tsAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsAdd.Click
        With frmSubject
            .Show()
            .Focus()
            Me.Close()
        End With
    End Sub
End Class