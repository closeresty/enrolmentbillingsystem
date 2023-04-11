<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form1))
        Me.ToolStrip1 = New System.Windows.Forms.ToolStrip()
        Me.tsStudent = New System.Windows.Forms.ToolStripDropDownButton()
        Me.AddNewStudentToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ListOfStudentToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsEnrollment = New System.Windows.Forms.ToolStripDropDownButton()
        Me.EnrollStudentToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ListOfEnrolledStudentsToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.PrintStudentSubjectsToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsSubject = New System.Windows.Forms.ToolStripDropDownButton()
        Me.AddNewSubjectToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ListOfSubjectsToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsSettings = New System.Windows.Forms.ToolStripDropDownButton()
        Me.ManageAcademicYearToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ManageGradeOrYearLevelToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ManageSectionToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsUser = New System.Windows.Forms.ToolStripButton()
        Me.tsAccounting = New System.Windows.Forms.ToolStripDropDownButton()
        Me.PaymentsToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.EncoderRateToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.EssentialFeesToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.NonEssentialFeesToolStripMenuItem1 = New System.Windows.Forms.ToolStripMenuItem()
        Me.tsReport = New System.Windows.Forms.ToolStripButton()
        Me.tslogin = New System.Windows.Forms.ToolStripButton()
        Me.StatementOfAccountsToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ToolStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ToolStrip1
        '
        Me.ToolStrip1.AutoSize = False
        Me.ToolStrip1.BackColor = System.Drawing.Color.White
        Me.ToolStrip1.Dock = System.Windows.Forms.DockStyle.Left
        Me.ToolStrip1.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden
        Me.ToolStrip1.ImageScalingSize = New System.Drawing.Size(50, 50)
        Me.ToolStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.tsStudent, Me.tsEnrollment, Me.tsSubject, Me.tsSettings, Me.tsUser, Me.tsAccounting, Me.tsReport, Me.tslogin})
        Me.ToolStrip1.Location = New System.Drawing.Point(0, 0)
        Me.ToolStrip1.Name = "ToolStrip1"
        Me.ToolStrip1.Size = New System.Drawing.Size(120, 599)
        Me.ToolStrip1.Stretch = True
        Me.ToolStrip1.TabIndex = 0
        Me.ToolStrip1.Text = "ToolStrip1"
        '
        'tsStudent
        '
        Me.tsStudent.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.AddNewStudentToolStripMenuItem, Me.ListOfStudentToolStripMenuItem})
        Me.tsStudent.Image = CType(resources.GetObject("tsStudent.Image"), System.Drawing.Image)
        Me.tsStudent.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsStudent.Name = "tsStudent"
        Me.tsStudent.Size = New System.Drawing.Size(118, 54)
        Me.tsStudent.Text = "Students"
        '
        'AddNewStudentToolStripMenuItem
        '
        Me.AddNewStudentToolStripMenuItem.Name = "AddNewStudentToolStripMenuItem"
        Me.AddNewStudentToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.AddNewStudentToolStripMenuItem.Text = "Add New Student"
        '
        'ListOfStudentToolStripMenuItem
        '
        Me.ListOfStudentToolStripMenuItem.Name = "ListOfStudentToolStripMenuItem"
        Me.ListOfStudentToolStripMenuItem.Size = New System.Drawing.Size(167, 22)
        Me.ListOfStudentToolStripMenuItem.Text = "List of Student"
        '
        'tsEnrollment
        '
        Me.tsEnrollment.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.EnrollStudentToolStripMenuItem, Me.ListOfEnrolledStudentsToolStripMenuItem, Me.PrintStudentSubjectsToolStripMenuItem})
        Me.tsEnrollment.Image = CType(resources.GetObject("tsEnrollment.Image"), System.Drawing.Image)
        Me.tsEnrollment.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsEnrollment.Name = "tsEnrollment"
        Me.tsEnrollment.Size = New System.Drawing.Size(118, 54)
        Me.tsEnrollment.Text = "Enrollment"
        '
        'EnrollStudentToolStripMenuItem
        '
        Me.EnrollStudentToolStripMenuItem.Name = "EnrollStudentToolStripMenuItem"
        Me.EnrollStudentToolStripMenuItem.Size = New System.Drawing.Size(236, 22)
        Me.EnrollStudentToolStripMenuItem.Text = "Enroll Student"
        '
        'ListOfEnrolledStudentsToolStripMenuItem
        '
        Me.ListOfEnrolledStudentsToolStripMenuItem.Name = "ListOfEnrolledStudentsToolStripMenuItem"
        Me.ListOfEnrolledStudentsToolStripMenuItem.Size = New System.Drawing.Size(236, 22)
        Me.ListOfEnrolledStudentsToolStripMenuItem.Text = "List of Enrolled Students"
        '
        'PrintStudentSubjectsToolStripMenuItem
        '
        Me.PrintStudentSubjectsToolStripMenuItem.Name = "PrintStudentSubjectsToolStripMenuItem"
        Me.PrintStudentSubjectsToolStripMenuItem.Size = New System.Drawing.Size(236, 22)
        Me.PrintStudentSubjectsToolStripMenuItem.Text = "Print Student Enrolled Subjects"
        '
        'tsSubject
        '
        Me.tsSubject.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.AddNewSubjectToolStripMenuItem, Me.ListOfSubjectsToolStripMenuItem})
        Me.tsSubject.Image = CType(resources.GetObject("tsSubject.Image"), System.Drawing.Image)
        Me.tsSubject.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsSubject.Name = "tsSubject"
        Me.tsSubject.Size = New System.Drawing.Size(118, 54)
        Me.tsSubject.Text = "Subjects"
        '
        'AddNewSubjectToolStripMenuItem
        '
        Me.AddNewSubjectToolStripMenuItem.Name = "AddNewSubjectToolStripMenuItem"
        Me.AddNewSubjectToolStripMenuItem.Size = New System.Drawing.Size(163, 22)
        Me.AddNewSubjectToolStripMenuItem.Text = "Add new Subject"
        '
        'ListOfSubjectsToolStripMenuItem
        '
        Me.ListOfSubjectsToolStripMenuItem.Name = "ListOfSubjectsToolStripMenuItem"
        Me.ListOfSubjectsToolStripMenuItem.Size = New System.Drawing.Size(163, 22)
        Me.ListOfSubjectsToolStripMenuItem.Text = "List of Subjects"
        '
        'tsSettings
        '
        Me.tsSettings.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ManageAcademicYearToolStripMenuItem, Me.ManageGradeOrYearLevelToolStripMenuItem, Me.ManageSectionToolStripMenuItem})
        Me.tsSettings.Image = CType(resources.GetObject("tsSettings.Image"), System.Drawing.Image)
        Me.tsSettings.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsSettings.Name = "tsSettings"
        Me.tsSettings.Size = New System.Drawing.Size(118, 54)
        Me.tsSettings.Text = "Settings"
        '
        'ManageAcademicYearToolStripMenuItem
        '
        Me.ManageAcademicYearToolStripMenuItem.Name = "ManageAcademicYearToolStripMenuItem"
        Me.ManageAcademicYearToolStripMenuItem.Size = New System.Drawing.Size(220, 22)
        Me.ManageAcademicYearToolStripMenuItem.Text = "Manage Academic Year"
        '
        'ManageGradeOrYearLevelToolStripMenuItem
        '
        Me.ManageGradeOrYearLevelToolStripMenuItem.Name = "ManageGradeOrYearLevelToolStripMenuItem"
        Me.ManageGradeOrYearLevelToolStripMenuItem.Size = New System.Drawing.Size(220, 22)
        Me.ManageGradeOrYearLevelToolStripMenuItem.Text = "Manage Grade or Year Level"
        '
        'ManageSectionToolStripMenuItem
        '
        Me.ManageSectionToolStripMenuItem.Name = "ManageSectionToolStripMenuItem"
        Me.ManageSectionToolStripMenuItem.Size = New System.Drawing.Size(220, 22)
        Me.ManageSectionToolStripMenuItem.Text = "Manage Section"
        '
        'tsUser
        '
        Me.tsUser.Image = CType(resources.GetObject("tsUser.Image"), System.Drawing.Image)
        Me.tsUser.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsUser.Name = "tsUser"
        Me.tsUser.Size = New System.Drawing.Size(118, 54)
        Me.tsUser.Text = "Manage Users"
        '
        'tsAccounting
        '
        Me.tsAccounting.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.PaymentsToolStripMenuItem, Me.EncoderRateToolStripMenuItem, Me.StatementOfAccountsToolStripMenuItem})
        Me.tsAccounting.Image = CType(resources.GetObject("tsAccounting.Image"), System.Drawing.Image)
        Me.tsAccounting.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsAccounting.Name = "tsAccounting"
        Me.tsAccounting.Size = New System.Drawing.Size(118, 54)
        Me.tsAccounting.Text = "Accounting"
        '
        'PaymentsToolStripMenuItem
        '
        Me.PaymentsToolStripMenuItem.Name = "PaymentsToolStripMenuItem"
        Me.PaymentsToolStripMenuItem.Size = New System.Drawing.Size(195, 22)
        Me.PaymentsToolStripMenuItem.Text = "Payments"
        '
        'EncoderRateToolStripMenuItem
        '
        Me.EncoderRateToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.EssentialFeesToolStripMenuItem, Me.NonEssentialFeesToolStripMenuItem1})
        Me.EncoderRateToolStripMenuItem.Name = "EncoderRateToolStripMenuItem"
        Me.EncoderRateToolStripMenuItem.Size = New System.Drawing.Size(195, 22)
        Me.EncoderRateToolStripMenuItem.Text = "Encoder Rate"
        '
        'EssentialFeesToolStripMenuItem
        '
        Me.EssentialFeesToolStripMenuItem.Name = "EssentialFeesToolStripMenuItem"
        Me.EssentialFeesToolStripMenuItem.Size = New System.Drawing.Size(176, 22)
        Me.EssentialFeesToolStripMenuItem.Text = "Essential Fee's"
        '
        'NonEssentialFeesToolStripMenuItem1
        '
        Me.NonEssentialFeesToolStripMenuItem1.Name = "NonEssentialFeesToolStripMenuItem1"
        Me.NonEssentialFeesToolStripMenuItem1.Size = New System.Drawing.Size(176, 22)
        Me.NonEssentialFeesToolStripMenuItem1.Text = "Non-Essential Fee's"
        '
        'tsReport
        '
        Me.tsReport.Image = CType(resources.GetObject("tsReport.Image"), System.Drawing.Image)
        Me.tsReport.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tsReport.Name = "tsReport"
        Me.tsReport.Size = New System.Drawing.Size(118, 54)
        Me.tsReport.Text = "Report"
        '
        'tslogin
        '
        Me.tslogin.Image = Global.EnrolmentBillingSystem.My.Resources.Resources.login
        Me.tslogin.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.tslogin.Name = "tslogin"
        Me.tslogin.Size = New System.Drawing.Size(118, 54)
        Me.tslogin.Text = "Login"
        '
        'StatementOfAccountsToolStripMenuItem
        '
        Me.StatementOfAccountsToolStripMenuItem.Name = "StatementOfAccountsToolStripMenuItem"
        Me.StatementOfAccountsToolStripMenuItem.Size = New System.Drawing.Size(195, 22)
        Me.StatementOfAccountsToolStripMenuItem.Text = "Statement of Accounts"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.AppWorkspace
        Me.ClientSize = New System.Drawing.Size(1017, 599)
        Me.Controls.Add(Me.ToolStrip1)
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Enrollment and Billing System | Main Form"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        Me.ToolStrip1.ResumeLayout(False)
        Me.ToolStrip1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents ToolStrip1 As System.Windows.Forms.ToolStrip
    Friend WithEvents tsStudent As System.Windows.Forms.ToolStripDropDownButton
    Friend WithEvents AddNewStudentToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ListOfStudentToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsSettings As System.Windows.Forms.ToolStripDropDownButton
    Friend WithEvents ManageAcademicYearToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ManageGradeOrYearLevelToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ManageSectionToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsUser As System.Windows.Forms.ToolStripButton
    Friend WithEvents tsReport As System.Windows.Forms.ToolStripButton
    Friend WithEvents tsSubject As System.Windows.Forms.ToolStripDropDownButton
    Friend WithEvents AddNewSubjectToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ListOfSubjectsToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tslogin As System.Windows.Forms.ToolStripButton
    Friend WithEvents tsEnrollment As System.Windows.Forms.ToolStripDropDownButton
    Friend WithEvents EnrollStudentToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ListOfEnrolledStudentsToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents tsAccounting As ToolStripDropDownButton
    Friend WithEvents PaymentsToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents EncoderRateToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents EssentialFeesToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents NonEssentialFeesToolStripMenuItem1 As ToolStripMenuItem
    Friend WithEvents PrintStudentSubjectsToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents StatementOfAccountsToolStripMenuItem As ToolStripMenuItem
End Class
