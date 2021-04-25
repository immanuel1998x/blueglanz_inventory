#tag Class
Protected Class MyPDF
Inherits DynaPDFMBS
	#tag Method, Flags = &h0
		Sub Constructor(data As JSONItem, IsCustomer As Boolean = False)
		  mData = data
		  mPDF = New DynaPDFMBS
		  mPDF.SetLicenseKey("Pro") // For this example you can use a Starter, Lite, Pro or Enterprise License
		  
		  Call mPDF.SetFont("Arial", MyPDF.kfsNone, 20.0, True, MyPDF.kcpUnicode)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenerateRentalsModalPDF()
		  
		  Var outfile As FolderItem = SpecialFolder.Documents.Child("Blueglanz")
		  
		  If outfile.Exists Then
		    outfile = outfile.Child("Sales-Documents")
		    If Not outfile.Exists Then
		      outfile.CreateFolder
		    End If
		  Else
		    outfile.CreateFolder
		    outfile = outfile.Child("Sales-Documents")
		    outfile.CreateFolder
		  End If
		  
		  Var dateTime As String = DateTime.Now.SQLDateTime
		  dateTime = StrReplace(" ", "-", dateTime)
		  dateTime = StrReplace(":", "-", dateTime)
		  
		  outfile = outfile.Child(dateTime + "-sales-report.pdf")
		  
		  Call mPDF.CreateNewPDF(outfile)
		  Call mPDF.SetDocInfo(mPDF.kdiCreator, kCreator)
		  Call mPDF.SetDocInfo(mPDF.kdiTitle, "Blueglanz's Rentals Report" + "-" + dateTime)
		  
		  Call mPDF.SetPageCoords mPDF.kpcTopDown
		  
		  Call mPDF.Append
		  call mpdf.SetOrientationEx(90)
		  
		  'call mPDF.WriteFTextEx(   20.0, 20, 200, -1, mpdf.ktaLeft, "Your Content")
		  'Logo
		  Var LogoWidth As Integer = 85
		  Var LogoHeight As Integer = 85
		  
		  Var posX As Integer = (mPDF.GetPageWidth / 2) - (LogoWidth / 2) '20
		  Var y As Integer = 24
		  
		  // add image to mPDF
		  Var logo As Picture = Image1
		  If mPDF.InsertPicture(logo, posX, y, LogoWidth, LogoHeight) < 0 Then
		    System.DebugLog("Failed to insert image.")
		  End If
		  
		  y = y + LogoHeight + 16
		  
		  'Sales Report
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 24.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(50, y, mPDF.GetPageWidth-100, mPDF.GetPageHeight-100)
		  
		  Call mPDF.WriteFText(mpdf.ktaLeft, "Rentals Report")
		  
		  y = y + 60
		  
		  'Address
		  Var table As DynaPDFTableMBS
		  Var rowNum As Integer = 0
		  
		  table = mPDF.CreateTable(4, 1, 180, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Blue Glanz Wedding & Events Boutique")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "6500 Tacloban City, Philippines")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "0917-550-0366")
		  
		  // Draw the table and delete it
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  'Date
		  table = mPDF.CreateTable(4, 1, 125, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Date:")
		  
		  Var from As String
		  If mData.HasName("from") Then
		    from = mData.Value("from")
		  End If
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "From: " + from)
		  
		  Var toDate As String
		  If mData.HasName("to") Then
		    toDate = mData.Value("to")
		  End If
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "To: " + toDate)
		  
		  // Draw the table and delete it
		  Call table.DrawTable((mPDF.GetPageWidth - table.GetTableWidth) - 55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 80
		  
		  'Sales Table
		  rowNum = 0
		  table = mPDF.CreateTable(20, 3, 800.0, 10.0)
		  Call table.SetColWidth(0, 15.0, False)
		  Call table.SetColWidth(1, 100.0, False)
		  Call table.SetColWidth(2, 150.0, False)
		  
		  'Call table.SetColWidth(8, 70.0, False)
		  
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  // Header row
		  rowNum = table.AddRow
		  Call table.SetBorderWidth(rowNum, kAllColumns, 0.0, 0.0, 0.0, 0.2)
		  Call table.SetFont(rowNum, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  Call table.SetFontSize(rowNum, kAllColumns, 12.5)
		  
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, "#")
		  Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, "Transaction Date") 
		  Call table.SetCellText(rowNum, 2, mPDF.ktaLeft, table.kcoLeft, "Transaction Amount") 
		  Var reports As JSONItem
		  If mData.HasName("reports") Then
		    reports = mData.Value("reports")
		  End If
		  
		  'MessageBox(reports.ToString)
		  Var total As Double
		  Var num As Integer = 0
		  For i As Integer = 0 To reports.Count - 1
		    Var report As JSONItem = reports.ChildAt(i)
		    
		    rowNum = table.AddRow
		    
		    Call table.SetFontSize(rowNum, kAllColumns, 12)
		    Call table.SetCellPadding(rowNum, kAllColumns, 0.0, 12.0, 0.0, 12.0)
		    
		    Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, Str(i + 1))
		    
		    
		    // Transaction Date
		    Var dateReturned As String = "N/A"
		    If report.HasName("transaction_date") Then
		      Var explodedDateTime() As String = Explode(" ", report.Value("transaction_date"))
		      If explodedDateTime.Count >= 2 Then
		        dateReturned = explodedDateTime(0)
		      End If
		    End If
		    
		    Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, dateReturned)
		    
		    
		    
		    //Total Amount
		    Var totalAmount As Double = 0.0
		    If report.HasName("amount") Then
		      totalAmount = report.Value("amount").DoubleValue
		      total = total + totalAmount
		    End If
		    
		    Call table.SetCellText(rowNum, 2,  mPDF.ktaLeft, table.kcoLeft, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		    
		    num = num + 1
		    
		    
		  Next
		  
		  // Draw the table in chunks filling page
		  Var pageCounter As Integer = 1
		  Do
		    If pageCounter = 1 Then
		      y = y + table.DrawTable( 55.0, y, (mPDF.GetPageHeight - y) - 55)
		    Else
		      y = y + table.DrawTable( 55.0, y, mPDF.GetPageHeight - 100)
		    End If
		    
		    // draw footer
		    If table.HaveMore Then
		      y = 40
		      Call mPDF.EndPage
		      Call mPDF.Append
		      call mpdf.SetOrientationEx(90)
		    Else
		      Exit
		    End If
		    
		    pageCounter = pageCounter + 1
		  Loop
		  
		  y = y + 16
		  
		  'Total
		  rowNum = 0
		  
		  table = mPDF.CreateTable(1, 1, 180, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFont(rowNum, 0, "Arial", mPDF.kfsBold, True, mPDF.kcpUnicode)
		  Call table.SetFontSize(rowNum, 0, 14)
		  
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "TOTAL: " + GetCurrency + " " + Format(total, "###,##0.00"))
		  'Call mPDF.WriteFText(mpdf.ktaLeft, "Sales Report")
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 40
		  
		  Var width As Integer = 200
		  'Signed
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(55.5, y, width, 100)
		  Call mPDF.WriteFText(mPDF.ktaLeft, "Signed By:__________________")
		  
		  width = 210
		  'Submitted
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect((mPDF.GetPageWidth - width) - 55, y, width, 100)
		  
		  Call mPDF.WriteFText(mPDF.ktaLeft, "Submitted By:__________________")
		  
		  Call mPDF.EndPage
		  
		  'Footer
		  Var pageCount As Integer = mPDF.GetPageCount
		  For x As Integer = 0 To PageCount
		    Call mPDF.EditPage(x)
		    Call mPDF.SetPageCoords(mPDF.kpcBottomUp)
		    Call mPDF.SetFont "Arial",mPDF.kfsNone, 11.8,False,mPDF.kcp1252
		    
		    y = 1*45
		    
		    Var px As Double = (mPDF.GetPageWidth / 2) - (100/ 2)
		    
		    call mpdf.SetOrientationEx(90)
		    call mpdf.WriteFTextEx(   20.0, 20, 200, -1, mpdf.ktaLeft, "Page " + Str(x) + " of " + pageCount.ToString)
		    'Call mPDF.WriteText(px, y, "Page " + Str(x) + " of " + pageCount.ToString)
		    Call mPDF.EndPage
		  Next 
		  
		  // No error?
		  If mPDF.HaveOpenDoc Then
		    If Not mPDF.OpenOutputFile(outfile) Then
		      MessageBox("Can't write file to " + outfile.NativePath)
		      Quit
		    End If
		  End If
		  
		  Call mPDF.CloseFile
		  outfile.Launch
		  
		  'Call table.SetCellText(rowNum, 4, mPDF.ktaCenter, table.kcoCenter, "INV2020-0" + Str(i + 1))
		  
		  
		  '//Sold
		  'Var sold As string 
		  'If report.HasName("sold") Then
		  'sold = report.Value("sold")
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 5, mPDF.ktaCenter, table.kcoCenter,sold)
		  '
		  '//Rented
		  'Var rented As string 
		  'If report.HasName("rented") Then
		  'rented = report.Value("rented")
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 6, mPDF.ktaCenter, table.kcoCenter,rented)
		  
		  
		  
		  
		  'Client Name    Contact No.    Description    Quantity    Sold    Rented    Expected Date of Return    Deposit    Amount
		  
		  
		  
		  '//Date Returned
		  'Var dateReturned As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 7, mPDF.ktaRight, table.kcoRight, dateReturned)
		  
		  
		  '//Deposit
		  'Var deposit As Currency = 0.0
		  'var totalDeposit As Currency 
		  'If report.HasName("deposit") Then
		  'deposit = report.Value("deposit").DoubleValue
		  'deposit = totalDeposit + deposit
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 8, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(deposit, "###,##0.00"))
		  
		  
		  
		  
		  '//Date Returned
		  'Var dateReturned2 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 10, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned3 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 11, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned4 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 12, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned5 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 13, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  
		  
		  'Var totalPayment9 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment9 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment9
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 7, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment9, "###,##0.00"))
		  '
		  '//Total Payment
		  'Var totalPayment8 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment8 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment8
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 8, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment8, "###,##0.00"))
		  '
		  '
		  '
		  'Var totalPayment7 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment7 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment7
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 9, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment7, "###,##0.00"))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenerateReport()
		  Var outfile As FolderItem = SpecialFolder.Documents.Child("Blueglanz")
		  
		  If outfile.Exists Then
		    outfile = outfile.Child("Sales-Documents")
		    If Not outfile.Exists Then
		      outfile.CreateFolder
		    End If
		  Else
		    outfile.CreateFolder
		    outfile = outfile.Child("Sales-Documents")
		    outfile.CreateFolder
		  End If
		  
		  Var dateTime As String = DateTime.Now.SQLDateTime
		  dateTime = StrReplace(" ", "-", dateTime)
		  dateTime = StrReplace(":", "-", dateTime)
		  
		  outfile = outfile.Child(dateTime + "-sales-report.pdf")
		  
		  Call mPDF.CreateNewPDF(outfile)
		  Call mPDF.SetDocInfo(mPDF.kdiCreator, kCreator)
		  Call mPDF.SetDocInfo(mPDF.kdiTitle, "Blueglanz's Sales Report" + "-" + dateTime)
		  
		  Call mPDF.SetPageCoords mPDF.kpcTopDown
		  Call mPDF.Append
		  
		  'Logo
		  Var LogoWidth As Integer = 85
		  Var LogoHeight As Integer = 85
		  
		  Var posX As Integer = (mPDF.GetPageWidth / 2) - (LogoWidth / 2) '20
		  Var y As Integer = 24
		  
		  // add image to mPDF
		  Var logo As Picture = Image1
		  If mPDF.InsertPicture(logo, posX, y, LogoWidth, LogoHeight) < 0 Then
		    System.DebugLog("Failed to insert image.")
		  End If
		  
		  y = y + LogoHeight + 16
		  
		  'Sales Report
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 24.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(50, y, mPDF.GetPageWidth-100, mPDF.GetPageHeight-100)
		  Call mPDF.WriteFText(mPDF.ktaCenter, "Renting Sales Report")
		  
		  y = y + 60
		  
		  'Address
		  Var table As DynaPDFTableMBS
		  Var rowNum As Integer = 0
		  
		  table = mPDF.CreateTable(4, 1, 180, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Shydan's Beach Resort and Spa")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "6505 Dulag, Leyte, Philippines")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "09973288203")
		  
		  // Draw the table and delete it
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  'Date
		  table = mPDF.CreateTable(4, 1, 125, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Date:")
		  
		  Var from As String
		  If mData.HasName("from") Then
		    from = mData.Value("from")
		  End If
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "From: " + from)
		  
		  Var toDate As String
		  If mData.HasName("to") Then
		    toDate = mData.Value("to")
		  End If
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "To: " + toDate)
		  
		  // Draw the table and delete it
		  Call table.DrawTable((mPDF.GetPageWidth - table.GetTableWidth) - 55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 80
		  
		  'Sales Table
		  rowNum = 0
		  table = mPDF.CreateTable(20, 9, 485.0, 10.0)
		  Call table.SetColWidth(0, 20.8, False)
		  Call table.SetColWidth(1, 63.8, False)
		  Call table.SetColWidth(2, 53.8, False)
		  Call table.SetColWidth(3, 53.8, False)
		  Call table.SetColWidth(4, 53.8, False)
		  Call table.SetColWidth(5, 63.8, False)
		  Call table.SetColWidth(6, 63.8, False)
		  Call table.SetColWidth(7, 53.8, False)
		  Call table.SetColWidth(8, 53.8, False)
		  
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  // Header row
		  rowNum = table.AddRow
		  Call table.SetBorderWidth(rowNum, kAllColumns, 0.0, 0.0, 0.0, 0.2)
		  Call table.SetFont(rowNum, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  Call table.SetFontSize(rowNum, kAllColumns, 10.5)
		  
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, "#")
		  Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, "Date")
		  Call table.SetCellText(rowNum, 2, mPDF.ktaCenter, table.kcoCenter, "No. Of Customers")
		  Call table.SetCellText(rowNum, 3, mPDF.ktaCenter, table.kcoCenter, "Entrance Fee")
		  Call table.SetCellText(rowNum, 4, mPDF.ktaCenter, table.kcoCenter, "Unit")
		  Call table.SetCellText(rowNum, 5, mPDF.ktaCenter, table.kcoCenter, "Rate")
		  Call table.SetCellText(rowNum, 6, mPDF.ktaCenter, table.kcoCenter, "Total Amount")
		  Call table.SetCellText(rowNum, 7, mPDF.ktaCenter, table.kcoCenter, "OR No.")
		  Call table.SetCellText(rowNum, 8, mPDF.ktaRight, table.kcoRight, "WSA Supervisor")
		  
		  
		  Var reports As JSONItem
		  If mData.HasName("reports") Then
		    reports = mData.Value("reports")
		  End If
		  
		  Var total As Double
		  Var num As Integer = 0
		  For i As Integer = 0 To reports.Count - 1
		    Var report As JSONItem = reports.ChildAt(i)
		    
		    rowNum = table.AddRow
		    
		    Call table.SetFontSize(rowNum, kAllColumns, 10.5)
		    Call table.SetCellPadding(rowNum, kAllColumns, 0.0, 8.0, 0.0, 8.0)
		    
		    Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, Str(i + 1))
		    'break
		    Var client_name As String 
		    if report.HasName("client_name") Then
		      client_name = DecodeURLComponent(report.Value("client_name"))
		    End If
		    Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, client_name)
		    
		    
		    
		    Var client_name2 As String 
		    if report.HasName("client_name") Then
		      client_name2 = DecodeURLComponent(report.Value("client_name"))
		    End If
		    Call table.SetCellText(rowNum, 2, mPDF.ktaCenter, table.kcoCenter, client_name2)
		    'Var client_name As String = "N/A"
		    'If report.HasName("client_name") Then
		    'Var explodedDateTime() As String = Explode(" ", report.Value("client_name"))
		    '
		    'If explodedDateTime.Count = 2 Then
		    'report_date = explodedDateTime(0)
		    'End If
		    'End If
		    '
		    'Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, report_date)
		    
		    
		    
		    
		    
		    Var entrance_fee As integer 
		    if report.HasName("total_entrance_fee") Then
		      entrance_fee = (report.Value("total_entrance_fee"))
		    End If
		    
		    Call table.SetCellText(rowNum, 3, mPDF.ktaCenter, table.kcoCenter, entrance_fee.ToString)
		    
		    
		    Var unit As String 
		    if report.HasName("unit") Then
		      unit = DecodeURLComponent(report.Value("unit"))
		    End If
		    
		    Call table.SetCellText(rowNum, 4, mPDF.ktaCenter, table.kcoCenter, unit)
		    
		    
		    Var unit_rate As Double 
		    Var str_unitRate As String = "N/A"
		    if report.HasName("unit_rate") Then
		      unit_rate = report.Value("unit_rate").DoubleValue
		      str_unitRate = GetCurrency + " " + Format(unit_rate, "###,##0.00")
		      
		    End If
		    
		    Call table.SetCellText(rowNum, 5, mPDF.ktaCenter, table.kcoCenter, str_unitRate)
		    
		    
		    
		    Var totalPayment As Double = 0.0
		    If report.HasName("total_price") Then
		      totalPayment = report.Value("total_price").DoubleValue
		      total = total + totalPayment
		    End If
		    
		    Call table.SetCellText(rowNum, 6, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment, "###,##0.00"))
		    
		    Call table.SetCellText(rowNum, 7, mPDF.ktaCenter, table.kcoCenter, "OR2020-0" + Str(i + 1))
		    
		    'Var datePaid As String = "N/A"
		    'If report.HasName("date_paid") Then
		    'Var explodedDateTime() As String = Explode(" ", report.Value("date_paid"))
		    'If explodedDateTime.Count >= 2 Then
		    'datePaid = explodedDateTime(0)
		    'End If
		    'End If
		    '
		    'Call table.SetCellText(rowNum, 4, mPDF.ktaRight, table.kcoRight, datePaid)
		    
		    num = num + 1
		  Next
		  
		  // Draw the table in chunks filling page
		  Var pageCounter As Integer = 1
		  Do
		    If pageCounter = 1 Then
		      y = y + table.DrawTable( 55.0, y, (mPDF.GetPageHeight - y) - 55)
		    Else
		      y = y + table.DrawTable( 55.0, y, mPDF.GetPageHeight - 100)
		    End If
		    
		    // draw footer
		    If table.HaveMore Then
		      y = 40
		      Call mPDF.EndPage
		      Call mPDF.Append
		    Else
		      Exit
		    End If
		    
		    pageCounter = pageCounter + 1
		  Loop
		  
		  y = y + 16
		  
		  'Total
		  rowNum = 0
		  
		  table = mPDF.CreateTable(1, 1, 180, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFont(rowNum, 0, "Arial", mPDF.kfsBold, True, mPDF.kcpUnicode)
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "TOTAL: " + GetCurrency + " " + Format(total, "###,##0.00"))
		  
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 40
		  
		  Var width As Integer = 200
		  'Signed
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(55.5, y, width, 100)
		  Call mPDF.WriteFText(mPDF.ktaLeft, "Signed By:__________________")
		  
		  width = 210
		  'Submitted
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect((mPDF.GetPageWidth - width) - 55, y, width, 100)
		  Call mPDF.WriteFText(mPDF.ktaLeft, "Submitted By:__________________")
		  
		  Call mPDF.EndPage
		  
		  'Footer
		  Var pageCount As Integer = mPDF.GetPageCount
		  For x As Integer = 0 To PageCount
		    Call mPDF.EditPage(x)
		    Call mPDF.SetPageCoords(mPDF.kpcBottomUp)
		    Call mPDF.SetFont "Arial",mPDF.kfsNone, 11.8,False,mPDF.kcp1252
		    
		    y = 1*45
		    
		    Var px As Double = (mPDF.GetPageWidth / 2) - (100/ 2)
		    Call mPDF.WriteText(px, y, "Page " + Str(x) + " of " + pageCount.ToString)
		    Call mPDF.EndPage
		  Next 
		  
		  // no error?
		  If mPDF.HaveOpenDoc Then
		    If Not mPDF.OpenOutputFile(outfile) Then
		      MessageBox("Can't write file to " + outfile.NativePath)
		      Quit
		    End If
		  End If
		  
		  Call mPDF.CloseFile
		  outfile.Launch
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenerateSalesModalPDF()
		  
		  Var outfile As FolderItem = SpecialFolder.Documents.Child("Blueglanz")
		  
		  If outfile.Exists Then
		    outfile = outfile.Child("Sales-Documents")
		    If Not outfile.Exists Then
		      outfile.CreateFolder
		    End If
		  Else
		    outfile.CreateFolder
		    outfile = outfile.Child("Sales-Documents")
		    outfile.CreateFolder
		  End If
		  
		  Var dateTime As String = DateTime.Now.SQLDateTime
		  dateTime = StrReplace(" ", "-", dateTime)
		  dateTime = StrReplace(":", "-", dateTime)
		  
		  outfile = outfile.Child(dateTime + "-sales-report.pdf")
		  
		  Call mPDF.CreateNewPDF(outfile)
		  Call mPDF.SetDocInfo(mPDF.kdiCreator, kCreator)
		  Call mPDF.SetDocInfo(mPDF.kdiTitle, "Blueglanz's Sales Report" + "-" + dateTime)
		  
		  Call mPDF.SetPageCoords mPDF.kpcTopDown
		  
		  Call mPDF.Append
		  call mpdf.SetOrientationEx(90)
		  
		  'call mPDF.WriteFTextEx(   20.0, 20, 200, -1, mpdf.ktaLeft, "Your Content")
		  'Logo
		  Var LogoWidth As Integer = 85
		  Var LogoHeight As Integer = 85
		  
		  Var posX As Integer = (mPDF.GetPageWidth / 2) - (LogoWidth / 2) '20
		  Var y As Integer = 24
		  
		  // add image to mPDF
		  Var logo As Picture = Image1
		  If mPDF.InsertPicture(logo, posX, y, LogoWidth, LogoHeight) < 0 Then
		    System.DebugLog("Failed to insert image.")
		  End If
		  
		  y = y + LogoHeight + 16
		  
		  'Sales Report
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 24.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(50, y, mPDF.GetPageWidth-100, mPDF.GetPageHeight-100)
		  
		  Call mPDF.WriteFText(mpdf.ktaLeft, "Sales Report")
		  
		  y = y + 60
		  
		  'Address
		  Var table As DynaPDFTableMBS
		  Var rowNum As Integer = 0
		  
		  table = mPDF.CreateTable(4, 1, 180, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Blue Glanz Wedding & Events Boutique")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "6500 Tacloban City, Philippines")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "0917-550-0366")
		  
		  // Draw the table and delete it
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  'Date
		  table = mPDF.CreateTable(4, 1, 125, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Date:")
		  
		  Var from As String
		  If mData.HasName("from") Then
		    from = mData.Value("from")
		  End If
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "From: " + from)
		  
		  Var toDate As String
		  If mData.HasName("to") Then
		    toDate = mData.Value("to")
		  End If
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "To: " + toDate)
		  
		  // Draw the table and delete it
		  Call table.DrawTable((mPDF.GetPageWidth - table.GetTableWidth) - 55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 80
		  
		  'Sales Table
		  rowNum = 0
		  table = mPDF.CreateTable(20, 3, 800.0, 10.0)
		  Call table.SetColWidth(0, 15.0, False)
		  Call table.SetColWidth(1, 100.0, False)
		  Call table.SetColWidth(2, 100.0, False)
		  
		  'Call table.SetColWidth(8, 70.0, False)
		  
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  // Header row
		  rowNum = table.AddRow
		  Call table.SetBorderWidth(rowNum, kAllColumns, 0.0, 0.0, 0.0, 0.2)
		  Call table.SetFont(rowNum, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  Call table.SetFontSize(rowNum, kAllColumns, 12.5)
		  
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, "#")
		  Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, "Transaction Date") 
		  Call table.SetCellText(rowNum, 2, mPDF.ktaLeft, table.kcoLeft, "Transaction Amount") 
		  Var reports As JSONItem
		  If mData.HasName("reports") Then
		    reports = mData.Value("reports")
		  End If
		  
		  'MessageBox(reports.ToString)
		  Var total As Double
		  Var num As Integer = 0
		  For i As Integer = 0 To reports.Count - 1
		    Var report As JSONItem = reports.ChildAt(i)
		    
		    rowNum = table.AddRow
		    
		    Call table.SetFontSize(rowNum, kAllColumns, 12)
		    Call table.SetCellPadding(rowNum, kAllColumns, 0.0, 12.0, 0.0, 12.0)
		    
		    Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, Str(i + 1))
		    
		    
		    // Transaction Date
		    Var dateReturned As String = "N/A"
		    If report.HasName("transaction_date") Then
		      Var explodedDateTime() As String = Explode(" ", report.Value("transaction_date"))
		      If explodedDateTime.Count >= 2 Then
		        dateReturned = explodedDateTime(0)
		      End If
		    End If
		    
		    Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, dateReturned)
		    
		    
		    
		    //Total Amount
		    Var totalAmount As Double = 0.0
		    If report.HasName("amount") Then
		      totalAmount = report.Value("amount").DoubleValue
		      total = total + totalAmount
		    End If
		    
		    Call table.SetCellText(rowNum, 2,  mPDF.ktaLeft, table.kcoLeft, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		    
		    num = num + 1
		    
		    
		  Next
		  
		  // Draw the table in chunks filling page
		  Var pageCounter As Integer = 1
		  Do
		    If pageCounter = 1 Then
		      y = y + table.DrawTable( 55.0, y, (mPDF.GetPageHeight - y) - 55)
		    Else
		      y = y + table.DrawTable( 55.0, y, mPDF.GetPageHeight - 100)
		    End If
		    
		    // draw footer
		    If table.HaveMore Then
		      y = 40
		      Call mPDF.EndPage
		      Call mPDF.Append
		      call mpdf.SetOrientationEx(90)
		    Else
		      Exit
		    End If
		    
		    pageCounter = pageCounter + 1
		  Loop
		  
		  y = y + 16
		  
		  'Total
		  rowNum = 0
		  
		  table = mPDF.CreateTable(1, 1, 180, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFont(rowNum, 0, "Arial", mPDF.kfsBold, True, mPDF.kcpUnicode)
		  Call table.SetFontSize(rowNum, 0, 14)
		  
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "TOTAL: " + GetCurrency + " " + Format(total, "###,##0.00"))
		  'Call mPDF.WriteFText(mpdf.ktaLeft, "Sales Report")
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 40
		  
		  Var width As Integer = 200
		  'Signed
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(55.5, y, width, 100)
		  Call mPDF.WriteFText(mPDF.ktaLeft, "Signed By:__________________")
		  
		  width = 210
		  'Submitted
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect((mPDF.GetPageWidth - width) - 55, y, width, 100)
		  
		  Call mPDF.WriteFText(mPDF.ktaLeft, "Submitted By:__________________")
		  
		  Call mPDF.EndPage
		  
		  'Footer
		  Var pageCount As Integer = mPDF.GetPageCount
		  For x As Integer = 0 To PageCount
		    Call mPDF.EditPage(x)
		    Call mPDF.SetPageCoords(mPDF.kpcBottomUp)
		    Call mPDF.SetFont "Arial",mPDF.kfsNone, 11.8,False,mPDF.kcp1252
		    
		    y = 1*45
		    
		    Var px As Double = (mPDF.GetPageWidth / 2) - (100/ 2)
		    
		    call mpdf.SetOrientationEx(90)
		    call mpdf.WriteFTextEx(   20.0, 20, 200, -1, mpdf.ktaLeft, "Page " + Str(x) + " of " + pageCount.ToString)
		    'Call mPDF.WriteText(px, y, "Page " + Str(x) + " of " + pageCount.ToString)
		    Call mPDF.EndPage
		  Next 
		  
		  // No error?
		  If mPDF.HaveOpenDoc Then
		    If Not mPDF.OpenOutputFile(outfile) Then
		      MessageBox("Can't write file to " + outfile.NativePath)
		      Quit
		    End If
		  End If
		  
		  Call mPDF.CloseFile
		  outfile.Launch
		  
		  'Call table.SetCellText(rowNum, 4, mPDF.ktaCenter, table.kcoCenter, "INV2020-0" + Str(i + 1))
		  
		  
		  '//Sold
		  'Var sold As string 
		  'If report.HasName("sold") Then
		  'sold = report.Value("sold")
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 5, mPDF.ktaCenter, table.kcoCenter,sold)
		  '
		  '//Rented
		  'Var rented As string 
		  'If report.HasName("rented") Then
		  'rented = report.Value("rented")
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 6, mPDF.ktaCenter, table.kcoCenter,rented)
		  
		  
		  
		  
		  'Client Name    Contact No.    Description    Quantity    Sold    Rented    Expected Date of Return    Deposit    Amount
		  
		  
		  
		  '//Date Returned
		  'Var dateReturned As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 7, mPDF.ktaRight, table.kcoRight, dateReturned)
		  
		  
		  '//Deposit
		  'Var deposit As Currency = 0.0
		  'var totalDeposit As Currency 
		  'If report.HasName("deposit") Then
		  'deposit = report.Value("deposit").DoubleValue
		  'deposit = totalDeposit + deposit
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 8, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(deposit, "###,##0.00"))
		  
		  
		  
		  
		  '//Date Returned
		  'Var dateReturned2 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 10, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned3 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 11, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned4 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 12, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned5 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 13, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  
		  
		  'Var totalPayment9 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment9 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment9
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 7, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment9, "###,##0.00"))
		  '
		  '//Total Payment
		  'Var totalPayment8 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment8 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment8
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 8, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment8, "###,##0.00"))
		  '
		  '
		  '
		  'Var totalPayment7 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment7 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment7
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 9, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment7, "###,##0.00"))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenerateSalesReceipt()
		  
		  Var outfile As FolderItem = SpecialFolder.Documents.Child("Blueglanz")
		  
		  If outfile.Exists Then
		    outfile = outfile.Child("Sales-Documents")
		    If Not outfile.Exists Then
		      outfile.CreateFolder
		    End If
		  Else
		    outfile.CreateFolder
		    outfile = outfile.Child("Sales-Documents")
		    outfile.CreateFolder
		  End If
		  
		  Var dateTime As String = DateTime.Now.SQLDateTime
		  dateTime = StrReplace(" ", "-", dateTime)
		  dateTime = StrReplace(":", "-", dateTime)
		  
		  outfile = outfile.Child(dateTime + "-sales-receipt.pdf")
		  
		  Call mPDF.CreateNewPDF(outfile)
		  Call mPDF.SetDocInfo(mPDF.kdiCreator, kCreator)
		  Call mPDF.SetDocInfo(mPDF.kdiTitle, " Unofficial Receipt" + "-" + dateTime)
		  
		  Call mPDF.SetPageCoords mPDF.kpcTopDown
		  
		  Call mPDF.Append
		  call mpdf.SetOrientationEx(90)
		  
		  'call mPDF.WriteFTextEx(   20.0, 20, 200, -1, mpdf.ktaLeft, "Your Content")
		  'Logo
		  Var LogoWidth As Integer = 85
		  Var LogoHeight As Integer = 85
		  
		  Var posX As Integer = (mPDF.GetPageWidth / 2) - (LogoWidth / 2) '20
		  Var y As Integer = 24
		  
		  // add image to mPDF
		  Var logo As Picture = Image1
		  If mPDF.InsertPicture(logo, posX, y, LogoWidth, LogoHeight) < 0 Then
		    System.DebugLog("Failed to insert image.")
		  End If
		  
		  y = y + LogoHeight + 16
		  
		  'Sales Report
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 24.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(50, y, mPDF.GetPageWidth-100, mPDF.GetPageHeight-100)
		  
		  Call mPDF.WriteFText(mpdf.ktaLeft, "Unofficial Receipt")
		  
		  y = y + 60
		  
		  'Address
		  Var table As DynaPDFTableMBS
		  Var rowNum As Integer = 0
		  
		  table = mPDF.CreateTable(4, 1, 180, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Blue Glanz Wedding & Events Boutique")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "6500 Tacloban City, Philippines")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "0917-550-0366")
		  
		  // Draw the table and delete it
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  'Date
		  table = mPDF.CreateTable(4, 1, 125, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Date:")
		  
		  'Var from As String
		  'If mData.HasName("from") Then
		  'from = mData.Value("from")
		  'End If
		  '
		  'rowNum = table.AddRow
		  'Call table.SetFontSize(rowNum, 0, 12)
		  'Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "From: " + from)
		  '
		  'Var toDate As String
		  'If mData.HasName("to") Then
		  'toDate = mData.Value("to")
		  'End If
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  'Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "To: " + toDate)
		  
		  // Draw the table and delete it
		  Call table.DrawTable((mPDF.GetPageWidth - table.GetTableWidth) - 55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 80
		  
		  'Sales Table
		  rowNum = 0
		  table = mPDF.CreateTable(20, 3, 800.0, 10.0)
		  Call table.SetColWidth(0, 600.0, False)
		  Call table.SetColWidth(1, 100.0, False)
		  Call table.SetColWidth(2, 100.0, False)
		  
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  // Header row
		  rowNum = table.AddRow
		  Call table.SetBorderWidth(rowNum, kAllColumns, 0.0, 0.0, 0.0, 0.2)
		  Call table.SetFont(rowNum, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  Call table.SetFontSize(rowNum, kAllColumns, 12.5)
		  
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, "Items")
		  Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, "Qty") 
		  Call table.SetCellText(rowNum, 2, mPDF.ktaCenter, table.kcoCenter, " Price")
		  
		  
		  Var reports As JSONItem
		  If mData.HasName("reports") Then
		    reports = mData.Value("reports")
		  End If
		  
		  'MessageBox(reports.ToString)
		  Var total As Double
		  Var num As Integer = 0
		  For i As Integer = 0 To reports.Count - 1
		    Var report As JSONItem = reports.ChildAt(i)
		    
		    rowNum = table.AddRow
		    
		    Call table.SetFontSize(rowNum, kAllColumns, 12)
		    Call table.SetCellPadding(rowNum, kAllColumns, 0.0, 12.0, 0.0, 12.0)
		    
		    'Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, Str(i + 1))
		    
		    
		    
		    
		    // Item Description
		    Var description As String = "N/A"
		    If report.HasName("description") Then
		      description = DecodeURLComponent(report.Value("description"))
		    End If
		    
		    Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, description)
		    
		    
		    
		    
		    
		    //Quantity
		    Var quantity As Integer 
		    If report.HasName("stock") Then
		      quantity = report.Value("stock")
		    End If
		    
		    
		    Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, quantity.ToString )
		    
		    
		    //Total Amount
		    Var total_unitprice As Double = 0.0
		    If report.HasName("total_unitprice") Then
		      'MessageBox(report.Value("total_unitprice"))
		      Var strTotalUnitPrice As String = report.Value("total_unitprice")
		      strTotalUnitPrice = strTotalUnitPrice.ReplaceAll("₱","").ReplaceAll(",","")
		      total_unitprice = val(strTotalUnitPrice)
		      
		      total = total + total_unitprice
		    End If
		    
		    Call table.SetCellText(rowNum, 2, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(total_unitprice, "###,##0.00"))
		    
		    num = num + 1
		    
		    
		  Next
		  
		  // Draw the table in chunks filling page
		  Var pageCounter As Integer = 1
		  Do
		    If pageCounter = 1 Then
		      y = y + table.DrawTable( 55.0, y, (mPDF.GetPageHeight - y) - 55)
		    Else
		      y = y + table.DrawTable( 55.0, y, mPDF.GetPageHeight - 100)
		    End If
		    
		    // draw footer
		    If table.HaveMore Then
		      y = 40
		      Call mPDF.EndPage
		      Call mPDF.Append
		      call mpdf.SetOrientationEx(90)
		    Else
		      Exit
		    End If
		    
		    pageCounter = pageCounter + 1
		  Loop
		  
		  y = y + 16
		  
		  'Total
		  rowNum = 0
		  
		  'Var width As Integer = 200
		  'Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  'Call mPDF.SetTextRect((mPDF.GetPageWidth - width) - 55, y, width, 100)
		  '
		  'Call mPDF.WriteFText(mPDF.ktaCenter, "----------------------------------")
		  
		  
		  
		  'table = mPDF.CreateTable(1, 3, 180, 20)
		  table = mPDF.CreateTable(20, 3, 800.0, 10.0)
		  Call table.SetColWidth(0, 400.0, False)
		  Call table.SetColWidth(1, 200.0, False)
		  Call table.SetColWidth(2, 150.0, False)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  
		  
		  
		  
		  rowNum = table.AddRow
		  //Set Font
		  Call table.SetFont(rowNum, 1, "Arial", mPDF.kfsNormal, True, mPDF.kcpUnicode)
		  Call table.SetFont(rowNum, 2, "Arial", mPDF.kfsBold, True, mPDF.kcpUnicode)
		  //Set FontSize
		  Call table.SetFontSize(rowNum, 1, 14)
		  Call table.SetFontSize(rowNum, 2, 14)
		  //Set Cell Text
		  Call table.SetCellText(rowNum, 1, mPDF.ktaLeft, table.kcoLeft, "SUBTOTAL:  " + GetCurrency + " " + Format(total, "###,##0.00   -"))
		  
		  Call table.SetCellText(rowNum, 2, mPDF.ktaLeft, table.kcoLeft, "TOTAL: " + GetCurrency + " " + Format(total, "###,##0.00"))
		  
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 40
		  
		  
		  ''Signed
		  'Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  'Call mPDF.SetTextRect(55.5, y, width, 100)
		  'Call mPDF.WriteFText(mPDF.ktaLeft, "Signed By:__________________")
		  '
		  'width = 210
		  ''Submitted
		  'Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  'Call mPDF.SetTextRect((mPDF.GetPageWidth - width) - 55, y, width, 100)
		  '
		  'Call mPDF.WriteFText(mPDF.ktaLeft, "Submitted By:__________________")
		  
		  Call mPDF.EndPage
		  
		  'Footer
		  Var pageCount As Integer = mPDF.GetPageCount
		  For x As Integer = 0 To PageCount
		    Call mPDF.EditPage(x)
		    Call mPDF.SetPageCoords(mPDF.kpcBottomUp)
		    Call mPDF.SetFont "Arial",mPDF.kfsNone, 11.8,False,mPDF.kcp1252
		    
		    y = 1*45
		    
		    Var px As Double = (mPDF.GetPageWidth / 2) - (100/ 2)
		    
		    call mpdf.SetOrientationEx(90)
		    call mpdf.WriteFTextEx(   20.0, 20, 200, -1, mpdf.ktaLeft, "Page " + Str(x) + " of " + pageCount.ToString)
		    'Call mPDF.WriteText(px, y, "Page " + Str(x) + " of " + pageCount.ToString)
		    Call mPDF.EndPage
		  Next 
		  
		  // No error?
		  If mPDF.HaveOpenDoc Then
		    If Not mPDF.OpenOutputFile(outfile) Then
		      MessageBox("Can't write file to " + outfile.NativePath)
		      Quit
		    End If
		  End If
		  
		  Call mPDF.CloseFile
		  outfile.Launch
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenerateSalesReport()
		  
		  Var outfile As FolderItem = SpecialFolder.Documents.Child("Blueglanz")
		  
		  If outfile.Exists Then
		    outfile = outfile.Child("Sales-Documents")
		    If Not outfile.Exists Then
		      outfile.CreateFolder
		    End If
		  Else
		    outfile.CreateFolder
		    outfile = outfile.Child("Sales-Documents")
		    outfile.CreateFolder
		  End If
		  
		  Var dateTime As String = DateTime.Now.SQLDateTime
		  dateTime = StrReplace(" ", "-", dateTime)
		  dateTime = StrReplace(":", "-", dateTime)
		  
		  outfile = outfile.Child(dateTime + "-sales-report.pdf")
		  
		  Call mPDF.CreateNewPDF(outfile)
		  Call mPDF.SetDocInfo(mPDF.kdiCreator, kCreator)
		  Call mPDF.SetDocInfo(mPDF.kdiTitle, "Blueglanz's Sales Report" + "-" + dateTime)
		  
		  Call mPDF.SetPageCoords mPDF.kpcTopDown
		  
		  Call mPDF.Append
		  call mpdf.SetOrientationEx(90)
		  
		  'call mPDF.WriteFTextEx(   20.0, 20, 200, -1, mpdf.ktaLeft, "Your Content")
		  'Logo
		  Var LogoWidth As Integer = 85
		  Var LogoHeight As Integer = 85
		  
		  Var posX As Integer = (mPDF.GetPageWidth / 2) - (LogoWidth / 2) '20
		  Var y As Integer = 24
		  
		  // add image to mPDF
		  Var logo As Picture = Image1
		  If mPDF.InsertPicture(logo, posX, y, LogoWidth, LogoHeight) < 0 Then
		    System.DebugLog("Failed to insert image.")
		  End If
		  
		  y = y + LogoHeight + 16
		  
		  'Sales Report
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 24.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(50, y, mPDF.GetPageWidth-100, mPDF.GetPageHeight-100)
		  
		  Call mPDF.WriteFText(mpdf.ktaLeft, "Sales Report")
		  
		  y = y + 60
		  
		  'Address
		  Var table As DynaPDFTableMBS
		  Var rowNum As Integer = 0
		  
		  table = mPDF.CreateTable(4, 1, 180, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Blue Glanz Wedding & Events Boutique")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "6500 Tacloban City, Philippines")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "0917-550-0366")
		  
		  // Draw the table and delete it
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  'Date
		  table = mPDF.CreateTable(4, 1, 125, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Date:")
		  
		  Var from As String
		  If mData.HasName("from") Then
		    from = mData.Value("from")
		  End If
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "From: " + from)
		  
		  Var toDate As String
		  If mData.HasName("to") Then
		    toDate = mData.Value("to")
		  End If
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "To: " + toDate)
		  
		  // Draw the table and delete it
		  Call table.DrawTable((mPDF.GetPageWidth - table.GetTableWidth) - 55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 80
		  
		  'Sales Table
		  rowNum = 0
		  table = mPDF.CreateTable(20, 8, 800.0, 10.0)
		  Call table.SetColWidth(0, 15.0, False)
		  Call table.SetColWidth(1, 80.0, False)
		  Call table.SetColWidth(2, 80.0, False)
		  Call table.SetColWidth(3, 100.0, False)
		  Call table.SetColWidth(4, 80.0, False)
		  Call table.SetColWidth(5, 100.0, False)
		  Call table.SetColWidth(6, 80.0, False) 
		  Call table.SetColWidth(7, 100.0, False)
		  'Call table.SetColWidth(8, 70.0, False)
		  
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  // Header row
		  rowNum = table.AddRow
		  Call table.SetBorderWidth(rowNum, kAllColumns, 0.0, 0.0, 0.0, 0.2)
		  Call table.SetFont(rowNum, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  Call table.SetFontSize(rowNum, kAllColumns, 12.5)
		  
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, "#")
		  Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, "Transaction Date") 
		  Call table.SetCellText(rowNum, 2, mPDF.ktaCenter, table.kcoCenter, " Transaction Type")
		  Call table.SetCellText(rowNum, 3, mPDF.ktaCenter, table.kcoCenter, "Client Name")
		  Call table.SetCellText(rowNum, 4, mPDF.ktaCenter, table.kcoCenter, "Contact No")
		  Call table.SetCellText(rowNum, 5, mPDF.ktaCenter, table.kcoCenter, "Description")
		  Call table.SetCellText(rowNum, 6, mPDF.ktaCenter, table.kcoCenter, " No. of Items")
		  Call table.SetCellText(rowNum, 7, mPDF.ktaLeft, table.kcoLeft, "Total Amount")
		  'Call table.SetCellText(rowNum, 7, mPDF.ktaCenter, table.kcoCenter, "Deposit")
		  Var reports As JSONItem
		  If mData.HasName("reports") Then
		    reports = mData.Value("reports")
		  End If
		  
		  'MessageBox(reports.ToString)
		  Var total As Double
		  Var num As Integer = 0
		  For i As Integer = 0 To reports.Count - 1
		    Var report As JSONItem = reports.ChildAt(i)
		    
		    rowNum = table.AddRow
		    
		    Call table.SetFontSize(rowNum, kAllColumns, 12)
		    Call table.SetCellPadding(rowNum, kAllColumns, 0.0, 12.0, 0.0, 12.0)
		    
		    Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, Str(i + 1))
		    
		    
		    // Transaction Date
		    Var dateReturned As String = "N/A"
		    If report.HasName("transaction_date") Then
		      Var explodedDateTime() As String = Explode(" ", report.Value("transaction_date"))
		      If explodedDateTime.Count >= 2 Then
		        dateReturned = explodedDateTime(0)
		      End If
		    End If
		    
		    Call table.SetCellText(rowNum, 1, mPDF.ktaRight, table.kcoRight, dateReturned)
		    
		    
		    // Transaction Type
		    Var Transaction_Type As String = "N/A"
		    If report.HasName("transaction_type") Then
		      Transaction_Type = DecodeURLComponent(report.Value("transaction_type"))
		    End If
		    
		    Call table.SetCellText(rowNum, 2, mPDF.ktaCenter, table.kcoLeft, Transaction_Type)
		    
		    
		    
		    // Client Name
		    Var ClientName As String = "N/A"
		    If report.HasName("client_name") Then
		      ClientName = DecodeURLComponent(report.Value("client_name"))
		    End If
		    
		    Call table.SetCellText(rowNum, 3, mPDF.ktaCenter, table.kcoLeft, ClientName)
		    
		    //Contact No.
		    Var contact_no As String = "N/A"
		    If report.HasName("contact_no") Then
		      contact_no = report.Value("contact_no")
		    End If
		    
		    Call table.SetCellText(rowNum, 4, mPDF.ktaCenter, table.kcoCenter, contact_no)
		    
		    //Description
		    Var description As string 
		    If report.HasName("description") Then
		      description = report.Value("description")
		    End If
		    
		    Call table.SetCellText(rowNum, 5, mPDF.ktaCenter, table.kcoCenter,DecodeURLComponent(description))
		    
		    
		    //Quantity
		    Var quantity As Integer 
		    If report.HasName("quantity") Then
		      quantity = report.Value("quantity")
		    End If
		    
		    
		    Call table.SetCellText(rowNum, 6, mPDF.ktaCenter, table.kcoCenter, quantity.ToString )
		    
		    
		    
		    //Total Amount
		    Var totalAmount As Double = 0.0
		    If report.HasName("amount") Then
		      totalAmount = report.Value("amount").DoubleValue
		      total = total + totalAmount
		    End If
		    
		    Call table.SetCellText(rowNum, 7, mPDF.ktaLeft, table.kcoLeft, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		    
		    num = num + 1
		    
		    
		  Next
		  
		  // Draw the table in chunks filling page
		  Var pageCounter As Integer = 1
		  Do
		    If pageCounter = 1 Then
		      y = y + table.DrawTable( 55.0, y, (mPDF.GetPageHeight - y) - 55)
		    Else
		      y = y + table.DrawTable( 55.0, y, mPDF.GetPageHeight - 100)
		    End If
		    
		    // draw footer
		    If table.HaveMore Then
		      y = 40
		      Call mPDF.EndPage
		      Call mPDF.Append
		      call mpdf.SetOrientationEx(90)
		    Else
		      Exit
		    End If
		    
		    pageCounter = pageCounter + 1
		  Loop
		  
		  y = y + 16
		  
		  'Total
		  rowNum = 0
		  
		  table = mPDF.CreateTable(1, 1, 180, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFont(rowNum, 0, "Arial", mPDF.kfsBold, True, mPDF.kcpUnicode)
		  Call table.SetFontSize(rowNum, 0, 14)
		  
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, "TOTAL: " + GetCurrency + " " + Format(total, "###,##0.00"))
		  'Call mPDF.WriteFText(mpdf.ktaLeft, "Sales Report")
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 40
		  
		  Var width As Integer = 200
		  'Signed
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(55.5, y, width, 100)
		  Call mPDF.WriteFText(mPDF.ktaLeft, "Signed By:__________________")
		  
		  width = 210
		  'Submitted
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect((mPDF.GetPageWidth - width) - 55, y, width, 100)
		  
		  Call mPDF.WriteFText(mPDF.ktaLeft, "Submitted By:__________________")
		  
		  Call mPDF.EndPage
		  
		  'Footer
		  Var pageCount As Integer = mPDF.GetPageCount
		  For x As Integer = 0 To PageCount
		    Call mPDF.EditPage(x)
		    Call mPDF.SetPageCoords(mPDF.kpcBottomUp)
		    Call mPDF.SetFont "Arial",mPDF.kfsNone, 11.8,False,mPDF.kcp1252
		    
		    y = 1*45
		    
		    Var px As Double = (mPDF.GetPageWidth / 2) - (100/ 2)
		    
		    call mpdf.SetOrientationEx(90)
		    call mpdf.WriteFTextEx(   20.0, 20, 200, -1, mpdf.ktaLeft, "Page " + Str(x) + " of " + pageCount.ToString)
		    'Call mPDF.WriteText(px, y, "Page " + Str(x) + " of " + pageCount.ToString)
		    Call mPDF.EndPage
		  Next 
		  
		  // No error?
		  If mPDF.HaveOpenDoc Then
		    If Not mPDF.OpenOutputFile(outfile) Then
		      MessageBox("Can't write file to " + outfile.NativePath)
		      Quit
		    End If
		  End If
		  
		  Call mPDF.CloseFile
		  outfile.Launch
		  
		  'Call table.SetCellText(rowNum, 4, mPDF.ktaCenter, table.kcoCenter, "INV2020-0" + Str(i + 1))
		  
		  
		  '//Sold
		  'Var sold As string 
		  'If report.HasName("sold") Then
		  'sold = report.Value("sold")
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 5, mPDF.ktaCenter, table.kcoCenter,sold)
		  '
		  '//Rented
		  'Var rented As string 
		  'If report.HasName("rented") Then
		  'rented = report.Value("rented")
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 6, mPDF.ktaCenter, table.kcoCenter,rented)
		  
		  
		  
		  
		  'Client Name    Contact No.    Description    Quantity    Sold    Rented    Expected Date of Return    Deposit    Amount
		  
		  
		  
		  '//Date Returned
		  'Var dateReturned As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 7, mPDF.ktaRight, table.kcoRight, dateReturned)
		  
		  
		  '//Deposit
		  'Var deposit As Currency = 0.0
		  'var totalDeposit As Currency 
		  'If report.HasName("deposit") Then
		  'deposit = report.Value("deposit").DoubleValue
		  'deposit = totalDeposit + deposit
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 8, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(deposit, "###,##0.00"))
		  
		  
		  
		  
		  '//Date Returned
		  'Var dateReturned2 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 10, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned3 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 11, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned4 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 12, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned5 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 13, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  
		  
		  'Var totalPayment9 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment9 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment9
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 7, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment9, "###,##0.00"))
		  '
		  '//Total Payment
		  'Var totalPayment8 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment8 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment8
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 8, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment8, "###,##0.00"))
		  '
		  '
		  '
		  'Var totalPayment7 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment7 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment7
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 9, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment7, "###,##0.00"))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Generate_RentalsSales_ModalPDF()
		  
		  Var outfile As FolderItem = SpecialFolder.Documents.Child("Blueglanz")
		  
		  If outfile.Exists Then
		    outfile = outfile.Child("Sales-Documents")
		    If Not outfile.Exists Then
		      outfile.CreateFolder
		    End If
		  Else
		    outfile.CreateFolder
		    outfile = outfile.Child("Sales-Documents")
		    outfile.CreateFolder
		  End If
		  
		  Var dateTime As String = DateTime.Now.SQLDateTime
		  dateTime = StrReplace(" ", "-", dateTime)
		  dateTime = StrReplace(":", "-", dateTime)
		  
		  outfile = outfile.Child(dateTime + "-sales-report.pdf")
		  
		  Call mPDF.CreateNewPDF(outfile)
		  Call mPDF.SetDocInfo(mPDF.kdiCreator, kCreator)
		  Call mPDF.SetDocInfo(mPDF.kdiTitle, "Blueglanz's Rentals Report" + "-" + dateTime)
		  
		  Call mPDF.SetPageCoords mPDF.kpcTopDown
		  
		  Call mPDF.Append
		  call mpdf.SetOrientationEx(90)
		  
		  'call mPDF.WriteFTextEx(   20.0, 20, 200, -1, mpdf.ktaLeft, "Your Content")
		  'Logo
		  Var LogoWidth As Integer = 85
		  Var LogoHeight As Integer = 85
		  
		  Var posX As Integer = (mPDF.GetPageWidth / 2) - (LogoWidth / 2) '20
		  Var y As Integer = 24
		  
		  // add image to mPDF
		  Var logo As Picture = Image1
		  If mPDF.InsertPicture(logo, posX, y, LogoWidth, LogoHeight) < 0 Then
		    System.DebugLog("Failed to insert image.")
		  End If
		  
		  y = y + LogoHeight + 16
		  
		  'Sales Report
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 24.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(50, y, mPDF.GetPageWidth-100, mPDF.GetPageHeight-100)
		  
		  Call mPDF.WriteFText(mpdf.ktaLeft, "Sales and Rentals Total Report")
		  
		  y = y + 60
		  
		  'Address
		  Var table As DynaPDFTableMBS
		  Var rowNum As Integer = 0
		  
		  table = mPDF.CreateTable(4, 1, 180, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Blue Glanz Wedding & Events Boutique")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "6500 Tacloban City, Philippines")
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "0917-550-0366")
		  
		  // Draw the table and delete it
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  'Date
		  table = mPDF.CreateTable(4, 1, 125, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "Date:")
		  
		  Var from As String
		  If mData.HasName("from") Then
		    from = mData.Value("from")
		  End If
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "From: " + from)
		  
		  Var toDate As String
		  If mData.HasName("to") Then
		    toDate = mData.Value("to")
		  End If
		  
		  rowNum = table.AddRow
		  Call table.SetFontSize(rowNum, 0, 12)
		  Call table.SetCellText(rowNum, 0, mPDF.ktaRight, table.kcoCenter, "To: " + toDate)
		  
		  // Draw the table and delete it
		  Call table.DrawTable((mPDF.GetPageWidth - table.GetTableWidth) - 55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 80
		  
		  'Sales Table
		  rowNum = 0
		  table = mPDF.CreateTable(20, 3, 800.0, 10.0)
		  Call table.SetColWidth(0, 15.0, False)
		  Call table.SetColWidth(1, 100.0, False)
		  Call table.SetColWidth(2, 100.0, False)
		  
		  'Call table.SetColWidth(8, 70.0, False)
		  
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  // Header row
		  rowNum = table.AddRow
		  Call table.SetBorderWidth(rowNum, kAllColumns, 0.0, 0.0, 0.0, 0.2)
		  Call table.SetFont(rowNum, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  Call table.SetFontSize(rowNum, kAllColumns, 12.5)
		  
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, "#")
		  Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, "Transaction Date") 
		  Call table.SetCellText(rowNum, 2, mPDF.ktaLeft, table.kcoLeft, "Transaction Amount") 
		  Var reports As JSONItem
		  If mData.HasName("reports") Then
		    reports = mData.Value("reports")
		  End If
		  
		  'MessageBox(reports.ToString)
		  Var total As Double
		  Var num As Integer = 0
		  For i As Integer = 0 To reports.Count - 1
		    Var report As JSONItem = reports.ChildAt(i)
		    
		    rowNum = table.AddRow
		    
		    Call table.SetFontSize(rowNum, kAllColumns, 12)
		    Call table.SetCellPadding(rowNum, kAllColumns, 0.0, 12.0, 0.0, 12.0)
		    
		    Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoLeft, Str(i + 1))
		    
		    
		    // Transaction Date
		    Var dateReturned As String = "N/A"
		    If report.HasName("transaction_date") Then
		      Var explodedDateTime() As String = Explode(" ", report.Value("transaction_date"))
		      If explodedDateTime.Count >= 2 Then
		        dateReturned = explodedDateTime(0)
		      End If
		    End If
		    
		    Call table.SetCellText(rowNum, 1, mPDF.ktaCenter, table.kcoCenter, dateReturned)
		    
		    
		    
		    //Total Amount
		    Var totalAmount As Double = 0.0
		    If report.HasName("amount") Then
		      totalAmount = report.Value("amount").DoubleValue
		      total = total + totalAmount
		    End If
		    
		    Call table.SetCellText(rowNum, 2,  mPDF.ktaLeft, table.kcoLeft, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		    
		    num = num + 1
		    
		    
		  Next
		  
		  // Draw the table in chunks filling page
		  Var pageCounter As Integer = 1
		  Do
		    If pageCounter = 1 Then
		      y = y + table.DrawTable( 55.0, y, (mPDF.GetPageHeight - y) - 55)
		    Else
		      y = y + table.DrawTable( 55.0, y, mPDF.GetPageHeight - 100)
		    End If
		    
		    // draw footer
		    If table.HaveMore Then
		      y = 40
		      Call mPDF.EndPage
		      Call mPDF.Append
		      call mpdf.SetOrientationEx(90)
		    Else
		      Exit
		    End If
		    
		    pageCounter = pageCounter + 1
		  Loop
		  
		  y = y + 16
		  
		  'Total
		  rowNum = 0
		  
		  table = mPDF.CreateTable(1, 1, 180, 20)
		  Call table.SetFont(kAllRows, kAllColumns, mFont, 0, True, mPDF.kcpUnicode)
		  
		  rowNum = table.AddRow
		  Call table.SetFont(rowNum, 0, "Arial", mPDF.kfsBold, True, mPDF.kcpUnicode)
		  Call table.SetFontSize(rowNum, 0, 14)
		  
		  Call table.SetCellText(rowNum, 0, mPDF.ktaLeft, table.kcoCenter, "TOTAL: " + GetCurrency + " " + Format(total, "###,##0.00"))
		  'Call mPDF.WriteFText(mpdf.ktaLeft, "Sales Report")
		  Call table.DrawTable(55.0, y, table.GetTableHeight)
		  PosY = PosY + table.GetTableHeight + 60
		  table = Nil
		  
		  y = y + 40
		  
		  Var width As Integer = 200
		  'Signed
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(55.5, y, width, 100)
		  Call mPDF.WriteFText(mPDF.ktaLeft, "Signed By:__________________")
		  
		  width = 210
		  'Submitted
		  Call mPDF.SetFont("Arial", mPDF.kfsBold, 12.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect((mPDF.GetPageWidth - width) - 55, y, width, 100)
		  
		  Call mPDF.WriteFText(mPDF.ktaLeft, "Submitted By:__________________")
		  
		  Call mPDF.EndPage
		  
		  'Footer
		  Var pageCount As Integer = mPDF.GetPageCount
		  For x As Integer = 0 To PageCount
		    Call mPDF.EditPage(x)
		    Call mPDF.SetPageCoords(mPDF.kpcBottomUp)
		    Call mPDF.SetFont "Arial",mPDF.kfsNone, 11.8,False,mPDF.kcp1252
		    
		    y = 1*45
		    
		    Var px As Double = (mPDF.GetPageWidth / 2) - (100/ 2)
		    
		    call mpdf.SetOrientationEx(90)
		    call mpdf.WriteFTextEx(   20.0, 20, 200, -1, mpdf.ktaLeft, "Page " + Str(x) + " of " + pageCount.ToString)
		    'Call mPDF.WriteText(px, y, "Page " + Str(x) + " of " + pageCount.ToString)
		    Call mPDF.EndPage
		  Next 
		  
		  // No error?
		  If mPDF.HaveOpenDoc Then
		    If Not mPDF.OpenOutputFile(outfile) Then
		      MessageBox("Can't write file to " + outfile.NativePath)
		      Quit
		    End If
		  End If
		  
		  Call mPDF.CloseFile
		  outfile.Launch
		  
		  'Call table.SetCellText(rowNum, 4, mPDF.ktaCenter, table.kcoCenter, "INV2020-0" + Str(i + 1))
		  
		  
		  '//Sold
		  'Var sold As string 
		  'If report.HasName("sold") Then
		  'sold = report.Value("sold")
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 5, mPDF.ktaCenter, table.kcoCenter,sold)
		  '
		  '//Rented
		  'Var rented As string 
		  'If report.HasName("rented") Then
		  'rented = report.Value("rented")
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 6, mPDF.ktaCenter, table.kcoCenter,rented)
		  
		  
		  
		  
		  'Client Name    Contact No.    Description    Quantity    Sold    Rented    Expected Date of Return    Deposit    Amount
		  
		  
		  
		  '//Date Returned
		  'Var dateReturned As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 7, mPDF.ktaRight, table.kcoRight, dateReturned)
		  
		  
		  '//Deposit
		  'Var deposit As Currency = 0.0
		  'var totalDeposit As Currency 
		  'If report.HasName("deposit") Then
		  'deposit = report.Value("deposit").DoubleValue
		  'deposit = totalDeposit + deposit
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 8, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(deposit, "###,##0.00"))
		  
		  
		  
		  
		  '//Date Returned
		  'Var dateReturned2 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 10, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned3 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 11, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned4 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 12, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  '
		  '//Date Returned
		  'Var dateReturned5 As String = "N/A"
		  'If report.HasName("date_returned") Then
		  'Var explodedDateTime() As String = Explode(" ", report.Value("date_returned"))
		  'If explodedDateTime.Count >= 2 Then
		  'dateReturned = explodedDateTime(0)
		  'End If
		  'End If
		  'Call table.SetCellText(rowNum, 13, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalAmount, "###,##0.00"))
		  
		  
		  'Var totalPayment9 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment9 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment9
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 7, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment9, "###,##0.00"))
		  '
		  '//Total Payment
		  'Var totalPayment8 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment8 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment8
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 8, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment8, "###,##0.00"))
		  '
		  '
		  '
		  'Var totalPayment7 As Double = 0.0
		  'If report.HasName("total_price") Then
		  'totalPayment7 = report.Value("total_price").DoubleValue
		  'total = total + totalPayment7
		  'End If
		  '
		  'Call table.SetCellText(rowNum, 9, mPDF.ktaCenter, table.kcoCenter, GetCurrency + " " + Format(totalPayment7, "###,##0.00"))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function TabSpace() As String
		  Return Encodings.ASCII.Chr(9)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mData As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mFont As String = "Arial"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPDF As DynaPDFMBS
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PosY As Double
	#tag EndProperty


	#tag Constant, Name = kAllColumns, Type = Double, Dynamic = False, Default = \"-1", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kAllRows, Type = Double, Dynamic = False, Default = \"-1", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCreator, Type = String, Dynamic = False, Default = \"Shydan", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
