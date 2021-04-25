#tag Window
Begin ContainerControl DefectiveProductViewIndex
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackgroundColor=   False
   Height          =   630
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   980
   Begin SimpleButton ButtonAddProduct
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "New Product"
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   71
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
   Begin SimpleButton ButtonRefresh
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   0
      Caption         =   "Refresh"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   140
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   71
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
   Begin SimpleButton ButtonDelete
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "Delete"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   260
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   71
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
   Begin CustomSearchField TextFieldSearch
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   16.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   30
      Hint            =   ""
      Hint1           =   ""
      Icon            =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   718
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   71
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value1          =   ""
      Visible         =   True
      Width           =   242
   End
   Begin CustomComboBox ProductTypeComboBox
      AllowAutoComplete=   False
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   16.0
      FontUnit        =   0
      Height          =   30
      Hint            =   ""
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   815
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   29
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   145
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
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Value           =   "Defective Product(s)"
      Visible         =   True
      Width           =   423
   End
   Begin Label Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   671
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
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
      Top             =   79
      Transparent     =   False
      Underline       =   False
      Value           =   "Search"
      Visible         =   True
      Width           =   44
   End
   Begin SimpleButton ButtonGenerateBarcodes
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "Generate Barcode"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Right           =   0
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   580
      Transparent     =   True
      Visible         =   True
      Width           =   135
   End
   Begin CustomListbox ListBoxProductAttributes
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      checkboxCol     =   -1
      ColumnCount     =   7
      ColumnWidths    =   "70,70,70,100,50,150"
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
      Height          =   447
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Size	Color	Stock	Price	No.	Description	Barcode"
      Italic          =   False
      Left            =   36
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   121
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   924
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  'fetchResponseProducts
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		FilterProdType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		json_FilterProdType As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		responseData As JSONItem
	#tag EndProperty


#tag EndWindowCode

#tag Events ButtonAddProduct
	#tag Event
		Sub Open()
		  Me.ButtonColor = primaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  WindowAddProductCategory.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonRefresh
	#tag Event
		Sub Open()
		  Me.ButtonColor = primaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  'fetchResponseProducts
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonDelete
	#tag Event
		Sub Open()
		  Me.ButtonColor = dangerColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  WindowProductConfirmDelete.show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextFieldSearch
	#tag Event
		Sub TextChanged()
		  'If Me.Value = "" Then
		  'ListBoxProducts.RemoveAllRows
		  'End If
		  'fetchResponseProducts
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ProductTypeComboBox
	#tag Event
		Sub Load()
		  'fetchResponseProductTypes
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Me.Value = "All" Then
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  'If Me.ListIndex > -1 Then
		  'json_FilterProdType = Me.RowTag(Me.ListIndex)
		  'FilterProdType = json_FilterProdType.Value("name")
		  'FetchResponse_FilterByProdType
		  ''MessageBox(FilterProdType)
		  '
		  'End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonGenerateBarcodes
	#tag Event
		Sub Open()
		  Me.ButtonColor = secondaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  BarcodeGeneratePDF.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBoxProductAttributes
	#tag Event
		Sub Open()
		  Me.SetDefaultProperties
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  // Add some items
		  base.AddMenu( New MenuItem("Update Attribute"))
		  base.AddMenu( New MenuItem("Restock"))
		  base.AddMenu( New MenuItem("Delete"))
		  
		  // Add a Separator
		  base.AddMenu( New MenuItem(MenuItem.TextSeparator))
		  
		  // Add a sub menu
		  Var submenu As New MenuItem("Rent")
		  
		  base.AddMenu(submenu)
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  If hitItem <> Nil Then
		    Select Case hitItem.Value
		    Case "Update Attribute"
		      If Me.ListIndex > -1 Then
		        selectedProduct = Me.RowTag(Me.ListIndex)
		        IsEditing = True
		        
		        product_id = selectedProduct.Value("id")
		        product_size = DecodeURLComponent(selectedProduct.Value("size"))
		        product_color = DecodeURLComponent(selectedProduct.Value("color"))
		        product_stock = DecodeURLComponent(selectedProduct.Value("stock"))
		        product_price = DecodeURLComponent(Format(selectedProduct.Value("price"), "###,###, ###.00"))
		        product_no = DecodeURLComponent(selectedProduct.Value("no"))
		        product_description = DecodeURLComponent(selectedProduct.Value("description"))
		        product_id_generated = DecodeURLComponent(selectedProduct.Value("product_id_generated"))
		        
		        WindowUpdateProductAttribute.ShowModal
		      End If
		    Case "Rent"
		      If Me.ListIndex > -1 Then
		        selectedProduct = Me.RowTag(Me.ListIndex)
		        product_id = selectedProduct.Value("id")
		        product_size = DecodeURLComponent(selectedProduct.Value("size"))
		        product_color = DecodeURLComponent(selectedProduct.Value("color"))
		        product_stock = DecodeURLComponent(selectedProduct.Value("stock"))
		        product_price = DecodeURLComponent(Format(selectedProduct.Value("price"), "###,###, ###.00"))
		        product_description = DecodeURLComponent(selectedProduct.Value("description"))
		        WindowAddSales.ShowModal
		      End If
		      
		    Case "Restock"
		      If Me.ListIndex > -1 Then
		        selectedProduct = Me.RowTag(Me.ListIndex)
		        product_id = selectedProduct.Value("id")
		        product_stock = DecodeURLComponent(selectedProduct.Value("stock"))
		        WindowProdAttr_UpdateStock.ShowModal
		      End If
		    Case "Delete"
		      If Me.ListIndex > -1 Then
		        selectedProduct = Me.RowTag(Me.ListIndex)
		        product_attribute_id = selectedProduct.Value("id")
		        
		        WindowPProductConfirmDelete.ShowModal
		      End If
		    End Select
		    
		    
		    Return True
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Me.ListIndex > -1 Then
		    selectedProduct = Me.RowTag(Me.ListIndex)
		    'product_attribute_id = selectedProduct.Value("id")
		    product_size = selectedProduct.Value("size")
		    product_color = selectedProduct.Value("color")
		    product_description = selectedProduct.Value("description")
		    product_price = selectedProduct.Value("price")
		    product_id_generated = selectedProduct.Value("product_id_generated")
		  End If
		  
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
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowAutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Tooltip"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
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
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FilterProdType"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
