#tag Window
Begin ContainerControl POSViewIndex
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
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   104
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
         TextAlignment   =   0
         TextColor       =   &cFFFFFF00
         Tooltip         =   ""
         Top             =   46
         Transparent     =   True
         Underline       =   False
         Value           =   "Point of Sale"
         Visible         =   True
         Width           =   316
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
      BottomRightColor=   &c0000FF00
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   396
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   106
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   134
      TopLeftColor    =   &c0000FF00
      Transparent     =   False
      Visible         =   True
      Width           =   659
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
         ColumnCount     =   8
         ColumnWidths    =   "60,60,60,100,100,300,150,0"
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
         HasHorizontalScrollbar=   True
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   202
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         InitialValue    =   "Size	Color	Stock	Unit Price	Style No.	Description	Barcode	ID"
         Italic          =   False
         Left            =   29
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   308
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   619
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin TextField TextFieldQty
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
         FontSize        =   20.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   40
         Hint            =   "Quantity"
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   484
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   256
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   112
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
         FontSize        =   15.0
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
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   256
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Value1          =   ""
         Visible         =   True
         Width           =   148
      End
      Begin BigIconButton IconButtonAddToCart
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   758376447
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   608
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   20
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   256
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin BigIconButton IconButtonRefresh
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
         Left            =   232
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   22
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Refresh"
         Top             =   256
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
         Left            =   180
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   26
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Search"
         Top             =   256
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin CustomComboBox CustomComboBox_TransactionType
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
         InitialParent   =   "RoundRectangle1"
         InitialValue    =   "Sale\r\nRental\r\n"
         Italic          =   False
         Left            =   508
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   27
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   188
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   140
      End
      Begin CustomComboBox CustomComboBox_ProductCategory
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
         InitialParent   =   "RoundRectangle1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   508
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   28
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   222
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   140
      End
      Begin Label Label_TransactionType
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   15.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   369
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   29
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Transaction Type:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   188
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   127
      End
      Begin Label Label_TransactionType1
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   15.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   369
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   30
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Product Category:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   222
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   139
      End
      Begin Label Label_TransactionType2
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   25.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   31
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Transaction Information:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   154
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   297
      End
   End
   Begin CustomRectangle RoundRectangle2
      AllowAutoDeactivate=   True
      BorderThickness =   1.0
      BottomRightColor=   &c0000FF00
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   123
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   -7
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   110
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   868
      TopLeftColor    =   &c0000FF00
      Transparent     =   False
      Visible         =   True
      Width           =   659
   End
   Begin CustomRectangle Rectangle1
      AllowAutoDeactivate=   True
      BorderThickness =   1.0
      BottomRightColor=   &c0000FF00
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   684
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   680
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   131
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   134
      TopLeftColor    =   &c0000FF00
      Transparent     =   False
      Visible         =   True
      Width           =   293
      Begin BigIconButton IconButtonRemoveFromCart
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   100829183
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Left            =   924
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Remove Item"
         Top             =   191
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin Label TotalCost
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   20.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   842
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   670
         Transparent     =   True
         Underline       =   False
         Value           =   ""
         Visible         =   True
         Width           =   127
      End
      Begin Label EmailLabel8
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   20.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   690
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   675
         Transparent     =   True
         Underline       =   False
         Value           =   "Grand Total: "
         Visible         =   True
         Width           =   122
      End
      Begin Label Label_Change
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   20.0
         FontUnit        =   0
         Height          =   30
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   690
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Change:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   739
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   122
      End
      Begin Label Label_AmountTendered
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   20.0
         FontUnit        =   0
         Height          =   30
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   690
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Amount Tendered:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   702
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   173
      End
      Begin TextField1 FieldAmountTendered
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
         Height          =   30
         Hint            =   ""
         Hint1           =   ""
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         IsPassword      =   False
         Italic          =   False
         Left            =   714
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   706
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Value1          =   ""
         Visible         =   True
         Width           =   250
      End
      Begin BigIconButton IconButtonClear
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   555919359
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Left            =   875
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Clear Orders"
         Top             =   191
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin SmallButton ButtonSave
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   "Save Payment"
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   30
         Icon            =   1769541631
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Left            =   791
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   2
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   783
         Transparent     =   True
         Visible         =   True
         Width           =   173
      End
      Begin CustomListbox ListBoxProductAttributes1
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
         ColumnWidths    =   "60,60,70,150,150,150,0"
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
         HasHorizontalScrollbar=   True
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   415
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         InitialValue    =   "Qty	Size	Color	Description	Unit Price	Total Unit Price	ID"
         Italic          =   False
         Left            =   690
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   243
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   274
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin SmallButton SmallButtonNew
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   "Add"
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   30
         Icon            =   886433791
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Left            =   816
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   154
         Transparent     =   True
         Visible         =   True
         Width           =   148
      End
      Begin Label FieldChange
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   20.0
         FontUnit        =   0
         Height          =   30
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   842
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   739
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   122
      End
      Begin Label Label_Change1
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   20.0
         FontUnit        =   0
         Height          =   30
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   816
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "₱"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   670
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   14
      End
      Begin Label Label_Change2
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   20.0
         FontUnit        =   0
         Height          =   30
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   816
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   16
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "₱"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   739
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   14
      End
   End
   Begin Rectangle ContainerNewProduct
      AllowAutoDeactivate=   True
      BorderThickness =   1.0
      BottomRightColor=   &c0000FF00
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   299
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   133
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   -334
      TopLeftColor    =   &c0000FF00
      Transparent     =   False
      Visible         =   False
      Width           =   652
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
         InitialParent   =   "ContainerNewProduct"
         Left            =   489
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   -92
         Transparent     =   True
         Visible         =   True
         Width           =   125
      End
      Begin InputField P_Qty
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         HasBackgroundColor=   False
         Height          =   62
         Hint            =   ""
         InitialParent   =   "ContainerNewProduct"
         IsPassword      =   False
         LabelText       =   "Quantity"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   -314
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin InputField P_Size
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         HasBackgroundColor=   False
         Height          =   62
         Hint            =   ""
         InitialParent   =   "ContainerNewProduct"
         IsPassword      =   False
         LabelText       =   "Size"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   14
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   -240
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin InputField P_Color
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         HasBackgroundColor=   False
         Height          =   62
         Hint            =   ""
         InitialParent   =   "ContainerNewProduct"
         IsPassword      =   False
         LabelText       =   "Color"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   -166
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin InputField P_Description
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         HasBackgroundColor=   False
         Height          =   62
         Hint            =   ""
         InitialParent   =   "ContainerNewProduct"
         IsPassword      =   False
         LabelText       =   "Description"
         Left            =   332
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   16
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   -314
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin InputField P_UnitPrice
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         HasBackgroundColor=   False
         Height          =   62
         Hint            =   ""
         InitialParent   =   "ContainerNewProduct"
         IsPassword      =   False
         LabelText       =   "Unit Price"
         Left            =   332
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   17
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   -240
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin SmallButton SmallButtonSave1
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
         InitialParent   =   "ContainerNewProduct"
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   18
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   -92
         Transparent     =   True
         Visible         =   True
         Width           =   125
      End
   End
   Begin InputTxtArea TextAreaDescription
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   False
      Height          =   70
      Hint            =   ""
      InitialParent   =   ""
      LabelText       =   "Description"
      Left            =   97
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   107
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   1426
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   271
   End
   Begin InputField TextFieldQuantity
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   False
      EraseBackground =   True
      HasBackgroundColor=   False
      Height          =   62
      Hint            =   ""
      InitialParent   =   ""
      IsPassword      =   False
      LabelText       =   "Number of Items"
      Left            =   9
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   100
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   1314
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   315
   End
   Begin InputField SearchFieldBarcode
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   False
      Height          =   62
      Hint            =   ""
      InitialParent   =   ""
      IsPassword      =   False
      LabelText       =   "Number of Items"
      Left            =   489
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   1736
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   315
   End
   Begin Label EmailLabel7
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
      Left            =   78
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   1790
      Transparent     =   True
      Underline       =   False
      Value           =   "TOTAL:"
      Visible         =   True
      Width           =   52
   End
   Begin SimpleButton NextPage3
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
      Left            =   78
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Right           =   0
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   1832
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
   Begin PushButton PushButton2
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Multiply"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   78
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   1791
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   68
   End
   Begin PushButton PushButton1
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Button"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   252
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   1776
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin IconButton1 ButtonChooseDate1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   22
      Icon            =   2042361855
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   441
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   1776
      Transparent     =   True
      Visible         =   True
      Width           =   30
   End
   Begin InputField TextFieldDateReturn
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   False
      Height          =   65
      Hint            =   ""
      InitialParent   =   ""
      IsPassword      =   False
      LabelText       =   "Expected Date Return"
      Left            =   78
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   1733
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   350
   End
   Begin InputField TextFieldDeposit
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   False
      Height          =   65
      Hint            =   ""
      InitialParent   =   ""
      IsPassword      =   False
      LabelText       =   "Deposit"
      Left            =   78
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   1636
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   350
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
      Left            =   78
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
      Top             =   1725
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value1          =   ""
      Visible         =   True
      Width           =   242
   End
   Begin InputField TextFieldAmount
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   False
      EraseBackground =   True
      HasBackgroundColor=   False
      Height          =   62
      Hint            =   ""
      InitialParent   =   ""
      IsPassword      =   False
      LabelText       =   "Total Amount"
      Left            =   637
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   1636
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   315
   End
   Begin SmallButton ButtonCalculate
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Caption         =   "Calculate"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Icon            =   1205766143
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   870
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   135
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   1314
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
   Begin SmallButton ButtonUndoCalculate
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Caption         =   "Undo"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Icon            =   220715007
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   720
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   137
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   1314
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
   Begin CustomRectangle CustomRectangle1
      AllowAutoDeactivate=   True
      BorderThickness =   1.0
      BottomRightColor=   &c0000FF00
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   276
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   138
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   542
      TopLeftColor    =   &c0000FF00
      Transparent     =   False
      Visible         =   True
      Width           =   659
      Begin Label Label_ClientInformation
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   25.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "CustomRectangle1"
         Italic          =   False
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Client Information:"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   562
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   239
      End
      Begin InputField TextFieldContactNo
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         HasBackgroundColor=   False
         Height          =   62
         Hint            =   ""
         InitialParent   =   "CustomRectangle1"
         IsPassword      =   False
         LabelText       =   "Contact No."
         Left            =   341
         LockBottom      =   False
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   611
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin BigIconButton ButtonAddNewClient
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
         InitialParent   =   "CustomRectangle1"
         Left            =   601
         LockBottom      =   False
         LockedInPosition=   True
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Add New Customer"
         Top             =   559
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin InputField TextFieldAddress
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         HasBackgroundColor=   False
         Height          =   65
         Hint            =   ""
         InitialParent   =   "CustomRectangle1"
         IsPassword      =   False
         LabelText       =   "Address"
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   706
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin SearchPopupMenu SearchPopupMenuClient
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         HasBackgroundColor=   False
         Height          =   62
         Hint            =   ""
         InitialParent   =   "CustomRectangle1"
         LabelText       =   "Client Name"
         Left            =   29
         LockBottom      =   True
         LockedInPosition=   True
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   611
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
   End
   Begin InputField TextFieldLastName
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   False
      Height          =   65
      Hint            =   ""
      InitialParent   =   ""
      IsPassword      =   False
      LabelText       =   "Last Name"
      Left            =   321
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   139
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   1003
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   300
   End
   Begin InputField TextFieldFirstName
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   False
      Height          =   65
      Hint            =   ""
      InitialParent   =   ""
      IsPassword      =   False
      LabelText       =   "First Name"
      Left            =   9
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   140
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   1003
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   300
   End
   Begin TextField1 FieldChangess
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
      Height          =   30
      Hint            =   ""
      Hint1           =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      IsPassword      =   False
      Italic          =   False
      Left            =   740
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   141
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   917
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value1          =   ""
      Visible         =   True
      Width           =   250
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  FetchResponseProducts
		  Populate_ComboboxClient
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CalculateTotalPrice()
		  totalPrice = 0
		  
		  Var price as double = 0
		  
		  For row As Integer = 0 to ListBoxProductAttributes1.ListCount-1
		    //totalDownpayment
		    Var strPrice As String = ListBoxProductAttributes1.Cell(row, 5)
		    strPrice = strPrice.ReplaceAll(",", "").ReplaceAll("₱","")
		    
		    price = val(strPrice)
		    totalPrice = price + totalPrice
		  Next
		  
		  
		  TotalCost.Value = Format(totalPrice, "###,###.00")
		  Var strChange As String =   str(TotalCost.Text.ToDouble - FieldAmountTendered.Value1.ToDouble)
		  FieldChange.Text = Format(strChange.ToDouble,"###,###, ###.00")
		  
		  
		  'TextFieldAmount.Value = Format(totalPrice, "###,###.00")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CalculateTotalPriceRemove()
		  Var price as double = 0 
		  
		  For row As Integer = 0 to ListBoxProductAttributes1.ListCount-1
		    //totalDownpayment
		    Var strPrice As String = ListBoxProductAttributes1.Cell(row, 3)
		    strPrice = strPrice.ReplaceAll(",", "")
		    
		    price = val(strPrice)
		    totalPrice = price + totalPrice
		    
		  Next
		  
		  TotalCost.Value = Format(totalPrice, "###,###.00")
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CalculateTotalQuantity()
		  TotalQty = 0
		  Var quantity as integer = 0 
		  
		  For row As Integer = 0 to ListBoxProductAttributes1.ListCount-1
		    //totalDownpayment
		    Var strQuantity As String = ListBoxProductAttributes1.Cell(row, 0)
		    strQuantity = strQuantity.ReplaceAll(",", "")
		    
		    quantity = val(strQuantity)
		    
		    TotalQty = quantity + TotalQty
		  Next
		  
		  TextFieldQuantity.Value = TotalQty.ToString
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CalculateTotalUnitPrice()
		  Var price as double = 0
		  
		  For row As Integer = 0 to ListBoxProductAttributes1.ListCount-1
		    //totalDownpayment
		    Var strPrice As String = ListBoxProductAttributes1.Cell(row, 4)
		    strPrice = strPrice.ReplaceAll(",", "")
		    
		    price = val(strPrice)
		    
		    totalPrice = price + totalPrice
		    
		    
		  Next
		  
		  TextFieldAmount.Value = Format(totalPrice, "###,###.00")
		  TotalCost.Value = Format(totalPrice, "###,###.00")
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckClientDetail()
		  If SearchPopupMenuClient.Value = "" AND  TextFieldAddress.Value = "" AND TextFieldContactNo.Value = "" Then
		    MessageBox("Client Information is needed.")
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FetchResponseFilterProductCategory()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var data as new Dictionary
		  data.Value("product_category_id") = productTypeIdHolder
		  api.SetFormData(data)
		  
		  Var response As String
		  response = api.Post(App.URL + "/filter/by_category", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    populateListBoxProductAttr(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FetchResponseProductCategory()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As String
		  response = api.Post(App.URL + "/product_category/fetch_all", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    PopulateProductCategories(responseData)
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
		  
		  Var response As String
		  response = api.Post(App.URL + "/products/fetch_all", 2)
		  
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    populateListBoxProductAttr(responseData)
		    
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
		Sub InsertNewClient()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As JSONItem
		  Var address As String = App.URL + "/client/insert"
		  
		  Var clients As New Dictionary
		  clients.Value("first_name") = SearchPopupMenuClient.Value
		  clients.Value("last_name") = TextFieldLastName.Value
		  clients.Value("address") = EncodeURLComponent(TextFieldAddress.Value)
		  clients.Value("contact_no") = TextFieldContactNo.Value
		  api.SetFormData(clients)
		  
		  response = New JSONItem(api.Post(address, 2))
		  
		  
		  if response.Value("status") = 200 then
		    Self.Close
		  else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InsertNewTransaction()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  // Input Validation
		  If SearchPopupMenuClient.Value = "" Then
		    'MessageBox("Client's Name is required.")
		    Return
		  ElseIf TextFieldContactNo.Value = "" Then
		    'MessageBox("Contact number is required.")
		    Return
		  End If
		  
		  Var data as new Dictionary
		  data.Value("client_id") = client_id.ToString
		  data.Value("client_name") = EncodeURLComponent(SearchPopupMenuClient.Value)
		  data.Value("contact_no") = EncodeURLComponent(TextFieldContactNo.Value)
		  'data.Value("description") = EncodeURLComponent(TextAreaDescription.Value)
		  data.Value("description") = EncodeURLComponent(" ")
		  data.Value("quantity") = TextFieldQuantity.Value.ToInteger
		  Var updatedStock As Integer
		  updatedStock = product_stock.ToInteger - data.Value("quantity")
		  data.Value("date_returned") = TextFieldDateReturn.Value
		  data.Value("transaction_type") = CustomComboBox_TransactionType.SelectedRow
		  data.Value("amount") = TotalCost.Text.ReplaceAll(",","")
		  data.Value("deposit") = "0.0"
		  api.SetFormData(data)
		  
		  Var response As New JSONItem(api.Post(App.URL + "/transactions/insert", 2))
		  
		  If response.HasName("insert_id") Then
		    mLastInsertedID = response.Value("insert_id")
		    
		    If CustomComboBox_TransactionType.SelectedRow = "Sale" Then
		      Insert_ProductSoldList
		    Else
		      Insert_ProductRentedList
		    End If
		    
		    payment
		    'PrintSaleReceipt
		  Else
		    Return
		  end if
		  
		  if response.Value("status") = 200 then
		    
		    MessageBox("Successfully inserted.")
		    SearchPopupMenuClient.Value = ""
		    TextFieldContactNo.Value = "" 
		    TextAreaDescription.Value = "" 
		    TextFieldDateReturn.Value = "" 
		    TextFieldQuantity.Value = "" 
		    TotalCost.Text = ""
		    FieldAmountTendered.Value1 = ""
		    FieldChange.Text = "" 
		    ListBoxProductAttributes1.RemoveAllRows
		    TotalCost.Value = ""
		    totalPrice = 0.0
		    
		    // Update Stock
		    for row as integer = 0 to ListBoxProductAttributesPOS.listcount-1
		      
		      Var stock as new Dictionary
		      stock.Value("stock") = ListBoxProductAttributesPOS.Cell(row,2)
		      stock.Value("id") = ListBoxProductAttributesPOS.CellValueAt(row,7)
		      api.SetFormData(stock)
		      
		      Var responsestock As New JSONItem(api.Post(App.URL + "/products/update_stock", 2))
		      
		    next
		  else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		  
		  
		  
		  // T
		  
		  'data.Value("report_id") = "78" 
		  'MessageBox(mLastInsertedID.ToString)
		  'Break
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Insert_ProductRentedList()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  For row As Integer = 0 to ListBoxProductAttributes1.ListCount-1
		    
		    
		    
		    Var p as new Dictionary
		    p.Value("transaction_rental_id") = mLastInsertedID.ToString
		    p.Value("qty") = ListBoxProductAttributes1.CellValueAt(row, 0)
		    p.Value("size") = ListBoxProductAttributes1.CellValueAt(row, 1)
		    p.Value("color") = ListBoxProductAttributes1.CellValueAt(row, 2)
		    p.Value("description") = EncodeURLComponent(ListBoxProductAttributes1.CellValueAt(row, 3))
		    
		    Var dblprice As string = ListBoxProductAttributes1.CellValueAt(row, 5)
		    Var result As String
		    result = dblprice.ReplaceAll(",","")
		    result = dblprice.ReplaceAll("₱ ","")
		    
		    p.Value("price") = result.ReplaceAll(",","")
		    
		    p.Value("product_rental_id") = ListBoxProductAttributes1.CellValueAt(row, 6)
		    api.SetFormData(p)              
		    
		    Var response As New JSONItem(api.Post(App.URL + "/product_rented_list/insert", 3))
		    
		    if response.Value("status") = 200 then
		      'MessageBox("Done.")
		    else
		      MsgBox "An error occured " + response.Value("error_message")
		    end if
		  Next
		  
		  
		  'Var updatedStock As Integer
		  'updatedStock = product_stock.ToInteger
		  ' - ListBoxProductAttributes1.CellValueAt(row, 0)
		  '
		  'Var stock as new Dictionary
		  'stock.Value("stock") = updatedStock
		  'stock.Value("id") = ListBoxProductAttributes1.CellValueAt(row, 5)
		  'api.SetFormData(stock)
		  '
		  'Var responsestock As New JSONItem(api.Post(App.URL + "/product_attributes/update_stock", 2))
		  'Var hasChecked as Boolean = False
		  'ListBoxProductAttributes1.Selected(row) = True
		  'Var noOfDays As String = ListBoxProductAttributes1.CellValueAt(row, 2)
		  'Var totalUnitPrice As String = ListBoxProductAttributes1.CellValueAt(row, 3).ReplaceAll(",","").ReplaceAll("₱ ","")
		  'Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Insert_ProductSoldList()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  For row As Integer = 0 to ListBoxProductAttributes1.ListCount-1
		    
		    
		    
		    Var p as new Dictionary
		    p.Value("transaction_sale_id") = mLastInsertedID.ToString
		    p.Value("qty") = ListBoxProductAttributes1.CellValueAt(row, 0)
		    p.Value("size") = ListBoxProductAttributes1.CellValueAt(row, 1)
		    p.Value("color") = ListBoxProductAttributes1.CellValueAt(row, 2)
		    p.Value("description") = EncodeURLComponent(ListBoxProductAttributes1.CellValueAt(row, 3))
		    
		    Var dblprice As string = ListBoxProductAttributes1.CellValueAt(row, 5)
		    Var result As String
		    result = dblprice.ReplaceAll(",","")
		    result = dblprice.ReplaceAll("₱ ","")
		    
		    p.Value("price") = result.ReplaceAll(",","")
		    
		    p.Value("product_sold_id") = ListBoxProductAttributes1.CellValueAt(row, 6)
		    
		    api.SetFormData(p)              
		    
		    Var response As New JSONItem(api.Post(App.URL + "/product_sold_list/insert", 3))
		    
		    if response.Value("status") = 200 then
		      'MessageBox("Done.")
		      'Var Selected_ID as new Dictionary
		      'Selected_ID.Value("transaction_sale_ID") = mLastInsertedID.ToString
		      'api.SetFormData(Selected_ID)
		      'Var responseForPDF As New JSONItem(api.Post(App.URL + "/product_sold_list/select_by_transaction_sold_id", 3))
		      '
		      
		      'Var reports As New JSONItem
		      'Var product_types as JSONItem = responseForPDF.Child("rows")
		      'for i as integer = 0 to product_types.Count - 1
		      'Var product_type as JSONItem = product_types.ChildAt(i)
		      'product_types.Add(product_type)
		      'Next
		      '
		      ''ListBoxProductAttributes1
		      'responseForPDF.Value("product_types") = product_types
		      '
		      'Var pdf As New MyPDF(product_types)
		      'pdf.GenerateSalesReceipt
		      
		    else
		      MsgBox "An error occured " + response.Value("error_message")
		    end if
		  Next
		  
		  
		  'Var updatedStock As Integer
		  'updatedStock = product_stock.ToInteger
		  ' - ListBoxProductAttributes1.CellValueAt(row, 0)
		  '
		  'Var stock as new Dictionary
		  'stock.Value("stock") = updatedStock
		  'stock.Value("id") = ListBoxProductAttributes1.CellValueAt(row, 5)
		  'api.SetFormData(stock)
		  '
		  'Var responsestock As New JSONItem(api.Post(App.URL + "/product_attributes/update_stock", 2))
		  'Var hasChecked as Boolean = False
		  'ListBoxProductAttributes1.Selected(row) = True
		  'Var noOfDays As String = ListBoxProductAttributes1.CellValueAt(row, 2)
		  'Var totalUnitPrice As String = ListBoxProductAttributes1.CellValueAt(row, 3).ReplaceAll(",","").ReplaceAll("₱ ","")
		  'Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Payment()
		  Var sale As New POSViewIndex
		  sale.InsertNewTransaction
		  
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var data as new Dictionary
		  data.Value("transaction_id") = mLastInsertedID.ToString
		  data.Value("total_amount") = TotalCost.Text.ReplaceAll(",","")
		  data.Value("amount_tendered") = FieldAmountTendered.Value1.ReplaceAll(",","")
		  data.Value("change") = FieldChange.Text.ReplaceAll(",","")
		  api.SetFormData(data)
		  
		  Var response As New JSONItem(api.Post(App.URL + "/payments/insert", 2))
		  
		  if response.Value("status") = 200 then
		    'MessageBox(response.ToString)
		  else
		    MessageBox("Product type already exist!")
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populateListBoxProductAttr(responseData As JSONItem)
		  ListBoxProductAttributesPOS.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  // POPULATE LISTBOX
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
		    
		    ListBoxProductAttributesPOS.AddRow(product_size, product_color, product_stock,product_price,no,description,product_id_generated,id)
		    ListBoxProductAttributesPOS.RowTag(ListBoxProductAttributesPOS.LastIndex) = prod_attribute
		    
		    
		    
		  Next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopulateListBoxReports(responsedata as JSONItem)
		  'ListboxReports.RemoveAllRows
		  '
		  'if ResponseData.Value("row_count") <= 0 then
		  'return
		  'end if
		  '
		  'Var sales_reports as JSONItem = ResponseData.Child("rows")
		  'for i as integer = 0 to sales_reports.Count - 1
		  'Var sales_report as JSONItem = sales_reports.ChildAt(i)
		  '
		  'Var client_name As String = DecodeURLComponent(sales_report.Value("client_name"))
		  'Var contact_no As String = DecodeURLComponent(sales_report.Value("contact_no"))
		  'Var description As String = DecodeURLComponent(sales_report.Value("description"))
		  'Var quantity As String = sales_report.Value("quantity")
		  'Var sold As String = DecodeURLComponent(sales_report.Value("sold"))
		  'Var rented As String = DecodeURLComponent(sales_report.Value("rented"))
		  'Var date_returned As String = DecodeURLComponent(sales_report.Value("date_returned"))
		  'Var deposit As String = DecodeURLComponent(sales_report.Value("deposit"))
		  'Var amount As String = format(sales_report.Value("amount"), "\₱\ ###,###, ###.00")
		  '
		  'Var qty_damaged_item As String = DecodeURLComponent(sales_report.Value("qty_damageditem"))
		  'Var qty_returned_item As String = sales_report.Value("qty_returned_item")
		  'Var damage_fee As string = format(sales_report.Value("damaged_fee"), "\₱\ ###,###, ###.00")
		  '
		  'Var return_status As String = DecodeURLComponent(sales_report.Value("returned_status"))
		  '
		  'ListboxReports.ColumnAlignmentAt(6) = ListBox.Alignments.center
		  '
		  'ListboxReports.AddRow(client_name, contact_no, description, quantity,sold,rented,date_returned.ReplaceAll(" ","").ReplaceAll("00:00:00",""),deposit,amount,qty_damaged_item,damage_fee,qty_returned_item,return_status)
		  'ListboxReports.RowTag(ListboxReports.LastIndex) = sales_report
		  'Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopulateProductCategories(responseData as JSONItem)
		  CustomComboBox_ProductCategory.RemoveAllRows
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var product_types as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to product_types.Count - 1
		    Var product_type as JSONItem = product_types.ChildAt(i)
		    
		    Var id As String = DecodeURLComponent(product_type.Value("id"))
		    Var product_type_name As String = DecodeURLComponent(product_type.Value("category_name"))
		    
		    
		    CustomComboBox_ProductCategory.AddRow(product_type_name)
		    CustomComboBox_ProductCategory.RowTag(CustomComboBox_ProductCategory.LastAddedRowIndex) = product_type
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Populate_ComboboxClient()
		  // POPULATE COMBOBOX OF CLIENT/CUSTOMERS
		  
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  
		  Var response As String
		  response = api.Post(App.URL + "/client/fetch_all", 30)
		  Var responseData As New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    Dim items() As String
		    Dim tags() As Variant
		    
		    if ResponseData.Value("row_count") <= 0 then
		      return
		    Else
		      mClients = responseData.Value("rows")
		    end if
		    
		    Var amenity_types as JSONItem = responseData.Child("rows")
		    for i as integer = 0 to amenity_types.Count - 1
		      Var amenity_type as JSONItem = amenity_types.ChildAt(i)
		      
		      Var last_name As String = DecodeURLComponent(amenity_type.Value("last_name"))
		      Var first_name As String = DecodeURLComponent(amenity_type.Value("first_name"))
		      
		      Var mClientContainer as new CustomerViewIndex
		      mClientContainer.FetchClient
		      items.AddRow(last_name + ", " + first_name)
		      tags.AddRow(amenity_type)
		    Next
		    SearchPopupMenuClient.AddList(items,tags)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Populate_Order()
		  Var qty as String
		  Var size as String
		  Var _color as String
		  Var price as String
		  Var desc as String
		  Var id as String
		  qty = product_stock
		  desc = product_description
		  size = product_size
		  _color = product_color
		  price = product_price 
		  id =  product_attribute_id.ToString
		  
		  ListBoxProductAttributes1.AddRow(qty,size,_color,desc,price,id)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Populate_Order_PassData()
		  Populate_Order
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PrintSaleReceipt()
		  Var data As New JSONItem
		  
		  Var reports As New JSONItem
		  For i As Integer = 0 To ListBoxProductAttributes1.RowCount - 1
		    Var report As JSONItem = ListBoxProductAttributes1.RowTagAt(i)
		    reports.Add(report)
		  Next
		  
		  data.Value("reports") = reports
		  
		  Var pdf As New MyPDF(data)
		  pdf.GenerateSalesReceipt
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProdAttrSelectByID()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var Selected_ID as new Dictionary
		  Selected_ID.Value("id") = report_id
		  api.SetFormData(Selected_ID)
		  
		  Var response As String
		  response = api.Post(App.URL + "/product_attributes/select_by_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    Var prodattributes as JSONItem = responseData.Child("rows")
		    Var attribute As JSONItem = prodattributes.ChildAt(0)
		    product_stock = DecodeURLComponent(attribute.Value("stock"))
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
		Sub ReturnedStatus()
		  
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  
		  Var ResctockAmt As Integer = quantity
		  Var NewStock As Integer = product_stock.ToInteger +  ResctockAmt
		  
		  
		  
		  Var returnedproduct As String = "Returned"
		  
		  
		  Var data As New Dictionary
		  data.Value("qty_damageditem") = TotalQtyDamaged
		  data.Value("damaged_fee")     = TotalQtyDamagedFee
		  data.Value("qty_returned_item") = TotalQtyRented
		  data.Value("returned_status") =  returnedproduct
		  
		  
		  data.Value("id") = selected_report_id.ToString
		  
		  api.SetFormData(data)
		  
		  Var address as string = App.URL + "/report/returned_status"
		  responseData = New JSONItem(api.Post(address, 2))
		  
		  
		  If responseData.Value("status") = 200 Then
		    MessageBox(responseData.ToString)
		    
		    
		    'Self.Close
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message")
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReturnedStock(TotalQtyRented as double)
		  
		  ProdAttrSelectByID
		  
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  'Var property_of_CheckReturnStatus As New WindowCheckReturnStatus
		  Var ResctockAmt As Integer = TotalQtyRented
		  Var NewStock As Integer = product_stock.ToInteger +  ResctockAmt
		  
		  
		  
		  Var returnedproduct As String = "Returned"
		  Var data As New Dictionary
		  data.Value("stock") =  NewStock.ToString
		  data.Value("id") = report_id.ToString
		  
		  
		  api.SetFormData(data)
		  
		  Var address as string = App.URL + "/product_attributes/restock"
		  responseData = New JSONItem(api.Post(address, 2))
		  
		  
		  If responseData.Value("status") = 200 Then
		    MessageBox(responseData.ToString)
		    ReturnedStatus
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message")
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub searchProductByProduct_Type_Name()
		  'Var api As New HTTPSocket
		  '
		  'api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  'api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  '
		  'Var p As New Dictionary
		  'p.Value("barcode") = TextFieldSearch1.Text
		  'api.SetFormData(p)
		  '
		  'TextFieldSearch1.Text = "Master Jerico The Great"
		  'Var response As String
		  '
		  'App.URL = "http://127.0.0.1:8000"
		  '
		  'response = api.Get(App.URL + "/products/search_by_barcode/" + TextFieldSearch1.Text, 2)
		  'responseData = New JSONItem(response)
		  '
		  'If responseData.Value("status") = 200 Then
		  'populateListBoxProductAttr(responseData)
		  'Else
		  'MsgBox "An error occured " + responseData.Value("error_message") 
		  'End If
		  
		  
		  // Get or Fetch Data using URL Connection and FastAPI
		  Var api As New URLConnection
		  Var response As String = api.SendSync("GET", "http://127.0.0.1:8000/products/search_by_barcode?barcode=" + TextFieldSearch1.Text)
		  Break
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateStock()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		date_rented As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		FilterProdType As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private jsonSelectedClient As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		jsonSelectedUser As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		json_FilterProdType As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		json_product_type As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mClients As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		mHoveredColumn As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mHoveredRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mSelectedDate As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		product_type_id_combobox As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		responseData As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		responseData1 As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		SelectedProduct_qty As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TotalPrice As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		TotalQty As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Untitled As Integer
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
		  '// Add some items
		  'base.AddMenu( New MenuItem("Update Attribute"))
		  'base.AddMenu( New MenuItem("Restock"))
		  'base.AddMenu( New MenuItem("Delete"))
		  '
		  '// Add a Separator
		  'base.AddMenu( New MenuItem(MenuItem.TextSeparator))
		  '
		  '// Add a sub menu
		  'Var submenu As New MenuItem("Manage Sale")
		  '
		  'base.AddMenu(submenu)
		  '
		  'Return True
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
		    Case "Manage Sale"
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
		    'productTypeIdHolder = selectedProduct.Value("product_category_id")
		    'MessageBox(productTypeIdHolder)
		    product_attribute_id = selectedProduct.Value("id")
		    product_size = selectedProduct.Value("size")
		    product_color = selectedProduct.Value("color")
		    product_description = selectedProduct.Value("description")
		    product_price = selectedProduct.Value("price")
		    product_id_generated = selectedProduct.Value("barcode")
		  End If
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextFieldQty
	#tag Event
		Sub TextChange()
		  ''
		  'For row As Integer = 0 to ListBoxProductAttributesPOS.SelectedRowCount
		  'ListBoxProductAttributesPOS.CellValueAt(SelectedRowIndex,2).ToInteger
		  'num1 = num1 - Me.Value.ToInteger
		  'next
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
#tag Events IconButtonAddToCart
	#tag Event
		Sub Clicked()
		  Var row1 As Integer = ListBoxProductAttributesPOS.SelectedRowIndex
		  
		  //Check if inputted quantity is not bigger than the stock.
		  Var txtfld_qty As Integer
		  txtfld_qty = TextFieldQty.Text.ToInteger
		  
		  Var from_stock As Integer = ListBoxProductAttributesPOS.CellValueAt(row1,2).ToDouble
		  
		  If txtfld_qty > from_stock Then
		    MessageBox("No enough stock available.")
		    Return
		  End If
		  
		  //Add to Cart 
		  If TextFieldQty.Value = "" Then
		    MessageBox("Invalid quantity.")
		  Else
		    
		    if row1 >= 0 then
		      
		      Var Stock As Integer = ListBoxProductAttributesPOS.CellValueAt(row1,2).ToDouble
		      Var UnitPrice As Double = ListBoxProductAttributesPOS.CellValueAt(row1,3).ReplaceAll("₱ ","").ReplaceAll(",","").ToDouble
		      
		      Var Qty  As Integer = TextFieldQty.Value.ToInteger
		      Var NewStockQty As Integer = Stock - Qty
		      
		      Var TotalUnitPrice As Double = Qty * UnitPrice
		      
		      ListBoxProductAttributesPOS.CellValueAt(row1,2)  = NewStockQty.ToString
		      
		      Var size as String
		      Var _color as String
		      Var price as String 
		      Var desc as String
		      Var id as String
		      Var total_unitprice As String
		      
		      
		      desc = product_description
		      size = product_size
		      _color = product_color
		      price =  Format(product_price.ToDouble, "\₱\ ###,###.00")
		      id =  product_attribute_id.ToString
		      total_unitprice = Format(TotalUnitPrice, "\₱\ ###,###.00")
		      ListBoxProductAttributes1.AddRow(qty.ToString,size,_color,DecodeURLComponent(desc),price,total_unitprice,id)
		      
		      Var order as JSONItem = ListBoxProductAttributesPOS.RowTagAt(row1)
		      
		      Var salereceipt As New JSONItem
		      // This object is manipulated like a dictionary
		      salereceipt.Value("stock") = qty.ToString
		      salereceipt.Value("size") = size
		      salereceipt.Value("color") = _color
		      salereceipt.Value("description") = DecodeURLComponent(desc)
		      salereceipt.Value("price") = price
		      salereceipt.Value("total_unitprice") = total_unitprice
		      salereceipt.Value("id") = id
		      
		      ListBoxProductAttributes1.RowTagAt(ListBoxProductAttributes1.LastAddedRowIndex) = salereceipt
		      TextFieldQty.Value = ""
		      
		    else
		      MessageBox("No selected item.")
		    end if
		  End If
		  
		  
		  
		  
		  
		  CalculateTotalPrice
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IconButtonRefresh
	#tag Event
		Sub Clicked()
		  
		  FetchResponseProducts
		  ListBoxProductAttributes1.RemoveAllRows
		  Populate_ComboboxClient
		  SearchPopupMenuClient.Value = ""
		  TextFieldContactNo.Value = "" 
		  TextAreaDescription.Value = "" 
		  TextFieldDateReturn.Value = "" 
		  TextFieldQuantity.Value = "" 
		  TextFieldAmount.Value = ""
		  TotalCost.Text = ""
		  FieldChange.Text = ""
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
#tag Events CustomComboBox_TransactionType
	#tag Event
		Sub TextChanged()
		  'Var row As Integer = ListBoxProductAttributesPOS.SelectedRowIndex
		  '
		  '
		  'If Me.SelectedRowIndex = 1 Then
		  'Var price As Integer = ListBoxProductAttributesPOS.HeaderAt.
		  ''MessageBox("This is Rental.")
		  'Else 
		  ''MessageBox("This is Sale.")
		  'End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CustomComboBox_ProductCategory
	#tag Event
		Sub Load()
		  FetchResponseProductCategory
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  If Me.ListIndex > -1 Then
		    json_product_type = Me.RowTag(Me.ListIndex)
		    productTypeIdHolder = json_product_type.Value("id")
		    FetchResponseFilterProductCategory
		    'MessageBox(productTypeIdHolder)
		  End If
		  
		  
		  'If CProductTypeComboBox.ListIndex > -1 Then
		  'product_type = CProductTypeComboBox.RowTag(CProductTypeComboBox.ListIndex)
		  'MessageBox(product_type.Value("id"))
		  ''reservation_ID = selectedProductType.Value("id")
		  ''MsgBox(selectedProductType.Value("id"))
		  'End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IconButtonRemoveFromCart
	#tag Event
		Sub Clicked()
		  Var selectedRow As Integer = ListBoxProductAttributes1.SelectedRowIndex
		  If selectedRow = -1 Then
		    Return
		  End If
		  
		  ListBoxProductAttributes1.RemoveRowAt(selectedRow)
		  CalculateTotalPrice
		  FieldAmountTendered.Text = ""
		  FieldChange.Text = ""
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TotalCost
	#tag Event
		Sub Open()
		  
		  Me.FontName = "Roboto"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EmailLabel8
	#tag Event
		Sub Open()
		  Me.FontName = "Roboto"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label_Change
	#tag Event
		Sub Open()
		  Me.Bold = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label_AmountTendered
	#tag Event
		Sub Open()
		  Me.Bold = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FieldAmountTendered
	#tag Event
		Sub TextChanged()
		  CalculateTotalPrice
		  CalculateTotalQuantity
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IconButtonClear
	#tag Event
		Sub Clicked()
		  ListBoxProductAttributes1.RemoveAllRows
		  CalculateTotalPrice
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonSave
	#tag Event
		Sub Clicked()
		  CheckClientDetail
		  InsertNewTransaction
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBoxProductAttributes1
	#tag Event
		Sub Open()
		  Me.SetDefaultProperties
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Me.ListIndex > -1 Then
		    selectedProduct = Me.RowTag(Me.SelectedRowIndex)
		    
		  End If
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  'If mHoveredRow = -1 AND mHoveredColumn = -1 Then
		  'Return
		  'End If
		  '
		  'Me.CellTypeAt(mHoveredRow, mHoveredColumn) = Listbox.CellTypes.TextField
		  'Me.EditCellAt(mHoveredRow, mHoveredColumn)
		End Sub
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  If column = 4 Then
		    Me.EditCellAt(row, column)
		  End If
		  
		  ''for row1 as Integer = 0 to Me.RowCount-1
		  'Me.EditCellAt(row, 2)
		  'Me.EditCellAt(row, 1)
		  'next
		End Function
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  totalPrice = 0
		  for row1 as Integer = 0 to ListBoxProductAttributes1.LastRowIndex
		    If ListBoxProductAttributes1.CellValueAt(row1,0) = "" AND ListBoxProductAttributes1.CellValueAt(row1,4) = "" Then
		      Return
		    Else
		      Var uPrice As Double = ListBoxProductAttributes1.CellValueAt(row1,4).ReplaceAll("₱ ","").ReplaceAll(",","").ToDouble
		      Var qty As Integer = ListBoxProductAttributes1.CellValueAt(row1,0).ToDouble
		      
		      Var total As Double  = uPrice * qty
		      
		      ListBoxProductAttributes1.CellValueAt(row1, 5) = Format(total, "\₱\ ###,###.00")
		      //Start: Compute Total_Unit_Price
		      
		      Var sPrice as double = 0 
		      Var strPrice As String = ListBoxProductAttributes1.Cell(row1, 5).ReplaceAll("₱ ","").ReplaceAll(",","")
		      
		      sPrice = val(strPrice)
		      totalPrice = sPrice + totalPrice
		    End If
		    
		    
		    'totalPrice = 0
		    //End: Compute Total_Unit_Price
		    
		    'MessageBox(sPrice.ToString)
		  next
		  'MessageBox(totalPrice.ToString)
		  TotalCost.Text = Format(totalPrice, "###,###.00")
		  FieldChange.Text = "0.00"
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonNew
	#tag Event
		Sub Open()
		  ContainerNewProduct.Top = Me.Top
		  ContainerNewProduct.Left = Me.Left + Me.Width + - 570
		End Sub
	#tag EndEvent
	#tag Event
		Sub Clicked()
		  ContainerNewProduct.Visible = True
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  ContainerNewProduct.Visible = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FieldChange
	#tag Event
		Sub Open()
		  Me.Bold = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label_Change1
	#tag Event
		Sub Open()
		  Me.Bold = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label_Change2
	#tag Event
		Sub Open()
		  Me.Bold = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ContainerNewProduct
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonSave
	#tag Event
		Sub Clicked()
		  Var qty  As Integer = P_Qty.Value.ToInteger
		  product_size = P_Size.Value
		  product_color = P_Color.Value
		  product_description = P_Description.Value
		  product_price = P_UnitPrice.Value
		  product_price =  Format(product_price.ToDouble, "\₱\ ###,###.00")
		  
		  Var TotalUnitPrice As Double = qty * product_price.ReplaceAll(",","").ReplaceAll("₱","").ToDouble
		  
		  id = 109
		  
		  Var total_unitprice As String = Format(TotalUnitPrice, "\₱\ ###,###.00")
		  
		  ListBoxProductAttributes1.AddRow(qty.ToString,product_size,product_color,DecodeURLComponent(product_description),product_price,total_unitprice,id.ToString)
		  CalculateTotalPrice
		  ContainerNewProduct.Visible = False
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonSave1
	#tag Event
		Sub Clicked()
		  ContainerNewProduct.Visible = False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextFieldQuantity
	#tag Event
		Sub TextChanged()
		  'if Me.Value = "" then
		  'Return 
		  'Else
		  'TextFieldAmount.Value = Str(product_price.ToDouble * Me.Value.ToDouble)
		  'end if
		  '
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchFieldBarcode
	#tag Event
		Sub TextChanged()
		  searchProductByProduct_Type_Name
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  searchProductByProduct_Type_Name
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events EmailLabel7
	#tag Event
		Sub Open()
		  Me.FontSize = 15
		  Me.Bold = True
		  Me.FontName = "Roboto"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NextPage3
	#tag Event
		Sub Open()
		  Me.ButtonColor = secondaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  FetchResponseProducts
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton2
	#tag Event
		Sub Action()
		  
		  
		  Var total_unitprice as double = 0
		  
		  For row As Integer = 0 to ListBoxProductAttributes1.ListCount-1
		    
		    Var qty As String = ListBoxProductAttributes1.Cell(row,0)
		    qty = qty.Replaceall(",","")
		    
		    Var unit_price As String = ListBoxProductAttributes1.Cell(row,4)
		    unit_price = unit_price.ReplaceAll(",", "")
		    
		    total_unitprice = val(unit_price)
		    
		    totalPrice = total_unitprice + totalPrice
		    
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  Insert_ProductSoldList
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
#tag Events ButtonCalculate
	#tag Event
		Sub Clicked()
		  If FieldAmountTendered.Value = "" Then
		    Return
		  Else
		    CalculateTotalPrice
		    CalculateTotalQuantity
		    
		    
		    Me.Enabled = False
		    ButtonUndoCalculate.Enabled = True
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonUndoCalculate
	#tag Event
		Sub Clicked()
		  TextFieldQuantity.Value = ""
		  TextFieldAmount.Value  = ""
		  FieldAmountTendered.Value1 = ""
		  FieldChange.Text = "" 
		  totalPrice = 0
		  Me.Enabled = False
		  ButtonCalculate.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonAddNewClient
	#tag Event
		Sub Clicked()
		  WindowAddNewClient.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchPopupMenuClient
	#tag Event
		Sub ValueChanged()
		  
		  If Not Me.Value.IsEmpty Then
		    Dim rowTag As Variant = Me.getRowTag(Me.Value)
		    If rowTag <> Nil Then
		      jsonSelectedClient = rowTag
		      TextFieldContactNo.Value = DecodeURLComponent(jsonSelectedClient.Value("contact_no"))
		      TextFieldAddress.Value = DecodeURLComponent(jsonSelectedClient.Value("address"))
		      client_id = jsonSelectedClient.Value("id")
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FieldChangess
	#tag Event
		Sub TextChanged()
		  'productIdGenerate
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
		Name="SelectedProduct_qty"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TotalPrice"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TotalQty"
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
	#tag ViewProperty
		Name="Untitled"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
