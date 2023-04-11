Public Class frmListSubject

    Private Sub frmListSubject_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'sql = "SELECT  `SUBJ_ID` as 'SubjectID', `SUBJ_CODE` as 'Subject', `SUBJ_DESCRIPTION` as 'Description', `YR` as 'Level', `AY` as 'Academic Year' FROM `subject`"
        sql = "SELECT  `SUBJ_ID` as 'SubjectID', `SUBJ_CODE` as 'Subject', `SUBJ_DESCRIPTION` as 'Description', `YR` as 'Level' FROM `subject`"
        fillGrid(sql, dtgList)
    End Sub

 

    Private Sub tsAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsAdd.Click
        With frmSubject
            .Show()
            .Focus()
            Me.Close()
        End With
    End Sub

    Private Sub tsDelete_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsDelete.Click
        sql = "DELETE FROM `subject` WHERE `SUBJ_ID`='" & dtgList.CurrentRow.Cells(0).Value & "'"
        messageTrue = "Subject has been deleted."
        messageFalse = "Subject failed to delete."
        CreateUpdateDeleteAllMessage(sql, messageTrue, messageFalse)
        Call frmListSubject_Load(sender, e)
    End Sub

    Private Sub tsEdit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsEdit.Click
        Try
            With frmEditSubject
                .txtSubjectID.Text = dtgList.CurrentRow.Cells(0).Value
                .Show()
                .Focus()
                Me.Close()
            End With
        Catch ex As Exception

        End Try

    End Sub 
    Private Sub ToolStripButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButton1.Click
        'sql = "SELECT  `SUBJ_ID` as 'SubjectID', `SUBJ_CODE` as 'Subject', `SUBJ_DESCRIPTION` as 'Description', `YR` as 'Level', `AY` as 'Academic Year' FROM `subject` WHERE SUBJ_CODE LIKE '%" & tsSearch.Text & "%' OR SUBJ_DESCRIPTION LIKE '%" & tsSearch.Text & "%' OR SUBJ_ID LIKE '%" & tsSearch.Text & "%' OR YR LIKE '%" & tsSearch.Text & "%'"
        sql = "SELECT  `SUBJ_ID` as 'SubjectID', `SUBJ_CODE` as 'Subject', `SUBJ_DESCRIPTION` as 'Description', `YR` as 'Level'  FROM `subject` WHERE SUBJ_CODE LIKE '%" & tsSearch.Text & "%' OR SUBJ_DESCRIPTION LIKE '%" & tsSearch.Text & "%' OR SUBJ_ID LIKE '%" & tsSearch.Text & "%' OR YR LIKE '%" & tsSearch.Text & "%'"
        fillGrid(sql, dtgList)
    End Sub
End Class