Imports MySql.Data.MySqlClient
Module selects
    Public con As MySqlConnection = strConnection()
    Dim cmd As New MySqlCommand
    Dim da As New MySqlDataAdapter
    Public dt As New DataTable
    Public ds As New DataSet
    Public dr As MySqlDataReader
    Public Sub fillCombo(ByVal sql As String, ByVal cbo As Object, ByVal display As String)

        Try
            con.Open()
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            da.SelectCommand = cmd
            ' da = New MySqlDataAdapter(sql, con)
            dt = New DataTable
            'da.Fill(ds, "enrollmentdb")
            da.Fill(dt)

            With cbo
                '.DataSource = ds.Tables(0)
                .DataSource = dt
                .ValueMember = display
                .DisplayMember = display
            End With


        Catch ex As Exception
            MsgBox(ex.Message & " fillCombo procedures in the selects modules.", MsgBoxStyle.Information)
        Finally
            con.Close()
            da.Dispose()
        End Try

    End Sub
    Public Sub fillListView(ByVal sql As String, ByVal lst As ListView)

        Try
            con.Open()
            lst.Items.Clear()
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            da = New MySqlDataAdapter(sql, con)
            dt = New DataTable
            da.Fill(dt)

            For Each row As DataRow In dt.Rows
                With lst.Items.Add(row.Item(0))
                    .subitems.add(row.Item(1))
                    .subitems.add(row.Item(2))
                    .subitems.add(row.Item(3))
                    .subitems.add(row.Item(4))
                End With
            Next
            da.Dispose()
            con.Close()
        Catch ex As Exception
            MsgBox(ex.Message & " fillListView procedures in the selects modules.", MsgBoxStyle.Information)
        End Try

    End Sub
    Public Sub fillGrid(ByVal sql As String, ByVal dtg As DataGridView)

        Try
            con.Open()
            cmd = New MySqlCommand
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            da = New MySqlDataAdapter(sql, con)
            dt = New DataTable
            da.Fill(dt)
            dtg.DataSource = dt
        Catch ex As Exception
            'MsgBox(ex.Message & " fillGrid procedures in the selects modules.", MsgBoxStyle.Information)
        Finally
            da.Dispose()
            con.Close() 
        End Try
    End Sub

    Public Sub filltxtAuto(ByVal AUTOKEY As String, ByVal txt As Object)
        Try
            con.Open()
            cmd = New MySqlCommand
            With cmd
                .Connection = con
                .CommandText = "SELECT CONCAT(`Autonumber`,`EndValue`) FROM `tblautonumber` WHERE Remarks='" & AUTOKEY & "'"
            End With
            da.SelectCommand = cmd
            dt = New DataTable
            da.Fill(dt)
            txt.Text = Format(Now(), "yyyy") & dt.Rows(0).Item(0)
        Catch ex As Exception
            MsgBox(ex.Message & " filltxtAuto procedures in the selects modules.", MsgBoxStyle.Information)
        Finally
            con.Close()
            da.Dispose()

        End Try
    End Sub

    Public Function ORAuto(ByVal AUTOKEY As String)
        Try
            con.Open()
            cmd = New MySqlCommand
            With cmd
                .Connection = con
                .CommandText = "SELECT CONCAT(`Autonumber`,`EndValue`) FROM `tblautonumber` WHERE Remarks='" & AUTOKEY & "'"
            End With
            da.SelectCommand = cmd
            dt = New DataTable
            da.Fill(dt)

        Catch ex As Exception
            MsgBox(ex.Message & " filltxtAuto procedures in the selects modules.", MsgBoxStyle.Information)
        Finally
            con.Close()
            da.Dispose()
        End Try
        Return Format(Now(), "yyyy") & dt.Rows(0).Item(0)
    End Function
    Public Sub fillSpecifictxt(ByVal sql As String)
        Try
            con.Open()
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            da = New MySqlDataAdapter(sql, con)
            dt = New DataTable
            da.Fill(dt)
        Catch ex As Exception
            MsgBox(ex.Message & " fillSpecifictxt procedures in the selects modules.", MsgBoxStyle.Information)
        Finally
            con.Close()
            da.Dispose()
        End Try
    End Sub
    '''''''''''''''''''''''''''''''''''''''''''''''''filling in the students textbox
    Public Sub StudentTxtFill(ByVal frm As frmEditStudent)


        With frm
            sql = "SELECT * FROM tblstudent WHERE IDNO = '" & .txtStudentId.Text & "'"
            fillSpecifictxt(sql)
            If dt.Rows.Count > 0 Then
                .txtFName.Text = dt.Rows(0).Item("FNAME")
                .txtLName.Text = dt.Rows(0).Item("LNAME")
                .txtMName.Text = dt.Rows(0).Item("MNAME")
                .txtAddress.Text = dt.Rows(0).Item("HOME_ADD")
                .txtguardian.Text = dt.Rows(0).Item("GUARDIAN")
                .txtguardianadd.Text = dt.Rows(0).Item("GUARDIAN_ADD")
                .txtguardiantel.Text = dt.Rows(0).Item("GUARDIAN_TEL")
                .txtPBirth.Text = dt.Rows(0).Item("BPLACE")
                .dtpDbirth.Text = dt.Rows(0).Item("BDAY")
                .txtAge.Text = dt.Rows(0).Item("AGE")
                .txtWeigth.Text = dt.Rows(0).Item("WEIGTH")
                .txtHeight.Text = dt.Rows(0).Item("HEIGTH")
                .txtLastSchoolAttend.Text = dt.Rows(0).Item("LASTSCHOOLATTEND")
                If dt.Rows(0).Item("SEX") = "F" Then
                    .rdoFemale.Checked = True
                Else
                    .rdoMale.Checked = True
                End If

                'students requirements 
                sql = "SELECT * FROM `tblrequirements`  WHERE IDNO = '" & .txtStudentId.Text & "'"
                fillSpecifictxt(sql)
                If dt.Rows(0).Item("NSO") = "Yes" Then
                    .chkBirthCert.Checked = True
                Else
                    .chkBirthCert.Checked = False
                End If
                If dt.Rows(0).Item("PICID") = "Yes" Then
                    .chkPic.Checked = True
                Else
                    .chkPic.Checked = False
                End If
                If dt.Rows(0).Item("REPORTCARD") = "Yes" Then
                    .chkReportCard.Checked = True
                Else
                    .chkReportCard.Checked = False
                End If
                If dt.Rows(0).Item("CERTIFICATE_OF_TRANSFER") = "Yes" Then
                    .chkCertification.Checked = True
                Else
                    .chkCertification.Checked = False
                End If

            Else


                clearGroupTxt(.GroupBox1)

                .rdoMale.Checked = False
                .rdoFemale.Checked = False
                .txtStudentId.Enabled = True
                .chkBirthCert.Checked = False
                .chkPic.Checked = False
                .chkReportCard.Checked = False
                .chkCertification.Checked = False
                '.btnAdd.Enabled = True
            End If
        End With

    End Sub
    Public Sub txtAutoComplete(ByVal sql As String, ByVal txt As TextBox)
        Try
            con.Open()
            cmd = New MySqlCommand
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            da.SelectCommand = cmd
            dt = New DataTable
            da.Fill(dt)
            txt.AutoCompleteCustomSource.Clear()
            For Each r As DataRow In dt.Rows
                txt.AutoCompleteCustomSource.Add(r.Item(0).ToString)
            Next

        Catch ex As Exception
            MsgBox(ex.Message & " txtAutoComplete procedures in the selects modules.", MsgBoxStyle.Information)
        Finally
            con.Close()
            da.Dispose()
        End Try
    End Sub
    Public Sub RetrieveData(ByVal param As String, ByVal sql As String, ByVal dtg As Object)
        Try
            con.Open()
            cmd = New MySqlCommand()
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            dr = cmd.ExecuteReader

            dtg.Rows.clear()
            Select Case param
                Case "EssentialFees"
                    Do While dr.Read
                        dtg.rows.add(dr(0), dr(1), dr(2), dr(3))
                    Loop
                Case "Non-EssentialFees"
                    Do While dr.Read
                        dtg.rows.add(dr(0), dr(1), dr(2), dr(3))
                    Loop
                Case "Fees-Essential"
                    Do While dr.Read
                        dtg.rows.add(dr("Description").ToString, dr("Fees").ToString)
                    Loop
            End Select


        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try
    End Sub
#Region "Report"
    Public Sub reports(ByVal sql As String, ByVal rptname As String, ByVal crystalRpt As Object)
        Try
            con.Open()

            Dim reportname As String
            With cmd
                .Connection = con
                .CommandText = sql
            End With
            ds = New DataSet
            da = New MySqlDataAdapter(sql, con)
            da.Fill(ds)
            reportname = rptname
            Dim reportdoc As New CrystalDecisions.CrystalReports.Engine.ReportDocument
            Dim strReportPath As String
            strReportPath = Application.StartupPath & "\reports\" & reportname & ".rpt"
            With reportdoc
                .Load(strReportPath)
                .SetDataSource(ds.Tables(0))
            End With
            With crystalRpt
                .ShowRefreshButton = False
                .ShowCloseButton = False
                .ShowGroupTreeButton = False
                .ReportSource = reportdoc
            End With
        Catch ex As Exception
            MsgBox(ex.Message & "No Crystal Reports have been Installed")
        Finally
            da.Dispose()
            con.Close() 
        End Try
    End Sub
#End Region
End Module
