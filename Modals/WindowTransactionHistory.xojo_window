#tag Window
Begin Window WindowTransactionHistory
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   1
   FullScreen      =   False
   HasBackgroundColor=   True
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   True
   Height          =   490
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Transaction History"
   Type            =   1
   Visible         =   True
   Width           =   1118
   Begin SmallButton ButtonCancel1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   True
      Backdrop        =   0
      Caption         =   "Cancel"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Icon            =   1534699519
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   29
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   443
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin CustomListbox ListboxTransactionRentals
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   True
      checkboxCol     =   -1
      ColumnCount     =   5
      ColumnWidths    =   "140,140,130,120,120"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   18
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   16.0
      FontUnit        =   0
      GridLinesHorizontalStyle=   2
      GridLinesVerticalStyle=   2
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   True
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   411
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Transaction Date	Transaction Type	Description	No. Of Items	Total Amount"
      Italic          =   False
      Left            =   33
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   651
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin CustomListbox ListboxTransactionRentalList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   True
      checkboxCol     =   -1
      ColumnCount     =   4
      ColumnWidths    =   "120,100,400,150"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   18
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   16.0
      FontUnit        =   0
      GridLinesHorizontalStyle=   2
      GridLinesVerticalStyle=   2
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   True
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   253
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Quantity	Size	Description	Price	Color"
      Italic          =   False
      Left            =   747
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   351
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Rectangle RoundRectangle1
      AllowAutoDeactivate=   True
      BorderThickness =   1.0
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   146
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   747
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   "True"
      Tooltip         =   ""
      Top             =   285
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   351
      Begin Label Label3
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "Source Sans Pro"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   756
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Total Amount Due:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   329
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   122
      End
      Begin Label Label4
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "Source Sans Pro"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   756
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Amount Tendered:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   364
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   122
      End
      Begin Label Label5
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "Source Sans Pro"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   756
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Change:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   385
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   122
      End
      Begin Label Label_TotalDue
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "Source Sans Pro"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   910
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   329
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   179
      End
      Begin Label Label_AmountTendered
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "Source Sans Pro"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   910
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   364
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   179
      End
      Begin Label Label_Change
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "Source Sans Pro"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   910
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   385
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   179
      End
      Begin Label Label2
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "Source Sans Pro Black"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   767
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Payment Info"
         TextAlignment   =   2
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   297
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   311
      End
      Begin Separator Separator1
         AllowAutoDeactivate=   True
         Enabled         =   True
         Height          =   2
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   756
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   350
         Transparent     =   False
         Visible         =   True
         Width           =   333
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub FetchResponseTransactionHistory()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  
		  Var data As New Dictionary
		  data.Value("client_id") = client_id.ToString
		  api.SetFormData(data)
		  
		  Var response As String
		  response = api.Post(App.URL + "/transactions/select_by_client_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    Populate_TransactionHistory(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Fetch_Payment_By_Transac_ID()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var payment as new Dictionary
		  payment.Value("transaction_id") = transaction_id
		  api.SetFormData(payment)
		  
		  Var response As String
		  response = api.Post(App.URL + "/payments/select_by_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    Var payments as JSONItem = ResponseData.Child("rows")
		    for i as integer = 0 to payments.Count - 1
		      Var ipayment as JSONItem = payments.ChildAt(i)
		      Var total_amount As String = Format(ipayment.Value("total_amount"), "###,##0.00").ReplaceAll(",","")
		      Var amount_tendered As String = Format(ipayment.Value("amount_tendered"), "###,##0.00").ReplaceAll(",","")
		      Var change As String = Format(ipayment.Value("change"), "###,##0.00").ReplaceAll(",","")
		      
		      Label_TotalDue.Text =  Format(total_amount.ToDouble, "\₱\ ###,##0.00")
		      Label_AmountTendered.Text = Format(amount_tendered.ToDouble, "\₱\ ###,##0.00")
		      Label_Change.Text = Format(change.ToDouble, "\₱\ ###,##0.00")
		    Next
		    
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Fetch_ProductRentedList()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var Selected_ID as new Dictionary
		  Selected_ID.Value("transaction_rental_ID") = transaction_rental_ID
		  api.SetFormData(Selected_ID)
		  
		  Var response As String
		  response = api.Post(App.URL + "/product_rented_list/select_by_transaction_rental_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    'MessageBox(responseData.ToString)
		    PopulateListBoxTransactionRentalsList(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		  
		  
		  
		  
		  'user_role  = DecodeURLComponent(user.Value("role"))
		  'PopulateListBoxReports(responseData)
		  'MessageBox(responseData.ToString)
		  'MessageBox(product_stock)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Fetch_ProductSoldList()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var Selected_ID as new Dictionary
		  Selected_ID.Value("transaction_sale_ID") = transaction_rental_ID
		  api.SetFormData(Selected_ID)
		  
		  Var response As String 
		  response = api.Post(App.URL + "/product_sold_list/select_by_transaction_sold_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    'MessageBox(responseData.ToString)
		    PopulateListBoxTransactionRentalsList(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopulateListBoxTransactionRentalsList(responsedata as JSONItem)
		  ListboxTransactionRentalList.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var sales_reports as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to sales_reports.Count - 1
		    Var sales_report as JSONItem = sales_reports.ChildAt(i)
		    
		    Var quantity As String = sales_report.Value("qty")
		    Var size As String = DecodeURLComponent(sales_report.Value("size"))
		    Var description As String = DecodeURLComponent(sales_report.Value("description"))
		    Var price As String = format(sales_report.Value("price"), "\₱\ ###,###, ###.00")
		    Var _color As String = sales_report.Value("color")
		    
		    
		    
		    'ListboxTransactionRentalList.ColumnAlignmentAt(6) = ListBox.Alignments.center
		    
		    ListboxTransactionRentalList.AddRow(quantity, size, description, price,_color)
		    ListboxTransactionRentalList.RowTag(ListboxTransactionRentalList.LastIndex) = sales_report
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Populate_TransactionHistory(responseData As JSONItem)
		  ListboxTransactionRentals.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var sales_reports as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to sales_reports.Count - 1
		    Var sales_report as JSONItem = sales_reports.ChildAt(i)
		    
		    Var transaction_date As String = sales_report.Value("transaction_date")
		    Var transaction_type As String = DecodeURLComponent(sales_report.Value("transaction_type"))
		    Var description As String = DecodeURLComponent(sales_report.Value("description"))
		    Var quantity As String = sales_report.Value("quantity")
		    Var amount As String = format(sales_report.Value("amount"), "\₱\ ###,###, ###.00")
		    
		    ListboxTransactionRentals.ColumnAlignmentAt(1) = ListBox.Alignments.center
		    
		    ListboxTransactionRentals.AddRow(transaction_date.ReplaceAll(" 00:00:00",""),transaction_type, description, quantity, amount)
		    ListboxTransactionRentals.RowTag(ListboxTransactionRentals.LastIndex) = sales_report
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		jsonSelectedTransactionRental As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		mHoveredColumn As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mHoveredRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mLastInsertedID As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		product_type As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		product_type_id_combobox As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		selectedProductType As JSONItem
	#tag EndProperty


#tag EndWindowCode

#tag Events ButtonCancel1
	#tag Event
		Sub Clicked()
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListboxTransactionRentals
	#tag Event
		Sub Open()
		  FetchResponseTransactionHistory
		  Me.SetDefaultProperties
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Me.ListIndex > -1 Then
		    
		    jsonSelectedTransactionRental = Me.RowTag(Me.ListIndex)
		    transaction_rental_ID = jsonSelectedTransactionRental.Value("id")
		    transaction_type = jsonSelectedTransactionRental.Value("transaction_type")
		    transaction_id = jsonSelectedTransactionRental.Value("id")
		    Fetch_Payment_By_Transac_ID
		  End If
		  
		  if transaction_type = "Rental" then
		    Fetch_ProductRentedList
		  Else
		    Fetch_ProductSoldList
		  end if
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListboxTransactionRentalList
	#tag Event
		Sub Open()
		  Me.SetDefaultProperties
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="mHoveredColumn"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="mHoveredRow"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="mLastInsertedID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="product_type_id_combobox"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
