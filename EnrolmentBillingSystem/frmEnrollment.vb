Public Class frmEnrollment

    Private Sub frmEnrollment_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

 
        sql = "SELECT CONCAT( `LNAME`,', ', `FNAME`,' ', `MNAME`) FROM `tblstudent`"
        txtAutoComplete(sql, txtsearch)

        sql = "SELECT `IDNO`, CONCAT( `LNAME`,', ', `FNAME`,' ', `MNAME`) as 'FULL NAME'  FROM `tblstudent`"
        fillGrid(sql, dtgList)


    End Sub

    Private Sub txtsearch_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtsearch.TextChanged
        sql = "SELECT `IDNO`, CONCAT( `LNAME`,', ', `FNAME`,' ', `MNAME`) as 'FULL NAME'  FROM `tblstudent` WHERE CONCAT( `LNAME`,', ', `FNAME`,' ', `MNAME`) LIKE '%" & txtsearch.Text & "%' OR LNAME LIKE '%" & txtsearch.Text & "%' OR FNAME LIKE '%" & txtsearch.Text & "%'"
        fillGrid(sql, dtgList)
    End Sub

    Private Sub dtgList_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles dtgList.Click
        sql = "SELECT `IDNO`, CONCAT( `LNAME`,', ', `FNAME`,' ', `MNAME`) as 'FULL NAME', `SEX`" _
              & ", `AGE`, `HOME_ADD` as 'ADDRESS'" _
              & " FROM `tblstudent` WHERE `IDNO` = '" & dtgList.CurrentRow.Cells(0).Value & "'"
        fillSpecifictxt(sql)
        Try
            txtFullname.Text = dt.Rows(0).Item("FULL NAME") 
            'for the replica of LEVEL and SCHOOL YEAR 
            sql = " SELECT * FROM `tblstudupdatelevel` " _
            & "WHERE `IDNO` ='" & dtgList.CurrentRow.Cells(0).Value & "'"
            fillSpecifictxt(sql)
            If dt.Rows.Count > 0 Then
                txtLevel.Text = dt.Rows(0).Item("LEVEL")
                txtSection.Text = dt.Rows(0).Item("SECTION")  
            Else
                txtLevel.Text = "New"
                txtSection.Text = "New"  
            End If

            sql = "SELECT * FROM ay"
            fillCombo(sql, cbosy, "ACADYR")

            sql = "SELECT  * FROM `level`"
            fillCombo(sql, cboLevel, "LEVEL")

            sql = "SELECT  * FROM `tblsection`"
            fillCombo(sql, cbosection, "SECTION")

        Catch ex As Exception
            MsgBox(ex.Message & " lstViewStudent_DoubleClick", MsgBoxStyle.Exclamation)
        End Try

    End Sub

    
    Private Sub txtFullname_KeyDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles txtSection.KeyDown, txtLevel.KeyDown, txtFullname.KeyDown, cbosection.KeyDown, cbosy.KeyDown, cboLevel.KeyDown
        If e.KeyCode = Keys.Delete Then
            'todo
            Return
            e.Handled = True
        End If
    End Sub

    Private Sub txtFullname_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtSection.KeyPress, txtLevel.KeyPress, txtFullname.KeyPress, cbosection.KeyPress, cbosy.KeyPress, cboLevel.KeyPress
        e.Handled = True
    End Sub

 
    Private Sub cboLevel_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cboLevel.SelectedIndexChanged
        Try
            sql = "SELECT `SUBJ_CODE` as 'Subject', `SUBJ_DESCRIPTION` as 'Description' FROM `subject` WHERE `YR` = '" & cboLevel.Text & "'"
            fillGrid(sql, dtgSubject)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

   
    Private Sub btnClose_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClose.Click
        Me.Close()
    End Sub

    Private Sub btnClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClear.Click
        Try
            clearGroupTxt(GroupBox1)
            clearGroupTxt(GroupBox4)

            With cbosy 
                .Text = ""
                .DataSource = Nothing
            End With
            With cboLevel 
                .Text = ""
                .DataSource = Nothing
            End With
            With cbosection
                .Text = ""
                .DataSource = Nothing
            End With
            dtgSubject.Columns.Clear()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim id As String = dtgList.CurrentRow.Cells(0).Value
        Dim Level As String
        Try
            If txtFullname.Text = "" Then
                MsgBox("Fill the name of the students.", MsgBoxStyle.Exclamation)
            Else
                'for the replica of LEVEL and SCHOOL YEAR 
                sql = " SELECT * FROM `tblstudupdatelevel` WHERE `IDNO` ='" & id & "'"
                fillSpecifictxt(sql)
                If dt.Rows.Count > 0 Then
                    Level = dt.Rows(0).Item("LEVEL")

                    ValidateBackAccount(id, Level)

                    sql = "UPDATE `tblstudupdatelevel` SET  " _
                            & "`LEVEL`='" & cboLevel.Text & "',SECTION = '" & cbosection.Text _
                            & "' ,`AY`= '" & cbosy.Text & "' WHERE `IDNO`='" & id & "'"
                    edit(sql)
                Else
                    sql = "INSERT INTO `tblstudupdatelevel` (`IDNO`, `LEVEL`,SECTION, `AY`) " _
                                & "VALUES ('" & id & "','" & cboLevel.Text & "','" _
                                & cbosection.Text & "','" & cbosy.Text & "')"
                    create(sql)


                End If

                    'for school year of student
                    'sql = "INSERT INTO `schoolyr` (`AY`, `YR`,SECTION, `IDNO`, `STATUS`) " _
                    '       & "VALUES ('" & cbosy.Text & "','" & cboLevel.Text & "','" _
                    '       & cbosection.Text & "','" & id & "','" & cbostatus.Text & "')"
                    sql = "INSERT INTO `schoolyr` (`AY`, `YR`,SECTION, `IDNO`, `STATUS`) " _
                     & "VALUES ('" & cbosy.Text & "','" & cboLevel.Text & "','" _
                     & cbosection.Text & "','" & id & "','')"
                messageTrue = "Student has been enrolled."
                messageFalse = "Failed the student's to enrolled."
                CreateUpdateDeleteAllMessage(sql, messageTrue, messageFalse)

                sql = "SELECT * FROM `tblstudupdatelevel` l,`schoolyr`  sy, `subject` s " _
                & "WHERE  l.IDNO=sy.IDNO AND l.LEVEL = sy.YR AND sy.`YR` =s.`YR` AND sy.`IDNO` = '" & id & "'"
                fillSpecifictxt(sql)

                For Each r As DataRow In dt.Rows
                    sql = "INSERT INTO `grades` (`IDNO`, `SUBJ_ID`, `SYID` ) " _
                       & " VALUES ('" & id & "','" & r.Item("SUBJ_ID") & "','" & r.Item("SYID") & "')"
                    create(sql)
                Next





                'reports("SELECT CONCAT(  `FNAME` ,  ' ',  `LNAME` ,  ' ',  `MNAME` ) AS  'NAME',  `LEVEL` ,  `SECTION` , l.`AY` ,  `SUBJ_CODE`,`SUBJ_DESCRIPTION` " _
                '& " FROM  `tblstudent` s,  `tblstudupdatelevel` l,  `grades` g,  `subject` sub" _
                '& " WHERE s.`IDNO` = l.`IDNO` " _
                '& " AND l.`IDNO` = g.`IDNO` " _
                '& " AND g.`SUBJ_ID` = sub.`SUBJ_ID` AND s.`IDNO` ='" & id & "'", "cashiercopy", frmPrintErolment.CrystalReportViewer1)

                'With frmPrintErolment
                '    .Focus()
                '    .ShowDialog()
                '    .Dispose()
                'End With

                Call btnClear_Click(sender, e)

            End If
        Catch ex As Exception

        End Try
    End Sub
    Private Sub ValidateBackAccount(ByVal IDNO As String, ByVal YearLevel As String)
        Try
            Dim CurrentBalance As Double
            sql = "SELECT * FROM `tblstatementofaccounts` WHERE `IDNO`='" & IDNO & "' AND `YearLevel`='" & YearLevel & "'"
            fillSpecifictxt(sql)
            If dt.Rows.Count > 0 Then
                CurrentBalance = dt.Rows(0).Item("CurrentBalance")

                sql = "SELECT * FROM tblbackaccount WHERE IDNO ='" & IDNO & "'"
                fillSpecifictxt(sql)
                If dt.Rows.Count > 0 Then
                    sql = "UPDATE tblbackaccount SET BackAccount ='" & CurrentBalance & "' WHERE IDNO ='" & IDNO & "'"
                    edit(sql)
                Else
                    sql = "INSERT INTO `tblbackaccount` (`IDNO`,BackAccount) VALUES ('" & IDNO & "','" & CurrentBalance & "')"
                    create(sql)
                End If

            End If

        Catch ex As Exception

        End Try
    End Sub
End Class