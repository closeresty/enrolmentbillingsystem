Public Class frmprintEnrolledSubject
    Private Sub btnPrint_Click(sender As Object, e As EventArgs) Handles btnPrint.Click
        Try
            sql = "SELECT * FROM tblstudupdatelevel   WHERE  `IDNO`='" & txtsearch.Text & "' LIMIT 1"
            fillSpecifictxt(sql)
            If dt.Rows.Count > 0 Then

                Dim idno As String = dt.Rows(0).Item("IDNO")
                Dim yearlevels As String = dt.Rows(0).Item("LEVEL")

                sql = "SELECT * FROM `tblstatementofaccounts` WHERE `IDNO` ='" & txtsearch.Text & "' and `YearLevel`  ='" & yearlevels & "'"
                fillSpecifictxt(sql)
                Dim maxrows As Integer = dt.Rows.Count
                If maxrows > 0 Then
                    reports("SELECT CONCAT(  `FNAME` ,  ' ',  `LNAME` ,  ' ',  `MNAME` ) AS  'NAME',  `LEVEL` ,  `SECTION` , l.`AY` ,  `SUBJ_CODE`,`SUBJ_DESCRIPTION` " _
                              & " FROM  `tblstudent` s,  `tblstudupdatelevel` l,  `grades` g,  `subject` sub" _
                              & " WHERE s.`IDNO` = l.`IDNO` " _
                              & " AND l.`IDNO` = g.`IDNO` " _
                              & " AND g.`SUBJ_ID` = sub.`SUBJ_ID` AND s.`IDNO` ='" & txtsearch.Text & "'", "cashiercopy", CrystalReportViewer1)
                Else
                    MsgBox("Student is not paying yet", MsgBoxStyle.Exclamation)

                End If
            Else
                MsgBox("Student is not yet enrolled", MsgBoxStyle.Exclamation)
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub frmprintEnrolledSubject_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        sql = "SELECT IDNO FROM tblstudupdatelevel"
        txtAutoComplete(sql, txtsearch)
    End Sub
End Class