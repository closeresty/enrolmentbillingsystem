Public Class frmStudent
 
    Private Sub btnGenerateIDNO_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGenerateIDNO.Click
        filltxtAuto("StudentID", txtStudentId)
        txtLName.Focus()
    End Sub

    Private Sub tsSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsSave.Click
        If txtStudentId.Text = "" Then
            MsgBox("One of the box is empty on the student details,You must fill it", MsgBoxStyle.Exclamation)
            Return
        End If
        For Each txt As Control In GroupBox1.Controls
            If txt.GetType Is GetType(TextBox) Then
                If txt.Text = "" Then
                    MsgBox("One of the box is empty on the student details,You must fill it", MsgBoxStyle.Exclamation)
                    Return
                Else
                    If rdoMale.Checked = True Then
                        radioSEX = "MALE"
                    Else
                        radioSEX = "FEMALE"
                    End If
                    checkOption(chkBirthCert, Nyesno)
                    checkOption(chkCertification, Cyesno)
                    checkOption(chkPic, Pyesno)
                    checkOption(chkReportCard, Ryesno)

                    'student(requirements)
                    sql = "INSERT INTO  `tblrequirements` (`NSO`, `PICID`, `REPORTCARD`, `CERTIFICATE_OF_TRANSFER`, `IDNO`) " _
                            & "VALUES ('" & Nyesno & "','" & Pyesno & "','" & Ryesno _
                            & "','" & Cyesno & "','" & txtStudentId.Text & "')"
                    create(sql)
                    'student basic info
                    sql = "INSERT INTO tblstudent(`IDNO`, `FNAME`, `LNAME`, `MNAME`, `SEX`, `BDAY`, `BPLACE`, `AGE`, `HOME_ADD`, `GUARDIAN`,`GUARDIAN_ADD`,`GUARDIAN_TEL`,`LASTSCHOOLATTEND`,`HEIGTH`,`WEIGTH`) " _
                            & "VALUES ('" & txtStudentId.Text & "','" & txtFName.Text & "','" & txtLName.Text & "','" & txtMName.Text _
                            & "','" & radioSEX & "','" & dtpDbirth.Text & "','" & txtPBirth.Text & "','" & txtAge.Text & "','" _
                            & txtAddress.Text & "','" & txtguardian.Text & "','" & txtguardianadd.Text & "','" & txtguardiantel.Text _
                            & "','" & txtLastSchoolAttend.Text & "','" & txtHeight.Text & "','" _
                            & txtWeigth.Text & "')"
                    messageTrue = "Student has been saved."
                    messageFalse = "Student Failed to save"
                    CreateUpdateDeleteAllMessage(sql, messageTrue, messageFalse)
                    sql = "Update tblautonumber set EndValue = EndValue + IncrementValue WHERE Remarks='StudentID'"
                    increment(sql)

                    Call tsNew_Click(sender, e)
                End If
                Return
            End If

        Next
    End Sub

    Private Sub tsNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsNew.Click
        clearGroupTxt(GroupBox1)
        txtStudentId.Clear()
        rdoMale.Checked = False
        rdoFemale.Checked = False 
        chkBirthCert.Checked = False
        chkPic.Checked = False
        chkReportCard.Checked = False
        chkCertification.Checked = False

        sql = "SELECT * FROM ay"
        fillCombo(sql, cboAddSy, "ACADYR")
    End Sub

    Private Sub dtpDbirth_ValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dtpDbirth.ValueChanged
        Try
            Dim age As Integer
            age = DateDiff(DateInterval.Year, dtpDbirth.Value, Now())
            txtAge.Text = age
        Catch ex As Exception

        End Try
    End Sub

    Private Sub tsList_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsList.Click
        With frmListStudent
            .Show()
            .Focus()
            Me.Close()
        End With
    End Sub
End Class