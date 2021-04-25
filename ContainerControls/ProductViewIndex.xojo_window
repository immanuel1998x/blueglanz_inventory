#tag Window
Begin ContainerControl ProductViewIndex
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
   Height          =   838
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
      Left            =   1143
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
      Top             =   41
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
      Top             =   -297
      Transparent     =   False
      Underline       =   False
      Value           =   "Product(s) Inventory"
      Visible         =   True
      Width           =   423
   End
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
      Top             =   1
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
         Height          =   43
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
         Text            =   "Product Inventory"
         TextAlignment   =   0
         TextColor       =   &cFFFFFF00
         Tooltip         =   ""
         Top             =   46
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   349
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
         Top             =   52
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
      Height          =   695
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   134
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   964
      Begin CustomListbox ListBoxProducts
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         checkboxCol     =   -1
         ColumnCount     =   1
         ColumnWidths    =   ""
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
         Height          =   584
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         InitialValue    =   "Type"
         Italic          =   False
         Left            =   29
         LockBottom      =   True
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
         Top             =   196
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   224
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
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
         InitialParent   =   "RoundRectangle1"
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Add New Product Category"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin BigIconButton BigIconButtonEditCategory
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   448557055
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   89
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Edit Product Category"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
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
         InitialParent   =   "RoundRectangle1"
         Left            =   150
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Delete a Product Category"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin BigIconButton BigIconButtonRefresh
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
         Left            =   213
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Refresh Product Category"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
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
         Left            =   900
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Search"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin CustomSearchField TextFieldSearch1
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
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   40
         Hint            =   "Barcode"
         Hint1           =   ""
         Icon            =   0
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   740
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   12
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
         Width           =   148
      End
      Begin SmallButton ButtonSave
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   "Generate Barcode"
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   30
         Icon            =   1009444863
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   285
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   154
         Transparent     =   True
         Visible         =   True
         Width           =   172
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
         Left            =   776
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   2
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   792
         Transparent     =   True
         Visible         =   True
         Width           =   164
      End
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
      Left            =   413
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   1596
      Transparent     =   False
      Underline       =   False
      Value           =   "Search"
      Visible         =   True
      Width           =   44
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
      FontSize        =   0.0
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
      Left            =   460
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   1588
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value1          =   ""
      Visible         =   True
      Width           =   242
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
      ColumnWidths    =   "70,70,70,100,100,450"
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
      Height          =   583
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Size	Color	Stock	Price	Style No.	Description	Barcode"
      Italic          =   False
      Left            =   285
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   196
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   655
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin SimpleButton ButtonAddProduct
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "New Product Category"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   -11
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -230
      Transparent     =   True
      Visible         =   True
      Width           =   163
   End
   Begin SimpleButton ButtonProductCount
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   0
      Caption         =   "Product Count"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   241
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -188
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
      Left            =   109
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -188
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
      Left            =   -11
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -188
      Transparent     =   True
      Visible         =   True
      Width           =   120
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
      Left            =   31
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Right           =   0
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   873
      Transparent     =   True
      Visible         =   True
      Width           =   135
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  'fetchResponseProducts
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub barcodeGenerate()
		  'Var bc As New BarcodeGeneratorMBS
		  '
		  'bc.Symbology = bc.BarcodeCode128
		  'bc.Encode(str)
		  '
		  'Var p As Picture = bc.Picture
		  '
		  'Var err As String
		  'Var lastErr As Integer = bc.LastError
		  'Select Case lastErr
		  'Case bc.ErrorTooLong
		  'err = "ErrorTooLong"
		  'Case bc.ErrorInvalidData
		  'err = "ErrorInvalidData"
		  'Case bc.ErrorInvalidCheck
		  'err = "ErrorInvalidCheck"
		  'Case bc.ErrorInvalidOption
		  'err = "ErrorInvalidOption"
		  'Case bc.ErrorEncodingProblem
		  'err = "ErrorEncodingProblem"
		  'Case bc.ErrorFileAccess
		  'err = "ErrorFileAccess"
		  'Case bc.ErrorMemory
		  'err = "ErrorMemory"
		  'End Select
		  '
		  'lblError.Value = err 
		  '
		  'cvsBarcode.Invalidate(True)
		  'barcode = p
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteProduct()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p as new Dictionary
		  p.Value("id") = product_id
		  api.SetFormData(p)
		  
		  
		  Var address As String = App.URL + "/product_category/delete_by_id"
		  Var response As New JSONItem(api.Get(address, 30))
		  
		  If response.Value("status") = 200 then
		    'fetchResponseProducts
		    MessageBox(response.ToString)
		  else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub delete_ProductAttr()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p as new Dictionary
		  p.Value("id") = product_attribute_id
		  api.SetFormData(p)
		  
		  Var address As String = App.URL + "/products/delete_by_id"
		  Var response As New JSONItem(api.Get(address, 30))
		  
		  If response.Value("status") = 200 then
		    'fetchResponseProducts
		    MessageBox(response.ToString)
		  else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub fetchResponseProductCategory()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As String
		  response = api.Post(App.URL + "/product_category/fetch_all", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    populateProductTypes(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FetchResponseProducts()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p As New Dictionary
		  p.Value("product_category_id") = product_id
		  api.SetFormData(p)
		  
		  Var response As String
		  response = api.Post(App.URL + "/products/select_product_by_category_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    populateListBoxProductAttr(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FetchResponse_FilterByProdType()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p As New Dictionary
		  p.Value("product_type_name") = FilterProdType
		  api.SetFormData(p)
		  
		  
		  Var response As String
		  response = api.Post(App.URL + "/product_category/filter_by_type", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    populateListBoxProducts(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FetchResponse_ProductCategory()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As String
		  response = api.Post(App.URL + "/product_category/fetch_all", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    populateListBoxProducts(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populateListBoxProductAttr(responseData As JSONItem)
		  ListBoxProductAttributes.RemoveAllRows
		  
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
		    Var style_no As String = DecodeURLComponent(prod_attribute.Value("style_no"))
		    Var description As String = DecodeURLComponent(prod_attribute.Value("description"))
		    Var barcode As String = DecodeURLComponent(prod_attribute.Value("barcode"))
		    
		    ListBoxProductAttributes.AddRow(product_size, product_color, product_stock,product_price,style_no,description,barcode)
		    ListBoxProductAttributes.RowTag(ListBoxProductAttributes.LastIndex) = prod_attribute
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populateListBoxProducts(responseData As JSONItem)
		  ListBoxProducts.RemoveAllRows
		  ListBoxProductAttributes.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var products as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to products.Count - 1
		    Var product as JSONItem = products.ChildAt(i)
		    
		    Var id As String = DecodeURLComponent(product.Value("id"))
		    'Var product_type_id As String = DecodeURLComponent(product.Value("product_type_id"))
		    'Var product_type_name As String = DecodeURLComponent(product.Value("product_type_name"))
		    'Var product_type_id As String = DecodeURLComponent(product.Value("product_type_id"))
		    Var product_category_name As String = DecodeURLComponent(product.Value("category_name"))
		    
		    product_names.AddRow(product_category_name)
		    
		    ListBoxProducts.AddRow(product_category_name)
		    ListBoxProducts.RowTag(ListBoxProducts.LastAddedRowIndex) = product
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populateProductByIdGenerated(responsedata As jsonitem)
		  ListBoxProducts.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var products as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to products.Count - 1
		    Var product as JSONItem = products.ChildAt(i)
		    
		    Var id As String = DecodeURLComponent(product.Value("id"))
		    Var product_type_id As String = DecodeURLComponent(product.Value("product_type_id"))
		    Var product_id_generated As String = DecodeURLComponent(product.Value("product_id_generated"))
		    Var product_name As String = DecodeURLComponent(product.Value("description"))
		    
		    ListBoxProducts.AddRow(product_type_id, product_id_generated, product_name)
		    ListBoxProducts.RowTag(ListBoxProducts.LastAddedRowIndex) = product
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populateProductTypes(responseData As JSONItem)
		  ProductTypeComboBox.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var product_types as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to product_types.Count - 1
		    Var product_type as JSONItem = product_types.ChildAt(i)
		    
		    Var id As String = DecodeURLComponent(product_type.Value("id"))
		    Var product_type_name As String = DecodeURLComponent(product_type.Value("category_name"))
		    
		    ProductTypeComboBox.AddRow(product_type_name)
		    ProductTypeComboBox.RowTag(ProductTypeComboBox.LastAddedRowIndex) = product_type
		  Next
		  'ProductTypeComboBox.AddRowAt(0, "All")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub searchProductByProduct_Type_Name()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p As New Dictionary
		  p.Value("barcode") = TextFieldSearch1.Text
		  api.SetFormData(p)
		  
		  
		  Var response As String
		  response = api.Post(App.URL + "/products/search_by_barcode", 2)
		  responseData = New JSONItem(response)
		  'Break
		  If responseData.Value("status") = 200 Then
		    populateListBoxProductAttr(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		  
		End Sub
	#tag EndMethod


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

#tag Events ProductTypeComboBox
	#tag Event
		Sub Load()
		  FetchResponse_ProductCategory
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
		  If Me.ListIndex > -1 Then
		    json_FilterProdType = Me.RowTag(Me.ListIndex)
		    FilterProdType = json_FilterProdType.Value("name")
		    FetchResponse_FilterByProdType
		    'MessageBox(FilterProdType)
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBoxProducts
	#tag Event
		Sub Open()
		  Me.SetDefaultProperties
		  FetchResponse_ProductCategory
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  // Add some items
		  base.AddMenu( New MenuItem("Update Category"))
		  
		  // Add a Separator
		  base.AddMenu( New MenuItem(MenuItem.TextSeparator))
		  
		  // Add a sub menu
		  Var addattr As New MenuItem("Add New Product(s)")
		  base.AddMenu(addattr)
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  If hitItem <> Nil Then
		    Select Case hitItem.Value
		    Case "Update Category"
		      IsEditing  = true
		      If Me.ListIndex > -1 Then
		        selectedProduct = Me.RowTag(Me.ListIndex)
		        IsEditing = True 
		        
		        product_id = selectedProduct.Value("id")
		        productTypeIdHolder = DecodeURLComponent(selectedProduct.Value("id"))
		        product_type_name = DecodeURLComponent(selectedProduct.Value("category_name"))
		        
		        WindowUpdateCategory.ShowModal
		        fetchResponseProducts
		        
		      End If
		    Case "Manage Sale"
		      
		      
		    Case "Add New Product(s)"
		      If Me.ListIndex > -1 Then
		        selectedProduct = Me.RowTag(Me.ListIndex)
		        product_id = selectedProduct.Value("id")
		        product_type_name = selectedProduct.Value("category_name")
		        WindowNewProduct.ShowModal
		        FetchResponseProducts
		      End If
		    End Select
		    Return True
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  'If Me.ListIndex > -1 Then
		  'selectedProduct = Me.RowTag(Me.ListIndex)
		  'productTypeIdHolder = selectedProduct.Value("id")
		  'End If
		  
		  If Me.ListIndex > -1 Then
		    selectedProduct = Me.RowTag(Me.ListIndex)
		    product_id = selectedProduct.Value("id")
		  End If
		  
		  'MessageBox(product_id)
		  
		  FetchResponseProducts
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonAddCategory
	#tag Event
		Sub Clicked()
		  WindowAddProductCategory.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonEditCategory
	#tag Event
		Sub Clicked()
		  IsEditing  = true
		  If ListBoxProducts.ListIndex > -1 Then
		    selectedProduct = ListBoxProducts.RowTag(ListBoxProducts.ListIndex)
		    IsEditing = True 
		    
		    product_id = selectedProduct.Value("id")
		    productTypeIdHolder = DecodeURLComponent(selectedProduct.Value("id"))
		    product_type_name = DecodeURLComponent(selectedProduct.Value("category_name"))
		    
		    WindowUpdateCategory.ShowModal
		    fetchResponseProducts
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonDeleteCategory
	#tag Event
		Sub Clicked()
		  WindowProductConfirmDelete.show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonRefresh
	#tag Event
		Sub Clicked()
		  FetchResponse_ProductCategory
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IconButtonSearch
	#tag Event
		Sub Clicked()
		  searchProductByProduct_Type_Name
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextFieldSearch1
	#tag Event
		Sub TextChanged()
		  'If Me.Value = "" Then
		  'ListBoxProducts.RemoveAllRows
		  'End If
		  'fetchResponseProducts
		End Sub
	#tag EndEvent
	#tag Event , Description = 55736572206861732070726573736564205B63617272696167652072657475726E5D
		Sub Pressed(searchString as String)
		  searchProductByProduct_Type_Name
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonSave
	#tag Event
		Sub Clicked()
		  BarcodeGeneratePDF.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportAsCSV
	#tag Event
		Sub Clicked()
		  Var csv As String = ListBoxProductAttributes.ExportToCSV
		  
		  Var csvType As New FileType
		  csvType.Name = "Comma Separated Values"
		  csvType.Extensions = "csv"
		  Var saveFile As FolderItem = FolderItem.ShowSaveFileDialog(csvType, "Blueglanz: Product Inventory")
		  
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
#tag Events TextFieldSearch
	#tag Event
		Sub TextChanged()
		  If Me.Text = "" Then
		    ListBoxProducts.RemoveAllRows
		  End If
		  fetchResponseProducts
		End Sub
	#tag EndEvent
	#tag Event , Description = 55736572206861732070726573736564205B63617272696167652072657475726E5D
		Sub Pressed(searchString as String)
		  searchProductByProduct_Type_Name
		  
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
		  base.AddMenu( New MenuItem("Update Product"))
		  base.AddMenu( New MenuItem("Restock"))
		  base.AddMenu( New MenuItem("Delete"))
		  
		  // Add a Separator
		  base.AddMenu( New MenuItem(MenuItem.TextSeparator))
		  
		  // Add a sub menu
		  'Var submenu As New MenuItem("Rent")
		  
		  'base.AddMenu(submenu)
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  If hitItem <> Nil Then
		    Select Case hitItem.Value
		    Case "Update Product"
		      If Me.ListIndex > -1 Then
		        selectedProduct = Me.RowTag(Me.ListIndex)
		        IsEditing = True
		        
		        product_id = selectedProduct.Value("id")
		        product_size = DecodeURLComponent(selectedProduct.Value("size"))
		        product_color = DecodeURLComponent(selectedProduct.Value("color"))
		        product_stock = DecodeURLComponent(selectedProduct.Value("stock"))
		        product_price = DecodeURLComponent(Format(selectedProduct.Value("price"), "###,###, ###.00"))
		        product_no = DecodeURLComponent(selectedProduct.Value("style_no"))
		        product_description = DecodeURLComponent(selectedProduct.Value("description"))
		        product_id_generated = DecodeURLComponent(selectedProduct.Value("barcode"))
		        
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
		        product_stock = selectedProduct.Value("stock")
		        'if product_stock.ToInteger < 1 then
		        WindowPProductConfirmDelete.ShowModal
		        'Else
		        'MessageBox("Cannot delete a product with active stock.")
		        'End If
		        
		      End If
		    End Select
		    
		    
		    Return True
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Me.SelectedRowIndex >= 0 Then
		    selectedProduct = Me.RowTag(Me.SelectedRowIndex)
		    'product_attribute_id = selectedProduct.Value("id")
		    product_size = selectedProduct.Value("size")
		    product_color = selectedProduct.Value("color")
		    product_description = selectedProduct.Value("description")
		    product_price = selectedProduct.Value("price")
		    product_id_generated = selectedProduct.Value("barcode")
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
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
#tag Events ButtonProductCount
	#tag Event
		Sub Open()
		  Me.ButtonColor = accentColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  WindowProduct_Count.show
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
#tag Events ButtonRefresh
	#tag Event
		Sub Open()
		  Me.ButtonColor = primaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  FetchResponse_ProductCategory
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
