Module declarationsAndFuntions
    Public sql As String
    'Public checkMessage As Object
    Public radioSEX As String
    Public pic As String = ""
    Public messageTrue As String
    Public messageFalse As String
    Public Ryesno As String
    Public Nyesno As String
    Public Pyesno As String
    Public Cyesno As String

    Public Sub frmInPanel(ByVal f As Object, ByVal pnl As Object)
        pnl.controls.clear()
        f.TopLevel = False
        pnl.Controls.Add(f)
        f.Show()
    End Sub
    Public Sub clearGroupTxt(ByVal grp As Object)
        For Each txt As Control In grp.Controls
            If txt.GetType Is GetType(TextBox) Then
                txt.Text = Nothing
            End If
        Next
        For Each txt As Control In grp.Controls
            If txt.GetType Is GetType(RichTextBox) Then
                txt.Text = Nothing
            End If
        Next
    End Sub
    Public Sub GetTxtName(ByVal grp As GroupBox)
        For Each txt As Control In grp.Controls
            If txt.GetType Is GetType(TextBox) Then
                MsgBox(txt.Name)
            End If
        Next
    End Sub
    Public Sub checkOption(ByVal chk As CheckBox, ByRef yesno As String)
        If chk.CheckState = CheckState.Checked Then
            yesno = "Yes"
        Else
            yesno = "No"
        End If
    End Sub
   
    Public Sub OutputMessage(ByVal strMessage As String)
        MsgBox(strMessage)
    End Sub
End Module
