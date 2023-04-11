Public Class frmEnrolledStudent

    Private Sub frmEnrolledStudent_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'sql = "SELECT s.`IDNO`, CONCAT(`FNAME` ,' ', `LNAME`,' ', `MNAME`) as 'FULL NAME', `SEX` , `AGE`, `HOME_ADD` as 'ADDRESS' ,`LEVEL`  , `SECTION`  , `AY`  FROM `tblstudent` s, `tblstudupdatelevel` sl WHERE s.`IDNO`=sl.`IDNO` AND DATE_FORMAT(DATEENROLLED, '%Y')='" & Format(Now(), "yyyy") & "'"
        sql = "SELECT s.`IDNO`, CONCAT(`FNAME` ,' ', `LNAME`,' ', `MNAME`) as 'FULL NAME', `SEX` , `AGE`, `HOME_ADD` as 'ADDRESS' ,`LEVEL`  , `SECTION`  , `AY`  FROM `tblstudent` s, `tblstudupdatelevel` sl WHERE s.`IDNO`=sl.`IDNO`"
        fillGrid(sql, dtgList)


    End Sub

    Private Sub tsFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsFind.Click
        sql = "SELECT s.`IDNO`, CONCAT(`FNAME` ,' ', `LNAME`,' ', `MNAME`) as 'FULL NAME', `SEX` , `AGE`, `HOME_ADD` as 'ADDRESS' ,`LEVEL` , `SECTION`  , `AY` " &
        " FROM `tblstudent` s, `tblstudupdatelevel` sl WHERE s.`IDNO`=sl.`IDNO` AND ( CONCAT(`FNAME` ,' ', `LNAME`,' ', `MNAME`) LIKE '%" & tsSearch.Text & "%' OR FNAME LIKE '%" & tsSearch.Text &
        "' OR LNAME LIKE '%" & tsSearch.Text & "' OR LEVEL LIKE '%" & tsSearch.Text & "' OR SECTION LIKE '%" & tsSearch.Text & "' OR AY LIKE '%" & tsSearch.Text & "' OR CONCAT(`LEVEL` ,' ', `AY`) LIKE '%" & tsSearch.Text & "' OR CONCAT(`LEVEL` ,' ', `SECTION`) LIKE '%" & tsSearch.Text & "' OR CONCAT(`LNAME` ,' ', `AY`) LIKE '%" & tsSearch.Text & "')"
        fillGrid(sql, dtgList)
    End Sub

    Private Sub Prints(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsPrint.Click
        Try
         
        Catch ex As Exception

        End Try
    End Sub
End Class