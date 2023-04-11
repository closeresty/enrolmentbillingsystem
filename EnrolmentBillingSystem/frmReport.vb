Public Class frmReport

    Private Sub frmReport_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        sql = "SELECT  `LEVEL` FROM `level`"
        fillCombo(sql, cboLevel, "LEVEL")

        sql = "SELECT  `ACADYR` FROM `ay`"
        fillCombo(sql, cbosy, "ACADYR")

        sql = "SELECT IDNO FROM tblstudent"
        txtAutoComplete(sql, txtsearchid)
    End Sub
    Private Sub studentList_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        reports("SELECT s.`IDNO`, CONCAT ( `LNAME`, ' , ',`FNAME` , ' ',`MNAME`) as 'Name', `SEX`, `AGE`, `HOME_ADD`, `AY`, `YR`, `STATUS` " _
                & "FROM `tblstudent`  s,`schoolyr` sy WHERE  s.`IDNO`=sy.`IDNO` AND YR ='" & cboLevel.Text _
                & "' AND AY = '" & cbosy.Text & "'", "studentbygender", CrystalReportViewer1)
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        reports("SELECT Concat(`FNAME`,' ', `LNAME`,' ', `MNAME`) AS 'FULL NAME',`AY`, `YR`,`SEX`, `HOME_ADD` FROM `tblstudent` s, `schoolyr` sy WHERE  s.`IDNO`=sy.`IDNO`", "chart", CrystalReportViewer1)
    End Sub

    Private Sub btnstudecopy_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnstudecopy.Click
        reports("SELECT CONCAT(  `FNAME` ,  ' ',  `LNAME` ,  ' ',  `MNAME` ) AS  'NAME',  `LEVEL` ,  `SECTION` , l.`AY` ,  `SUBJ_CODE`,`SUBJ_DESCRIPTION` " _
                & " FROM  `tblstudent` s,  `tblstudupdatelevel` l,  `grades` g,  `subject` sub" _
                & " WHERE s.`IDNO` = l.`IDNO` " _
                & " AND l.`IDNO` = g.`IDNO` " _
                & " AND g.`SUBJ_ID` = sub.`SUBJ_ID` AND s.`IDNO` ='" & txtsearchid.Text & "'", "studentscopy", CrystalReportViewer1)
    End Sub
End Class