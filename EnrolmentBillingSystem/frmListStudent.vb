Public Class frmListStudent

    Private Sub frmListStudent_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        sql = "SELECT `IDNO`, CONCAT(`FNAME` ,' ', `LNAME`,' ', `MNAME`) as 'FULL NAME', `SEX` , `AGE`, `HOME_ADD` as 'ADDRESS'  FROM `tblstudent`"
        fillGrid(sql, dtgList)
        'SELECT s.`IDNO`, CONCAT(`FNAME` ,' ', `LNAME`,' ', `MNAME`) as 'FULL NAME', `SEX` , `AGE`, `HOME_ADD` as 'ADDRESS' ,`LEVEL` as 'Level', `SECTION` as 'Section', `AY` as 'SchoolYear' FROM `tblstudent` s, `tblstudupdatelevel` sl WHERE s.`IDNO`=sl.`IDNO`
    End Sub
 
    Private Sub tsSearch_KeyUp(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles tsSearch.KeyUp
        'sql = "SELECT `IDNO`, CONCAT(`FNAME` ,' ', `LNAME`,' ', `MNAME`) as 'FULL NAME', `SEX` , `AGE`, `HOME_ADD` as 'ADDRESS'  FROM `tblstudent` WHERE CONCAT(`FNAME` ,' ', `LNAME`,' ', `MNAME`) LIKE '%" & tsSearch.Text & "%' OR FNAME LIKE '%" & tsSearch.Text & "%' OR LNAME LIKE '%" & tsSearch.Text & "%'"
        'fillGrid(sql, dtgList)
    End Sub

    Private Sub ToolStripButton2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ToolStripButton2.Click
        With frmEditStudent
            .Show()
            .Focus()
            .txtStudentId.Text = dtgList.CurrentRow.Cells(0).Value
            Me.Close()
        End With
    End Sub
 
    Private Sub tsDelete_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsDelete.Click
        Try
            sql = "DELETE FROM `tblstudent` WHERE `IDNO`='" & dtgList.CurrentRow.Cells(0).Value & "'"
            deleting(sql)

            sql = "DELETE FROM `schoolyr` WHERE  `IDNO`='" & dtgList.CurrentRow.Cells(0).Value & "'"
            deleting(sql)

            sql = "DELETE FROM `studentsubjects` WHERE  `IDNO`='" & dtgList.CurrentRow.Cells(0).Value & "'"
            deleting(sql)

            sql = "DELETE FROM `tblrequirements` WHERE  `IDNO`='" & dtgList.CurrentRow.Cells(0).Value & "'"
            deleting(sql)

            sql = "DELETE FROM `tblstuddetails` WHERE  `IDNO`='" & dtgList.CurrentRow.Cells(0).Value & "'"
            deleting(sql)

            sql = "DELETE FROM `tblstudsiblings` WHERE  `IDNO`='" & dtgList.CurrentRow.Cells(0).Value & "'"
            deleting(sql)

            sql = "DELETE FROM `tblstudupdatelevel` WHERE  `IDNO`='" & dtgList.CurrentRow.Cells(0).Value & "'"
            deleting(sql)

            sql = "DELETE FROM `grades` WHERE  `IDNO`='" & dtgList.CurrentRow.Cells(0).Value & "'"
            deleting(sql)


            Call frmListStudent_Load(sender, e)
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
 
    Private Sub tsFind_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles tsFind.Click
        sql = "SELECT `IDNO`, CONCAT(`FNAME` ,' ', `LNAME`,' ', `MNAME`) as 'FULL NAME', `SEX` , `AGE`, `HOME_ADD` as 'ADDRESS'  FROM `tblstudent` WHERE CONCAT(`FNAME` ,' ', `LNAME`,' ', `MNAME`) LIKE '%" & tsSearch.Text & "%' OR FNAME LIKE '%" & tsSearch.Text & "%' OR LNAME LIKE '%" & tsSearch.Text & "%'"
        fillGrid(sql, dtgList)
    End Sub
End Class