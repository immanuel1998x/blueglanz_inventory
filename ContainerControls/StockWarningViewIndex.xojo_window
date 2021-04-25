#tag Window
Begin ContainerControl StockWarningViewIndex
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
   Height          =   774
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
   Begin CustomHeader CustomHeader1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   121
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   2
      Transparent     =   True
      Visible         =   True
      Width           =   973
      Begin Label Label_Header
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   35.0
         FontUnit        =   0
         Height          =   40
         Index           =   -2147483648
         InitialParent   =   "CustomHeader1"
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
         Text            =   "Stock Warning"
         TextAlignment   =   0
         TextColor       =   &cFFFFFF00
         Tooltip         =   ""
         Top             =   47
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   443
      End
      Begin Label Label_CurrentUser
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
         InitialParent   =   "CustomHeader1"
         Italic          =   False
         Left            =   816
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   53
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin CustomRectangle RoundRectangle1
      AllowAutoDeactivate=   True
      BorderThickness =   1.0
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   629
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   134
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   964
      Begin CustomListbox ListBoxProductAttributesPOS
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
         ColumnWidths    =   "60,60,60,100,150,250"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLinesHorizontalStyle=   2
         GridLinesVerticalStyle=   2
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   514
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         InitialValue    =   "Size	Color	Stock	Unit Price	Style No.	Description	Barcode"
         Italic          =   False
         Left            =   29
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   196
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   929
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin BigIconButton ButtonRefreshs
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   1053984767
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Refresh Product Category"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin SmallButton ExportAsCSV
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   "Export as CSV"
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   30
         Icon            =   364965887
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   794
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   722
         Transparent     =   True
         Visible         =   True
         Width           =   164
      End
      Begin CustomSearchField TextFieldFieldSearch1
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   20.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   40
         Hint            =   ""
         Hint1           =   ""
         Icon            =   0
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   659
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   144
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Value1          =   ""
         Visible         =   True
         Width           =   242
      End
      Begin BigIconButton IconButtonSearch
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   13963263
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   913
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Search"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
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
      Left            =   440
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -88
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  'fetchResponseProducts
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  FetchResponseProducts
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub FetchResponseProducts()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As String
		  response = api.Post(App.URL + "/products/fetch_all", 2)
		  
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    populateListBoxProductAttr(responseData)
		    
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populateListBoxProductAttr(responseData As JSONItem)
		  ListBoxProductAttributesPOS.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var prod_attributes as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to prod_attributes.Count - 1
		    Var prod_attribute as JSONItem = prod_attributes.ChildAt(i)
		    
		    
		    Var product_size As String = DecodeURLComponent(prod_attribute.Value("size"))
		    Var product_color As String = DecodeURLComponent(prod_attribute.Value("color"))
		    Var product_stock As String = DecodeURLComponent(prod_attribute.Value("stock"))
		    Var product_price As String = Format(prod_attribute.Value("price"), "\₱\  ###,###, ###.00")
		    Var no As String = DecodeURLComponent(prod_attribute.Value("style_no"))
		    Var description As String = DecodeURLComponent(prod_attribute.Value("description"))
		    Var product_id_generated As String = DecodeURLComponent(prod_attribute.Value("barcode"))
		    Var id As String = DecodeURLComponent(prod_attribute.Value("id"))
		    
		    If product_stock.ToInteger <= 10 Then
		      ListBoxProductAttributesPOS.AddRow(product_size, product_color, product_stock,product_price,no,description,product_id_generated,id)
		      ListBoxProductAttributesPOS.RowTag(ListBoxProductAttributesPOS.LastIndex) = prod_attribute
		    End If
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Search()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p As New Dictionary
		  p.Value("barcode") = TextFieldFieldSearch1.Text
		  api.SetFormData(p)
		  
		  Var response As String
		  response = api.Post(App.URL + "/products/search_by_barcode", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    populateListBoxProductAttr(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private jsonSelectedClient As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		jsonSelectedUser As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		mSelectedDate As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		responseData As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		responseData1 As JSONItem
	#tag EndProperty


#tag EndWindowCode

#tag Events ListBoxProductAttributesPOS
	#tag Event
		Sub Open()
		  FetchResponseProducts
		  Me.SetDefaultProperties
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  // Add some items
		  
		  base.AddMenu( New MenuItem("Restock"))
		  
		  
		  
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  If hitItem <> Nil Then
		    Select Case hitItem.Value
		    Case "Restock"
		      If Me.ListIndex > -1 Then
		        selectedProduct = Me.RowTag(Me.ListIndex)
		        product_id = selectedProduct.Value("id")
		        product_stock = DecodeURLComponent(selectedProduct.Value("stock"))
		        WindowProdAttr_UpdateStock.ShowModal
		      End If
		    end Select
		    Return True
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Me.ListIndex > -1 Then
		    selectedProduct = Me.RowTag(Me.ListIndex)
		    product_attribute_id = selectedProduct.Value("id")
		    
		    'product_stock = selectedProduct.Value("stock")
		    'MessageBox(product_attribute_id.ToString)
		    product_size = selectedProduct.Value("size")
		    product_color = selectedProduct.Value("color")
		    product_description = selectedProduct.Value("description")
		    product_price = selectedProduct.Value("price")
		    product_id_generated = selectedProduct.Value("barcode")
		  End If
		  
		  
		  'For row As Integer = 0 to ListBoxProductAttributesPOS.ListCount-1
		  '
		  ''Var NewValue As Integer  = qty
		  'Var OldValue As String  = 
		  'MessageBox(OldValue)
		  'Next
		  'If Me.ListIndex > -1 Then
		  'selectedProduct = Me.RowTag(Me.ListIndex)
		  '
		  '
		  'End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonRefreshs
	#tag Event
		Sub Clicked()
		  FetchResponseProducts
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportAsCSV
	#tag Event
		Sub Clicked()
		  Var csv As String = ListBoxProductAttributesPOS.ExportToCSV
		  
		  Var csvType As New FileType
		  csvType.Name = "Comma Separated Values"
		  csvType.Extensions = "csv"
		  Var saveFile As FolderItem = FolderItem.ShowSaveFileDialog(csvType, "Blueglanz: Items with below 10 of stocks.")
		  
		  If saveFile = Nil Then
		    Return
		  End If
		  
		  Var fileStream As TextOutputStream
		  fileStream = TextOutputStream.Create(saveFile)
		  fileStream.Write(csv)
		  fileStream.Close
		  
		  Return
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextFieldFieldSearch1
	#tag Event
		Sub TextChanged()
		  If Me.Text= " " Then
		    FetchResponseProducts
		  End If
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 55736572206861732070726573736564205B63617272696167652072657475726E5D
		Sub Pressed(searchString as String)
		  Search
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IconButtonSearch
	#tag Event
		Sub Clicked()
		  Search
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
		  FetchResponseProducts
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
#tag EndViewBehavior
