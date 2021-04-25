#tag Window
Begin ContainerControl TransactionsViewIndex
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
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   1340
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
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   1
      Transparent     =   True
      Visible         =   True
      Width           =   1333
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
         Text            =   "Transaction"
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
   Begin CustomRectangle Rectangle1
      AllowAutoDeactivate=   True
      BorderThickness =   1.0
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   697
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   134
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   1324
      Begin CustomComboBox CustomComboBoxTransactionType
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
         InitialParent   =   "Rectangle1"
         InitialValue    =   "Sale\r\nRental\r\nAll"
         Italic          =   False
         Left            =   1193
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   154
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   120
      End
      Begin CustomListbox ListboxTransactions
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   True
         checkboxCol     =   -1
         ColumnCount     =   7
         ColumnWidths    =   "150,150,120,130,120,150,100,200,100,150,150,150,150,100"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         GridLinesHorizontalStyle=   1
         GridLinesVerticalStyle=   1
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   True
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   573
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         InitialValue    =   "Transaction Date	Transaction Type	Client Name	Contact No.	Description	No. of Items	Amount"
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
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   196
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   921
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin CustomListbox ListboxTransactionList
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   True
         checkboxCol     =   -1
         ColumnCount     =   9
         ColumnWidths    =   "120,100,200,150,150,150,150,150,150"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         GridLinesHorizontalStyle=   1
         GridLinesVerticalStyle=   1
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   True
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   420
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         InitialValue    =   "Description	Quantity	Size	Color	Price	Damaged Item(s)	Returned Item(s)	Damaged Fee	Status"
         Italic          =   False
         Left            =   962
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   196
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   351
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
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
         InitialParent   =   "Rectangle1"
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   19
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Refresh Transactions"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin Rectangle RoundRectangle1
         AllowAutoDeactivate=   True
         BorderThickness =   1.0
         BottomRightColor=   &c00000000
         Enabled         =   True
         FillColor       =   &cFFFFFF00
         Height          =   140
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Left            =   962
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   2
         TabIndex        =   28
         TabPanelIndex   =   0
         Tooltip         =   ""
         Top             =   628
         TopLeftColor    =   &c00000000
         Transparent     =   False
         Visible         =   True
         Width           =   351
         Begin Label Label3
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
            Left            =   971
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
            Text            =   "Total Amount Due:"
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   672
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   122
         End
         Begin Label Label4
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
            Left            =   971
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
            Text            =   "Amount Tendered:"
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   707
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   122
         End
         Begin Label Label5
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
            Left            =   971
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
            Text            =   "Change:"
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   728
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
            Left            =   1125
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
            Top             =   672
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
            Left            =   1125
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
            Top             =   707
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
            Left            =   1125
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   2
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   ""
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   728
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
            Left            =   982
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Multiline       =   False
            Scope           =   2
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            Text            =   "Payment Info"
            TextAlignment   =   2
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   640
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
            Left            =   971
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
            Top             =   693
            Transparent     =   False
            Visible         =   True
            Width           =   333
         End
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
         InitialParent   =   "Rectangle1"
         Left            =   610
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   2
         TabIndex        =   29
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   781
         Transparent     =   True
         Visible         =   True
         Width           =   164
      End
      Begin SmallButton ExportAsPDF
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   "Export as PDF"
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   30
         Icon            =   1036396543
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Left            =   786
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   2
         TabIndex        =   30
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   781
         Transparent     =   True
         Visible         =   True
         Width           =   164
      End
      Begin IconButton1 ButtonChooseCheckinDate
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   30
         Icon            =   1677328383
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Left            =   183
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   31
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   154
         Transparent     =   True
         Visible         =   True
         Width           =   30
      End
      Begin TextField CheckinDateField
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
         Height          =   30
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   81
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   32
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   155
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   90
      End
      Begin TextField CheckoutDateField
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
         Height          =   30
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   225
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   33
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   155
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   90
      End
      Begin IconButton1 ButtonChooseCheckoutDate
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   30
         Icon            =   1677328383
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Left            =   327
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   34
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   154
         Transparent     =   True
         Visible         =   True
         Width           =   30
      End
      Begin SmallButton FilterBySelectedDate
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   "Load Selected Date"
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   30
         Icon            =   1769541631
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Left            =   369
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   35
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   154
         Transparent     =   True
         Visible         =   True
         Width           =   209
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
         InitialParent   =   "Rectangle1"
         Left            =   910
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   36
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
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   750
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   37
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
      Left            =   1048
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   1343
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value1          =   ""
      Visible         =   True
      Width           =   242
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
      Left            =   1001
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   1351
      Transparent     =   False
      Underline       =   False
      Value           =   "Search"
      Visible         =   True
      Width           =   44
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
		  label2.FontSize = 20
		  
		  label3.FontSize = 15
		  label4.FontSize = 15
		  Label5.FontSize = 15
		  
		  
		  label3.Bold = True
		  label4.Bold = True
		  Label5.Bold = True
		  
		  
		  Label_TotalDue.FontSize = 15
		  Label_AmountTendered.FontSize = 15
		  Label_Change.FontSize = 15
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub FetchTransactionRentals()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As String
		  response = api.Post(App.URL + "/transactions/fetch_all", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    PopulateListBoxTransactionRentals(responseData)
		    'MessageBox(responseData.ToString)
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
		    'MessageBox(responseData)
		    'Var strAmount As String = responseData.Value("total_amount")
		    'MessageBox(strAmount)
		    
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
		Sub filter_by_date()
		  Var api as new HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p as new Dictionary
		  p.Value("start")  = CheckinDateField.Value
		  p.Value("finish") = CheckoutDateField.Value
		  api.SetFormData(p)              
		  
		  Var response as string
		  response = api.Get(App.URL + "/transactions/filter_by_date", 2)
		  ResponseData = new JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    PopulateListBoxTransactionRentals(responsedata)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Filter_by_transaction_type()
		  Var api as new HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p as new Dictionary
		  p.Value("transaction_type")  = CustomComboBoxTransactionType.SelectedRowValue
		  api.SetFormData(p)              
		  
		  Var response as string
		  response = api.Get(App.URL + "/transactions/filter_by_transaction_type", 2)
		  ResponseData = new JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    'MessageBox(responseData.ToString)
		    PopulateListBoxTransactionRentals(responsedata)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopulateListBoxTransactionRentals(responsedata as JSONItem)
		  ListboxTransactions.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var sales_reports as JSONItem = ResponseData.Child("rows")
		  
		  for i as integer = 0 to sales_reports.Count - 1
		    
		    Var sales_report as JSONItem = sales_reports.ChildAt(i)
		    
		    Var transaction_date As String = DecodeURLComponent(sales_report.Value("transaction_date"))
		    Var client_name As String = DecodeURLComponent(sales_report.Value("client_name"))
		    Var contact_no As String = DecodeURLComponent(sales_report.Value("contact_no"))
		    Var description As String = DecodeURLComponent(sales_report.Value("description"))
		    Var quantity As String = sales_report.Value("quantity")
		    
		    Var date_returned As String = DecodeURLComponent(sales_report.Value("date_returned"))
		    Var deposit As String = DecodeURLComponent(sales_report.Value("deposit"))
		    Var amount As String = format(sales_report.Value("amount"), "\₱\ ###,###, ###.00")
		    
		    Var qty_damaged_item As String = DecodeURLComponent(sales_report.Value("qty_damaged_item"))
		    Var qty_returned_item As String = sales_report.Value("qty_returned_item")
		    Var damage_fee As string = format(sales_report.Value("damaged_fee"), "\₱\ ###,###, ###.00")
		    
		    Var transaction_type As String = DecodeURLComponent(sales_report.Value("transaction_type"))
		    
		    'ListboxTransactions.ColumnAlignmentAt(0) = ListBox.Alignments.Center
		    'ListboxTransactions.ColumnAlignmentAt(1) = ListBox.Alignments.Center
		    'ListboxTransactions.ColumnAlignmentAt(2) = ListBox.Alignments.Center 
		    'ListboxTransactions.ColumnAlignmentAt(3) = ListBox.Alignments.Center
		    'ListboxTransactions.ColumnAlignmentAt(4) = ListBox.Alignments.Center
		    'ListboxTransactions.ColumnAlignmentAt(5) = ListBox.Alignments.Center
		    'ListboxTransactions.ColumnAlignmentAt(6) = ListBox.Alignments.Center
		    'ListboxTransactions.ColumnAlignmentAt(7) = ListBox.Alignments.Center
		    
		    
		    ListboxTransactions.AddRow(transaction_date.ReplaceAll(" 00:00:00",""),transaction_type,client_name, contact_no, description, quantity,amount,qty_damaged_item,damage_fee,qty_returned_item)
		    ListboxTransactions.RowTag(ListboxTransactions.LastIndex) = sales_report
		    
		  Next
		  
		  
		  'Var sold As String = DecodeURLComponent(sales_report.Value("sold"))
		  'Var rented As String = DecodeURLComponent(sales_report.Value("rented"))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopulateListBoxTransactionRentalsList(responsedata as JSONItem)
		  ListboxTransactionList.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var sales_reports as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to sales_reports.Count - 1
		    Var sales_report as JSONItem = sales_reports.ChildAt(i)
		    
		    Var quantity As String = sales_report.Value("qty")
		    Var size As String = DecodeURLComponent(sales_report.Value("size"))
		    Var description As String = DecodeURLComponent(sales_report.Value("description"))
		    Var _color As String = sales_report.Value("color")
		    Var price As String = format(sales_report.Value("price"), "\₱\ ###,###, ###.00")
		    
		    if transaction_type = "Rental" then
		      Var qty_damaged_item As String = sales_report.Value("qty_damaged_item")
		      Var qty_returned_item As String = sales_report.Value("qty_returned_item")
		      Var damaged_fee As String = format(sales_report.Value("damaged_fee"), "\₱\ ###,###, ###.00")
		      'Var damaged_fee As String = sales_report.Value("damaged_fee")
		      Var returned_status As String = sales_report.Value("returned_status")
		      ListboxTransactionList.AddRow(description, quantity, size,_color,price,qty_damaged_item,qty_returned_item,damaged_fee,returned_status)
		      ListboxTransactionList.RowTag(ListboxTransactionList.LastIndex) = sales_report
		    Elseif transaction_type = "Sale" Then
		      Var qty_damaged_item As String = "N/A"
		      Var qty_returned_item As String = "N/A"
		      Var damaged_fee As String = "N/A"
		      Var returned_status As String = "N/A"
		      ListboxTransactionList.AddRow(description, quantity, size,_color,price,qty_damaged_item,qty_returned_item,damaged_fee,returned_status)
		      ListboxTransactionList.RowTag(ListboxTransactionList.LastIndex) = sales_report
		    end if
		    
		    
		    
		    
		    'ListboxTransactionRentalList.ColumnAlignmentAt(6) = ListBox.Alignments.center
		    
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProdAttrSelectByID()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var Selected_ID as new Dictionary
		  Selected_ID.Value("id") = transaction_rental_ID
		  
		  api.SetFormData(Selected_ID)
		  
		  Var response As String
		  response = api.Post(App.URL + "/products/select_by_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    Var prodattributes as JSONItem = responseData.Child("rows")
		    
		    Var attribute As JSONItem = prodattributes.ChildAt(0)
		    product_stock = DecodeURLComponent(attribute.Value("stock"))
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReturnedStatus()
		  
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var returnedproduct As String = "Returned"
		  
		  Var data As New Dictionary
		  data.Value("qty_damaged_item") = TotalQtyDamaged
		  data.Value("qty_returned_item") = TotalQtyRented
		  data.Value("damaged_fee")     = TotalQtyDamagedFee
		  data.Value("returned_status") =  returnedproduct
		  data.Value("product_rental_id") = transaction_rental_ID.ToString
		  api.SetFormData(data)
		  
		  Var address as string = App.URL + "/transactions/returned_status"
		  responseData = New JSONItem(api.Post(address, 2))
		  
		  If responseData.Value("status") = 200 Then
		    'MessageBox(responseData.ToString)
		    
		    Self.Close
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
		  
		  'MessageBox(data.Value("stock"))
		  data.Value("id") = transaction_rental_ID.ToString
		  
		  
		  api.SetFormData(data)
		  
		  Var address as string = App.URL + "/products/restock"
		  responseData = New JSONItem(api.Post(address, 2))
		  
		  
		  If responseData.Value("status") = 200 Then
		    'MessageBox(responseData.ToString)
		    
		    
		    ReturnedStatus
		    FetchTransactionRentals
		    
		    'Self.Close
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message")
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		jsonSelectedTransactionRental As JSONItem
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


#tag EndWindowCode

#tag Events CustomComboBoxTransactionType
	#tag Event
		Sub TextChanged()
		  If Me.SelectedRowValue = "Sale" Then
		    
		    Filter_by_transaction_type
		    ListboxTransactionList.RemoveAllRows
		  Elseif Me.SelectedRowValue = "Rental" Then
		    
		    Filter_by_transaction_type
		    ListboxTransactionList.RemoveAllRows
		  ElseIf Me.SelectedRowValue = "All" Then
		    FetchTransactionRentals
		    ListboxTransactionList.RemoveAllRows
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListboxTransactions
	#tag Event
		Sub Open()
		  FetchTransactionRentals
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
#tag Events ListboxTransactionList
	#tag Event
		Sub Open()
		  FetchTransactionRentals
		  Me.SetDefaultProperties
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  
		  if transaction_type = "Rental" then
		    If Me.ListIndex > -1 Then
		      
		      jsonSelectedTransactionRental = Me.RowTag(Me.ListIndex)
		      
		      transaction_rental_ID = jsonSelectedTransactionRental.Value("product_rental_id")
		      
		    End If
		  elseif transaction_type = "Sale" then
		    If Me.ListIndex > -1 Then
		      
		      jsonSelectedTransactionRental = Me.RowTag(Me.ListIndex)
		      
		      transaction_rental_ID = jsonSelectedTransactionRental.Value("product_sold_id")
		      
		    End If
		  end if
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  If hitItem <> Nil Then
		    Select Case hitItem.Value
		    Case "Mark as returned."
		      if transaction_type = "Rental" then
		        If Me.ListIndex > -1 Then
		          jsonSelectedUser = Me.RowTag(Me.ListIndex)
		          transaction_rental_ID = jsonSelectedUser.Value("product_rental_id")
		          quantity = jsonSelectedUser.Value("qty")
		          returned_status = jsonSelectedUser.Value("returned_status")
		          if returned_status = "Returned" then
		            MessageBox("This product is already returned.")
		          else
		            WindowCheckReturnStatus.Show
		          End If
		        End if
		        
		      elseif transaction_type = "Sale" then
		        If Me.ListIndex > -1 Then
		          MessageBox("Sold products cannot be returned.")
		        End if
		      End If
		      
		    End Select
		  End If
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  // Add some items
		  
		  base.AddMenu( New MenuItem("Mark as returned."))
		  
		  base.AddMenu(New MenuItem(MenuItem.TextSeparator))
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonRefresh
	#tag Event
		Sub Clicked()
		  FetchTransactionRentals
		  Label_TotalDue.Text = ""
		  Label_AmountTendered.Text = ""
		  Label_Change.Text = ""
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportAsCSV
	#tag Event
		Sub Clicked()
		  Var csv As String = ListboxTransactions.ExportToCSV
		  
		  Var csvType As New FileType
		  csvType.Name = "Comma Separated Values"
		  csvType.Extensions = "csv"
		  Var saveFile As FolderItem = FolderItem.ShowSaveFileDialog(csvType, "Blueglanz Transactions")
		  
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
#tag Events ExportAsPDF
	#tag Event
		Sub Clicked()
		  Var data As New JSONItem
		  
		  Var from As String = CheckinDateField.Value
		  Var toDate As String = CheckoutDateField.Value
		  
		  data.Value("from") = from
		  data.Value("to") = toDate
		  
		  Var reports As New JSONItem
		  For i As Integer = 0 To ListboxTransactions.RowCount - 1
		    Var report As JSONItem = ListboxTransactions.RowTagAt(i)
		    reports.Add(report)
		  Next
		  
		  data.Value("reports") = reports
		  
		  
		  Var pdf As New MyPDF(data)
		  pdf.GenerateSalesReport
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonChooseCheckinDate
	#tag Event
		Sub Clicked()
		  Var calendar As New CustomDateTimePicker
		  calendar.ShowModal
		  
		  If calendar.selectedDate = Nil Then
		    Return
		  End If
		  
		  mSelectedDate = New DateTime(calendar.selectedDate)
		  CheckinDateField.Value =  DecodeURLComponent(mSelectedDate.SQLDate)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonChooseCheckoutDate
	#tag Event
		Sub Clicked()
		  Var calendar As New CustomDateTimePicker
		  calendar.ShowModal
		  
		  mSelectedDate = New DateTime(calendar.selectedDate)
		  
		  
		  CheckoutDateField.Value =  DecodeURLComponent(mSelectedDate.SQLDate)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FilterBySelectedDate
	#tag Event
		Sub Clicked()
		  if CheckinDateField.Value = "" and CheckoutDateField.Value = "" then
		    MessageBox("Incorrect date or no date selected.")
		  else
		    filter_by_date
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IconButtonSearch
	#tag Event
		Sub Clicked()
		  'searchProductByProduct_Type_Name
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
		  'searchProductByProduct_Type_Name
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
