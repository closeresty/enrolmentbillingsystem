Public Class Form1 
    Private Sub AddNewStudentToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AddNewStudentToolStripMenuItem.Click
        With frmStudent
            .Show()
            .Focus()
        End With
    End Sub

    Private Sub ListOfStudentToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListOfStudentToolStripMenuItem.Click
        With frmListStudent
            .Show()
            .Focus()
        End With
    End Sub

 
    Private Sub ManageAcademicYearToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ManageAcademicYearToolStripMenuItem.Click
        With frmSY
            .Show()
            .Focus()
        End With
    End Sub

    Private Sub ManageGradeOrYearLevelToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ManageGradeOrYearLevelToolStripMenuItem.Click
        With frmLevel
            .Show()
            .Focus()
        End With
    End Sub

    Private Sub ManageSectionToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ManageSectionToolStripMenuItem.Click
        With frmSection
            .Show()
            .Focus()
        End With
    End Sub 
    Private Sub AddNewSubjectToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AddNewSubjectToolStripMenuItem.Click
        With frmSubject
            .Show()
            .Focus()
        End With
    End Sub

    Private Sub ListOfSubjectsToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListOfSubjectsToolStripMenuItem.Click
        With frmListSubject
            .Show()
            .Focus()
        End With
    End Sub
    Private Sub tsUser_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsUser.Click
        With frmUser
            .Show()
            .Focus()
        End With
    End Sub

    Private Sub tsReport_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsReport.Click
        With frmReport
            .Show()
            .Focus()
        End With

    End Sub 

    Private Sub tslogin_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tslogin.Click
        If tslogin.Text = "Login" Then
            With LoginForm1
                .Show()
                .Focus() 
            End With
        Else
            tslogin.Text = "Login"
            tslogin.Image = My.Resources.login
            disabled()
        End If
    End Sub

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        disabled()
    End Sub

    Private Sub ListOfEnrolledStudentToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub EnrollStudentToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles EnrollStudentToolStripMenuItem.Click
        With frmEnrollment
            .Show()
            .Focus()
        End With
    End Sub

    Private Sub ListOfEnrolledStudentsToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListOfEnrolledStudentsToolStripMenuItem.Click
        With frmEnrolledStudent
            .Show()
            .Focus()
        End With
    End Sub

    Private Sub EssentialFeesToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles EssentialFeesToolStripMenuItem.Click
        With frmEssentialFees
            .ShowDialog()
        End With
    End Sub

    Private Sub NonEssentialFeesToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles NonEssentialFeesToolStripMenuItem1.Click
        With frmNon_EssentialFees
            .ShowDialog()
        End With
    End Sub

    Private Sub FeesToolStripMenuItem_Click(sender As Object, e As EventArgs)
        With frmFees
            .ShowDialog()
        End With
    End Sub

    Private Sub PaymentsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PaymentsToolStripMenuItem.Click
        With frmpayments
            .ShowDialog()
        End With
    End Sub

    Private Sub PrintStudentSubjectsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PrintStudentSubjectsToolStripMenuItem.Click
        With frmprintEnrolledSubject
            .ShowDialog()
        End With
    End Sub

    Private Sub StatementOfAccountsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles StatementOfAccountsToolStripMenuItem.Click
        With frmStatementofAccounts
            .ShowDialog()
        End With
    End Sub
End Class
