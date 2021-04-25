#tag Window
Begin Window WindowNewProduct
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
   Height          =   410
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Product"
   Type            =   1
   Visible         =   True
   Width           =   864
   Begin CustomCanvas_Background CustomCanvas_Background1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   330
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   27
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   810
      Begin CustomListbox CListBoxAttributes
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         checkboxCol     =   -1
         ColumnCount     =   8
         ColumnWidths    =   "5%,50,50,70,100,70,250,200"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLinesHorizontalStyle=   0
         GridLinesVerticalStyle=   0
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   233
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         InitialValue    =   "#	Size	Color	Stock	Price	Style No	Description	Barcode"
         Italic          =   False
         Left            =   47
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   97
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   770
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Label Label11
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   35.0
         FontUnit        =   0
         Height          =   45
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Italic          =   False
         Left            =   47
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   27
         Transparent     =   False
         Underline       =   False
         Value           =   "Category:"
         Visible         =   True
         Width           =   167
      End
      Begin Label Label12
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   35.0
         FontUnit        =   0
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Italic          =   False
         Left            =   221
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   39
         Transparent     =   False
         Underline       =   False
         Value           =   ""
         Visible         =   True
         Width           =   147
      End
      Begin BigIconButton BigIconButtonDeleteCategory
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   667951103
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Left            =   777
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Delete a Product Category"
         Top             =   45
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin BigIconButton BigIconButtonAddCategory
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   886433791
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Left            =   725
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Add New Product Category"
         Top             =   45
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
   End
   Begin SimpleButton ButtonCancel
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "Cancel"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   496
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin SimpleButton ButtonSave
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "Save"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   512
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   475
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin SimpleButton ButtonRemoveProduct
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   0
      Caption         =   "Remove Product"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   146
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -156
      Transparent     =   True
      Visible         =   True
      Width           =   125
   End
   Begin SimpleButton ButtonAddProduct
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "Add New Product(s)"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   613
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -156
      Transparent     =   True
      Visible         =   True
      Width           =   147
   End
   Begin SmallButton SmallButtonCancel
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Caption         =   "Cancel"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   35
      Icon            =   1534699519
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   712
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   362
      Transparent     =   True
      Visible         =   True
      Width           =   125
   End
   Begin SmallButton SmallButtonSave
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Caption         =   "Save"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   35
      Icon            =   1769541631
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   27
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   362
      Transparent     =   True
      Visible         =   True
      Width           =   125
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub insertNewProduct()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  If CListBoxAttributes.RowCount <= 0 Then
		    MessageBox("Please add some product attributes")
		    Return
		  End If
		  
		  Var response As JSONItem
		  Var address As String = App.URL + "/products/insert"
		  For i As Integer = 0 To CListBoxAttributes.RowCount - 1
		    Var productAttributes As New Dictionary
		    
		    productAttributes.Value("product_category_id") = product_id
		    productAttributes.Value("size") = CListBoxAttributes.CellValueAt(i, 1)
		    productAttributes.Value("color") = CListBoxAttributes.CellValueAt(i, 2)
		    productAttributes.Value("stock") = CListBoxAttributes.CellValueAt(i, 3)
		    productAttributes.Value("price") = CListBoxAttributes.CellValueAt(i, 4)
		    productAttributes.Value("style_no") = CListBoxAttributes.CellValueAt(i, 5)
		    productAttributes.Value("description") = EncodeURLComponent(CListBoxAttributes.CellValueAt(i, 6))
		    productAttributes.Value("barcode") = CListBoxAttributes.CellValueAt(i, 7)
		    api.SetFormData(productAttributes)
		    
		    response = New JSONItem(api.Post(address, 2))
		    
		  Next
		  
		  if response.Value("status") = 200 then
		    Var fetch As New ProductViewIndex
		    fetch.fetchResponseProducts
		    Self.Close
		  else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub productIdGenerate()
		  '// names are split using space
		  'Var name() As String = CDescriptionTextArea.Value.Split(CHR(32))
		  '
		  '// global value
		  'Var uniqueName As String
		  '
		  '// check each split data and only add the first letter
		  'For i As Integer = 0 To name.Count - 1
		  'uniqueName = Str(uniqueName + Left(name(i), 1)).Uppercase
		  'Next
		  '
		  '// first letter of the typed text and add the no
		  ''For i As Integer = 0 To CListBoxAttributes.RowCount - 1
		  '
		  '
		  ''CProductIdGenerated.Value = uniqueName + "-00"
		  '
		  '
		  'CProductIdGenerated.Value = uniqueName + "-" + CProductNoTextField.Value
		  
		  
		  
		  
		  //
		  
		  
		  For j As Integer = 0 To CListBoxAttributes.RowCount - 1
		    
		    // names are split using space
		    'Var name() As String = CDescriptionTextArea.Value.Split(CHR(32))
		    Var name() As String = CListBoxAttributes.CellValueAt(j, 6).Split(CHR(32))
		    
		    
		    // global value
		    Var uniqueName As String
		    // check each split data and only add the first letter
		    For i As Integer = 0 To name.Count - 1
		      uniqueName = Str(uniqueName + Left(name(i), 1)).Uppercase
		    Next
		    
		    CListBoxAttributes.CellValueAt(j, 7) = uniqueName + "-" + CListBoxAttributes.CellValueAt(j, 1) + "-" + CListBoxAttributes.CellValueAt(j, 5)
		  next
		  'For j As Integer = 0 To CListBoxAttributes.RowCount - 1
		  '
		  '
		  'Next
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  // first letter of the typed text and add the no
		  'For i As Integer = 0 To CListBoxAttributes.RowCount - 1
		  
		  'CProductIdGenerated.Value = uniqueName + "-00"
		  
		  
		  
		  'For l As Integer = 0 To ListboxAttributes.RowCount - 1
		  'sizes = .Split(CHR(32))
		  'Next
		  'For a As Integer = 0 To sizes.Count -1
		  'uniqueSize = Str(uniqueSize + Left(sizes(a), 1)).Uppercase
		  'Next
		  'CProductIdGenerated.Value = uniqueName + "-" + CProductNoTextField.Value
		End Sub
	#tag EndMethod


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
		selectedProductType As JSONItem
	#tag EndProperty


#tag EndWindowCode

#tag Events CListBoxAttributes
	#tag Event
		Sub Open()
		  Me.SetDefaultProperties
		  
		  For i As Integer = 0 To Me.ColumnCount - 1
		    Me.ColumnAlignmentAt(i) = Listbox.Alignments.Center
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  If mHoveredRow = -1 AND mHoveredColumn = -1 Then
		    Return
		  End If
		  
		  Me.CellTypeAt(mHoveredRow, mHoveredColumn) = Listbox.CellTypes.TextField
		  Me.EditCellAt(mHoveredRow, mHoveredColumn)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  mHoveredRow = Me.RowFromXY(X, Y)
		  mHoveredColumn = Me.ColumnFromXY(X, Y)
		  Me.Invalidate(False)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Var selectedRow As Integer = Me.SelectedRowIndex
		  If selectedRow = -1 Then
		    ButtonRemoveProduct.Visible = False
		    Return
		  End If
		  
		  ButtonRemoveProduct.Visible = True
		  
		  productIdGenerate
		  
		  
		  'Var attribute As JSONItem = Me.RowTagAt(selectedRow)
		  'If attribute = Nil Then
		  'Return
		  'End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label11
	#tag Event
		Sub Open()
		  Me.FontSize = 20
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label12
	#tag Event
		Sub Open()
		  Me.FontSize = 15
		  Me.Value = DecodeURLComponent(product_type_name)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonDeleteCategory
	#tag Event
		Sub Clicked()
		  Var selectedRow As Integer = CListBoxAttributes.SelectedRowIndex
		  If selectedRow = -1 Then
		    Return
		  End If
		  
		  CListBoxAttributes.RemoveRowAt(selectedRow)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonAddCategory
	#tag Event
		Sub Clicked()
		  Var counter As Integer = CListBoxAttributes.RowCount + 1
		  CListBoxAttributes.AddRow(str(counter))
		  
		  CListBoxAttributes.SelectedRowIndex = CListBoxAttributes.LastAddedRowIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonCancel
	#tag Event
		Sub LeftClick()
		  Self.Close
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.ButtonColor = dangerColor
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonSave
	#tag Event
		Sub Open()
		  Me.ButtonColor = secondaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  insertNewProduct
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonRemoveProduct
	#tag Event
		Sub LeftClick()
		  Var selectedRow As Integer = CListBoxAttributes.SelectedRowIndex
		  If selectedRow = -1 Then
		    Return
		  End If
		  
		  CListBoxAttributes.RemoveRowAt(selectedRow)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.ButtonColor = secondaryColor
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonAddProduct
	#tag Event
		Sub Open()
		  Me.ButtonColor = secondaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  Var counter As Integer = CListBoxAttributes.RowCount + 1
		  CListBoxAttributes.AddRow(str(counter))
		  
		  CListBoxAttributes.SelectedRowIndex = CListBoxAttributes.LastAddedRowIndex
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonCancel
	#tag Event
		Sub Clicked()
		  Self.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonSave
	#tag Event
		Sub Clicked()
		  insertNewProduct
		  
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
#tag EndViewBehavior
