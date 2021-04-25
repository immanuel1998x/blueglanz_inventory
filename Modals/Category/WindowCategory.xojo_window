#tag Window
Begin Window WindowProduct
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
   Height          =   164
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Add Product"
   Type            =   1
   Visible         =   True
   Width           =   400
   Begin CustomCanvas_Background CustomCanvas_Background1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   85
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   37
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   325
      Begin CustomComboBox CProductTypeComboBox
         AllowAutoComplete=   False
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   164
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   45
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   132
      End
      Begin Label Label11
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Italic          =   False
         Left            =   57
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   40
         Transparent     =   False
         Underline       =   False
         Value           =   "Product Type"
         Visible         =   True
         Width           =   95
      End
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
      Left            =   266
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Right           =   0
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   117
      Transparent     =   True
      Visible         =   True
      Width           =   100
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
      Left            =   33
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Right           =   0
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   117
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
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
      ColumnWidths    =   "5%,50,50,70,100,50,250,200"
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
      Height          =   192
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "#	Size	Color	Stock	Price	No.	Description	Product ID Generated"
      Italic          =   False
      Left            =   -16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   713
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   771
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Label Label13
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   81
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   556
      Transparent     =   False
      Underline       =   False
      Value           =   "Attributes"
      Visible         =   True
      Width           =   152
   End
   Begin SimpleButton ButtonAddAttribute
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "Add Attributes"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   262
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   556
      Transparent     =   True
      Visible         =   True
      Width           =   125
   End
   Begin SimpleButton ButtonRemoveAttribute
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   0
      Caption         =   "Remove Attribute"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   125
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   556
      Transparent     =   True
      Visible         =   False
      Width           =   125
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub FetchResponseProductTypes()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As String
		  response = api.Post(App.URL + "/product_category/fetch_all", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    'MessageBox(responseData.ToString)
		    populateProductTypes(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertNewAttributes()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  If CListBoxAttributes.RowCount <= 0 Then
		    MessageBox("Please add some product attributes")
		    Return
		  End If
		  
		  Var response As JSONItem
		  Var address As String = App.URL + "/product_attributes/insert"
		  For i As Integer = 0 To CListBoxAttributes.RowCount - 1
		    Var productAttributes As New Dictionary
		    
		    productAttributes.Value("product_id") = mLastInsertedID
		    productAttributes.Value("size") = CListBoxAttributes.CellValueAt(i, 1)
		    productAttributes.Value("color") = CListBoxAttributes.CellValueAt(i, 2)
		    productAttributes.Value("stock") = CListBoxAttributes.CellValueAt(i, 3)
		    productAttributes.Value("price") = CListBoxAttributes.CellValueAt(i, 4)
		    productAttributes.Value("no") = CListBoxAttributes.CellValueAt(i, 5)
		    productAttributes.Value("description") = EncodeURLComponent(CListBoxAttributes.CellValueAt(i, 6))
		    productAttributes.Value("product_id_generated") = CListBoxAttributes.CellValueAt(i, 7)
		    api.SetFormData(productAttributes)
		    
		    response = New JSONItem(api.Post(address, 2))
		    
		  Next
		  
		  if response.Value("status") = 200 then
		    
		    Self.Close
		  else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		  
		  
		  
		  
		  
		  'Var fetch As New ProductViewIndex
		  'fetch.fetchResponseProducts
		  ''MsgBox("Succesfully Saved")
		  'ProductClear
		  'Var fp As New ProductViewIndex
		  'fp.fetchResponseProducts
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertNewProduct()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  If CProductTypeComboBox.SelectedRowIndex = -1 Then
		    MessageBox("Please select a product type.")
		    Return
		  End If
		  
		  Var productTypeId As Integer = 0
		  Var productType As JSONItem = CProductTypeComboBox.RowTagAt(CProductTypeComboBox.SelectedRowIndex)
		  If productType = Nil Then
		    MessageBox("Please select a product type")
		    Return
		  End If
		  
		  If productType.HasName("id") Then
		    productTypeId = productType.Value("id")
		  End If
		  
		  
		  
		  
		  Var data as new Dictionary
		  data.Value("product_type_id") = product_type_id_combobox.ToString
		  data.Value("product_type_name") = EncodeURLComponent(CProductTypeComboBox.Value)
		  api.SetFormData(data)
		  
		  //Check for duplicates.
		  'if isNotDuplicate then
		  
		  Var response As New JSONItem(api.Post(App.URL + "/products/insert", 2))
		  
		  
		  
		  if mLastInsertedID  = 0 then
		    'MessageBox("Product Already Exist.")
		    Return
		  else
		    mLastInsertedID = response.Value("insert_id")
		    if response.Value("status") = 200 then
		      MessageBox(response.ToString)
		      'insertNewAttributes
		    else
		      MsgBox "An error occured " + response.Value("error_message")
		    end if
		  end if
		  
		  
		  
		  
		  'end if
		  
		  //
		  
		  '
		  'Var response As New JSONItem(api.Post(App.URL + "/product_types/insert", 2))
		  'if response.Value("status") = 200 then
		  'Self.Close
		  'else
		  'MsgBox "An error occured " + response.Value("error_message")
		  'end if
		  
		  //
		  
		  
		  'If CDescriptionTextArea.Value = "" Then
		  'MessageBox("Description is required.")
		  'Return
		  'End If
		  
		  
		  'Var isNotDuplicate As Boolean = False
		  '
		  'for i As Integer = 0 To products.Count - 1
		  'If products(i).Lowercase = CProductTypeComboBox.Value.Lowercase Then
		  'MsgBox("Product type already exist!")
		  'isNotDuplicate = False
		  'Exit
		  'else
		  'isNotDuplicate = True
		  'End If
		  'next
		  '
		  
		  'Var isNotDuplicate As Boolean = False
		  'for i As Integer = 0 To product_names.Count - 1
		  'If product_names(i).Lowercase = CDescriptionTextArea.Value.Lowercase Then
		  'MsgBox("Product name already exist!")
		  'isNotDuplicate = False
		  'Exit
		  'else
		  'isNotDuplicate = True
		  'End If
		  'next
		  'if isNotDuplicate then
		  'end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopulateProductAttributes(responseData As JSONItem)
		  CListBoxAttributes.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var prod_attributes as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to prod_attributes.Count - 1
		    Var prod_attribute as JSONItem = prod_attributes.ChildAt(i)
		    
		    prod_attribute.Value("product_id") = mLastInsertedID
		    Var product_size As String = DecodeURLComponent(prod_attribute.Value("size"))
		    Var product_color As String = DecodeURLComponent(prod_attribute.Value("color"))
		    Var product_stock As String = DecodeURLComponent(prod_attribute.Value("stock"))
		    Var product_price As String = Format(prod_attribute.Value("price"), "\₱ ###,###, ###.00")
		    
		    Var counter As Integer = CListBoxAttributes.RowCount + 1
		    
		    CListBoxAttributes.AddRow(str(counter), product_size, product_color, product_stock, product_price)
		    CListBoxAttributes.RowTag(CListBoxAttributes.LastAddedRowIndex) = prod_attribute
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopulateProductTypes(responseData As JSONItem)
		  CProductTypeComboBox.RemoveAllRows
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  products.RemoveAllRows
		  
		  Var product_types as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to product_types.Count - 1
		    Var product_type as JSONItem = product_types.ChildAt(i)
		    
		    Var id As String = DecodeURLComponent(product_type.Value("id"))
		    Var product_type_name As String = DecodeURLComponent(product_type.Value("name"))
		    
		    products.AddRow(product_type_name)
		    
		    CProductTypeComboBox.AddRow(product_type_name)
		    CProductTypeComboBox.RowTag(CProductTypeComboBox.LastAddedRowIndex) = product_type
		  Next
		  CProductTypeComboBox.AddRow("**Create New**")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProductClear()
		  CProductTypeComboBox.Value = ""
		  
		  CListBoxAttributes.RemoveAllRows
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProductIdGenerate()
		  
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
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateProductAttrFetch()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var productAttributes As New Dictionary
		  productAttributes.Value("product_id") = product_id
		  api.SetFormData(productAttributes)
		  
		  Var response As String
		  response = api.Post(App.URL + "/product_attributes/select_by_product_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    populateProductAttributes(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateProductAttributes()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As JSONItem
		  For i As Integer = 0 To CListBoxAttributes.RowCount - 1
		    Var productAttributes As New Dictionary
		    
		    productAttributes.Value("size") = CListBoxAttributes.CellValueAt(i, 1)
		    productAttributes.Value("color") = CListBoxAttributes.CellValueAt(i, 2)
		    productAttributes.Value("stock") = CListBoxAttributes.CellValueAt(i, 3)
		    productAttributes.Value("price") = CListBoxAttributes.CellValueAt(i, 4).ReplaceAll(",", "").ReplaceAll("₱","")
		    productAttributes.Value("id") = product_id
		    
		    api.SetFormData(productAttributes)
		    Var address as string = App.URL + "/product_attributes/update"
		    response = New JSONItem(api.Post(address, 2))
		  Next
		  
		  If response.Value("status") = 200 Then
		    Var fetch As New ProductViewIndex
		    fetch.fetchResponseProducts
		    MsgBox("Succesfully Update")
		    ProductClear
		    Self.Close
		  Else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
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
		product_type_id_combobox As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		selectedProductType As JSONItem
	#tag EndProperty


#tag EndWindowCode

#tag Events CProductTypeComboBox
	#tag Event
		Sub TextChanged()
		  If Me.ListIndex = Me.LastAddedRowIndex Then
		    WindowAddProductCategory.ShowModal
		  End If
		  
		  If Me.ListIndex > -1 Then
		    
		    product_type = Me.RowTag(Me.ListIndex)
		    product_type_id_combobox = product_type.Value("id")
		    product_type_name = product_type.Value("name")
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Load()
		  fetchResponseProductTypes
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label11
	#tag Event
		Sub Open()
		  Me.Bold = True
		  Me.FontSize = 15
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
		    ButtonRemoveAttribute.Visible = False
		    Return
		  End If
		  
		  ButtonRemoveAttribute.Visible = True
		  
		  'Var attribute As JSONItem = Me.RowTagAt(selectedRow)
		  'If attribute = Nil Then
		  'Return
		  'End If
		  
		  productIdGenerate
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellTextChange(row as Integer, column as Integer)
		  'For r As Integer = 0 To CListBoxAttributes.RowCount - 1
		  'CListBoxAttributes.Cell(r, 5)
		  'next
		  '
		  'MessageBox("Hello?")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label13
	#tag Event
		Sub Open()
		  Me.Bold = True
		  Me.FontSize = 15
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonAddAttribute
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
#tag Events ButtonRemoveAttribute
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
