Public Class frmEditStudent

    Private Sub tsSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsSave.Click
        Try
            If rdoMale.Checked = True Then
                radioSEX = "MALE"
            Else
                radioSEX = "FEMALE"
            End If
            checkOption(chkBirthCert, Nyesno)
            checkOption(chkCertification, Cyesno)
            checkOption(chkPic, Pyesno)
            checkOption(chkReportCard, Ryesno)
            'students siblings

            'student(requirements)
            sql = "UPDATE  `tblrequirements` SET `NSO`='" & Nyesno & "', `PICID`='" & Pyesno & "', `REPORTCARD`='" & Ryesno _
                    & "', `CERTIFICATE_OF_TRANSFER`='" & Cyesno & "' WHERE IDNO='" & txtStudentId.Text & "'"
            edit(sql)
            'student basic info
            sql = "UPDATE tblstudent SET   `FNAME`='" & txtFName.Text & "', `LNAME`='" & txtLName.Text & "', `MNAME`='" & txtMName.Text _
                    & "', `SEX`='" & radioSEX & "', `BDAY`='" & dtpDbirth.Text & "', `BPLACE`='" & txtPBirth.Text & "', `AGE`='" & txtAge.Text _
                    & "', `HOME_ADD`='" & txtAddress.Text & "',GUARDIAN='" & txtguardian.Text & "',GUARDIAN_ADD ='" & txtguardianadd.Text _
                    & "',GUARDIAN_TEL ='" & txtguardiantel.Text & "',`LASTSCHOOLATTEND`='" & txtLastSchoolAttend.Text _
                    & "', WEIGTH='" & txtWeigth.Text & "',HEIGTH='" & txtHeight.Text & "' WHERE IDNO='" & txtStudentId.Text & "'"

            messageTrue = "Student has been updated."
            messageFalse = "No student's record for this id. No record to be updated."
            CreateUpdateDeleteAllMessage(sql, messageTrue, messageFalse)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub tsNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsNew.Click
        With frmListStudent
            .Show()
            .Focus()
            Me.Close()
        End With
    End Sub

    Private Sub txtStudentId_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtStudentId.TextChanged
        
        sql = "SELECT * FROM ay"
        fillCombo(sql, cboAddSy, "ACADYR")

        StudentTxtFill(Me)

    End Sub

    Private Sub dtpDbirth_ValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dtpDbirth.ValueChanged
        Try
            Dim age As Integer
            age = DateDiff(DateInterval.Year, dtpDbirth.Value, Now())
            txtAge.Text = age
        Catch ex As Exception

        End Try

    End Sub

    Private Sub tsAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsAdd.Click
        With frmStudent
            .Show()
            .Focus()
            Me.Close()
        End With
    End Sub

    Private Sub frmEditStudent_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        
    End Sub
End Class