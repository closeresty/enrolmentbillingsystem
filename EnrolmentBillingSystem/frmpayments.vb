Public Class frmpayments
    Public studentid As String = 0
    Private Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Try
            Dim CurrentAccount As Double
            If cboSearchBy.Text = "Select" Then
                MsgBox("Please select what you are going to search", MsgBoxStyle.Exclamation)

                txtSearch.Focus()
                Return
            Else
                If txtSearch.Text = "" Then
                    MsgBox("Fields cannot be empty", MsgBoxStyle.Exclamation)

                    txtSearch.Focus()
                    Return
                End If
            End If

            If cboSearchBy.Text = "Id Number" Then
                sql = "SELECT * FROM `tblstudent` s,tblstudupdatelevel sl WHERE s.`IDNO`=sl.`IDNO` AND s.`IDNO`='" & txtSearch.Text & "'"
            Else
                sql = "SELECT * FROM  `tblstudent` s,tblstudupdatelevel sl WHERE s.`IDNO`=sl.`IDNO` AND CONCAT(`FNAME`,' ', `LNAME`) LIKE '%" & txtSearch.Text & "%'"
            End If
            fillSpecifictxt(sql)
            If dt.Rows.Count > 0 Then
                With dt
                    studentid = .Rows(0).Item("IDNO")
                    txtStudentName.Text = .Rows(0).Item("FNAME") & " " & .Rows(0).Item("LNAME")
                    txtLevel.Text = .Rows(0).Item("LEVEL")
                    txtSection.Text = .Rows(0).Item("SECTION")
                    txtSy.Text = .Rows(0).Item("AY")
                End With
                'MsgBox(studentid)

                sql = "SELECT * FROM `tblessentialfees` WHERE `YearLevel`='" & txtLevel.Text & "'"
                RetrieveData("Fees-Essential", sql, dtgEssential)
                Dim esTot As Double
                Dim nesTot As Double
                esTot = 0
                nesTot = 0
                If dtgEssential.Rows.Count > 0 Then
                    For i As Integer = 0 To dtgEssential.Rows.Count - 1
                        esTot += dtgEssential.Rows(i).Cells(1).Value
                    Next
                    txtTotEssential.Text = esTot
                Else
                    txtTotEssential.Text = "0"
                End If

                sql = "SELECT * FROM `tblnonessentialfees` WHERE `YearLevel`='" & txtLevel.Text & "'"
                RetrieveData("Fees-Essential", sql, dtgNonEssential)

                If dtgNonEssential.Rows.Count > 0 Then
                    For i As Integer = 0 To dtgNonEssential.Rows.Count - 1
                        nesTot += dtgNonEssential.Rows(i).Cells(1).Value
                    Next
                    txtTotNonEssential.Text = nesTot
                Else
                    txtTotNonEssential.Text = "0"
                End If

                CurrentAccount = Double.Parse(txtTotNonEssential.Text) + Double.Parse(txtTotEssential.Text)
                txtCurrentAccount.Text = CurrentAccount

                txtTotalAmount.Text = CurrentAccount + Double.Parse(txtBackAccount.Text)

                sql = "SELECT * FROM `tblstatementofaccounts` WHERE `IDNO`='" & studentid & "' and `YearLevel`='" & txtLevel.Text & "'"
                fillSpecifictxt(sql)
                If dt.Rows.Count > 0 Then
                    txtCurrentBalance.Text = dt.Rows(0).Item("CurrentBalance")
                Else
                    txtCurrentBalance.Text = txtTotalAmount.Text
                End If

                sql = "SELECT * FROM tblbackaccount WHERE IDNO = '" & studentid & "'"
                fillSpecifictxt(sql)
                If dt.Rows.Count > 0 Then
                    txtBackAccount.Text = dt.Rows(0).Item("BackAccount")
                Else
                    txtBackAccount.Text = "0.00"
                End If

                txtSearch.Clear()
                txtPayment.Focus()
                txtPayment.Clear()

            Else
                MsgBox("No record found", MsgBoxStyle.Exclamation)
                ClearPaymentForm()
            End If
        Catch ex As Exception

        End Try
    End Sub
    Private Sub ClearPaymentForm()
        clearGroupTxt(GroupBox2)
        dtgEssential.Rows.Clear()
        dtgNonEssential.Rows.Clear()
        txtTotEssential.Text = "0.00"
        txtTotNonEssential.Text = "0.00"
        txtCurrentAccount.Text = "0.00"
        txtTotalAmount.Text = "0.00"
        txtPayment.Text = "0.00"
        txtCurrentBalance.Text = "0.00"
        txtSearch.Clear()
        txtSearch.Focus()
        filltxtAuto("TransNo", txtTransNo)
        txtTransDate.Text = Format(Now(), "yyyy-MM-dd")
    End Sub

    Private Sub frmpayments_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ClearPaymentForm()
    End Sub

    Private Sub txtPayment_Click(sender As Object, e As EventArgs) Handles txtPayment.Click
        txtPayment.Clear()

    End Sub

    Private Sub txtPayment_Leave(sender As Object, e As EventArgs) Handles txtPayment.Leave
        If txtPayment.Text = "" Then
            txtPayment.Text = "0.00"
        End If
    End Sub

    Private Sub txtPayment_TextChanged(sender As Object, e As EventArgs) Handles txtPayment.TextChanged

    End Sub

    Private Sub cboSearchBy_KeyPress(sender As Object, e As KeyPressEventArgs) Handles cboSearchBy.KeyPress
        e.Handled = True
    End Sub

    Private Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Try


            'MsgBox(ORAuto("ORNO"))


            Dim currentbalance As Double

            currentbalance = Double.Parse(txtCurrentBalance.Text) - Double.Parse(txtPayment.Text)
            If txtPayment.Text = "" Or txtPayment.Text = "0" Then
                MsgBox("Payment must be filled up.", MsgBoxStyle.Exclamation)
                Return
            End If


            sql = "SELECT * FROM `tblstatementofaccounts` WHERE `IDNO`='" & studentid & "' AND `YearLevel`='" & txtLevel.Text & "'"
            fillSpecifictxt(sql)
            If dt.Rows.Count > 0 Then
                sql = "UPDATE tblstatementofaccounts SET AmountPaid = AmountPaid + '" & txtPayment.Text & "',CurrentBalance=CurrentBalance-'" & txtPayment.Text & "' WHERE `IDNO`='" & studentid & "' AND `YearLevel`='" & txtLevel.Text & "'"
                edit(sql)
            Else
                sql = "INSERT INTO `tblstatementofaccounts` " &
                    "(`IDNO`, `Fullname`, `CurrentAmount`, `BackAccount`, `TotalAmount`, `AmountPaid`, `CurrentBalance`, `SchoolYear`, `YearLevel`,DateEnrolled) " &
                    " VALUES ('" & studentid & "','" & txtStudentName.Text & "','" & txtCurrentAccount.Text & "','" & txtBackAccount.Text & "','" & txtTotalAmount.Text & "','" & txtPayment.Text & "','" & currentbalance & "','" & txtSy.Text & "','" & txtLevel.Text & "',Now())"
                create(sql)

                'sql = "SELECT * FROM tblbackaccount WHERE IDNO ='" & studentid & "'"
                'fillSpecifictxt(sql)
                'If dt.Rows.Count > 0 Then
                '    sql = "UPDATE tblbackaccount SET BackAccount ='" & txtBackAccount.Text & "' WHERE IDNO ='" & studentid & "'"
                '    edit(sql)
                'Else
                '    sql = "INSERT INTO `tblbackaccount` (`IDNO`) VALUES ('" & studentid & "')"
                '    create(sql)
                'End If

            End If

            sql = "INSERT INTO `tblpayment` (ORNO,`IDNO`, `Fullname`, `Level`, `AmountPaid`, `BalAmount`, `DatePaid`) " &
            " VALUES ('" & ORAuto("ORNO") & "','" & studentid & "','" & txtStudentName.Text & "','" & txtLevel.Text & "','" & txtPayment.Text & "','" & currentbalance & "','" & Format(Now(), "yyyy-MM-dd") & "')"
            create(sql)

            MsgBox("Payment has been saved.")

            sql = "Select * From tblpayment Where ORNO ='" & ORAuto("ORNO") & "'"
            reports(sql, "receipt", frmReceipt.CrystalReportViewer1)
            With frmReceipt
                .ShowDialog()
            End With


            sql = "Update tblautonumber set EndValue = EndValue + IncrementValue WHERE Remarks='ORNO'"
            increment(sql)

            ClearPaymentForm()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        ClearPaymentForm()
    End Sub

    Private Sub txtPayment_KeyUp(sender As Object, e As KeyEventArgs) Handles txtPayment.KeyUp
        'Try
        '    If e.KeyCode = Keys.Enter Then
        '        Dim currentbalance As Double
        '        If txtPayment.Text = "" Then
        '            currentbalance = Double.Parse(txtTotalAmount.Text)
        '        Else
        '            currentbalance = Double.Parse(txtTotalAmount.Text) - Double.Parse(txtPayment.Text)
        '        End If
        '        txtCurrentBalance.Text = currentbalance
        '    End If

        'Catch ex As Exception

        'End Try
    End Sub

    Private Sub btnClose_Click(sender As Object, e As EventArgs) Handles btnClose.Click
        Me.Close()
    End Sub
End Class