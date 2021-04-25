#tag Window
Begin ContainerControl SearchPopupMenu
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
   Width           =   300
   Begin Timer FilterEditTimer
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   250
      RunMode         =   0
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin TextField SearchTxtField
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
      FontSize        =   18.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   False
      Height          =   25
      Hint            =   "Search for an Item"
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   31
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   300
   End
   Begin Listbox SearchListbox
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   False
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   1
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   25
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   16.0
      FontUnit        =   0
      GridLinesHorizontalStyle=   1
      GridLinesVerticalStyle=   1
      HasBorder       =   False
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   200
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   65
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   300
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Timer MenuTimeOut
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   250
      RunMode         =   0
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Label Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   12.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   8
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
      TabStop         =   False
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   -1
      Transparent     =   True
      Underline       =   False
      Value           =   "Helper Text"
      Visible         =   True
      Width           =   284
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub MouseEnter()
		  isHovered = True
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  isHovered = False
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  setDimensions
		  SearchTxtField.TextColor = kTextColor
		  showList(False)
		  'Dim s() As String 
		  'For i As Integer = 0 To 50
		  's.AddRow("ASD_" + Str(i))
		  'Next
		  '
		  'Self.AddList(s)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  If g.Width < 50 Then Return
		  Dim txtLeft As Integer = SearchTxtField.Left
		  Dim txtTop As Integer = SearchTxtField.Top
		  
		  'g.DrawingColor = Color.Gray
		  'g.FillRectangle 0,0,g.Width,g.Height
		  
		  g.PenSize = 1.5
		  Dim w As Integer = Self.Width - 20
		  Dim h As Integer = SearchTxtField.Height + padding
		  Dim x As Integer = (Self.Width - w)/2
		  Dim y As Integer = label1.Height 
		  
		  g.DrawingColor = Color.White
		  g.FillRectangle(x,y,w,h)
		  
		  g.DrawingColor = kIdleColor
		  If menuGotFocus Then
		    g.DrawingColor = kFocusedColor
		  Elseif isHovered Then
		    g.DrawingColor = kHoveredColor
		  End If
		  g.DrawRectangle(x,y,w,h)
		  
		  // Drop arrow
		  w = 10
		  h = 10
		  x = SearchTxtField.Left + SearchTxtField.Width + w/2
		  y = SearchTxtField.Top + (SearchTxtField.Height - h)/2
		  
		  Var points(6) As Double
		  points(1) = x
		  points(2) = y
		  points(3) = x + w
		  points(4) = y
		  points(5) = x + w/2
		  points(6) = y + h
		  If menuGotFocus Then
		    points(1) = x
		    points(2) = y + h
		    points(3) = x + w/2
		    points(4) = y
		    points(5) = x + w
		    points(6) = y + h
		  End If
		  
		  g.FillPolygon(points)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub actionValueChanged()
		  RaiseEvent ValueChanged
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddList(items() as String)
		  For Each item As String In items
		    SearchListbox.AddRow(item)
		    SearchListbox.RowTagAt(SearchListbox.LastAddedRowIndex) = item
		    itemList.AddRow(item)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddList(items() as String, newList as Boolean)
		  itemList.RemoveAllRows
		  ClearListbox
		  For Each item As String In items
		    SearchListbox.AddRow(item)
		    SearchListbox.RowTagAt(SearchListbox.LastAddedRowIndex) = item
		    itemList.AddRow(item)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddList(items() as String, tags() as Variant)
		  If items.LastRowIndex = -1 Or tags.LastRowIndex = -1 _ 
		    Or items.LastRowIndex <> tags.LastRowIndex Then
		    'Break
		    Return
		  End If
		  ClearListbox
		  For i As Integer = 0 To items.LastRowIndex
		    SearchListbox.AddRow(items(i))
		    SearchListbox.RowTagAt(SearchListbox.LastAddedRowIndex) = tags(i)
		  Next
		  itemList = items
		  itemTags = tags
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddList(item as String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub adjustHeightOnSearch()
		  Dim rows As Integer = SearchListbox.RowCount
		  If rows > visibleItems Then
		    rows = visibleItems
		  End If
		  
		  If Not SearchListbox.Visible Then
		    rows = 0
		  End If
		  
		  SearchListbox.Height = SearchListbox.DefaultRowHeight * rows
		  Self.Height = Label1.Height + SearchTxtField.Height + SearchListbox.Height + 20
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearListbox()
		  SearchListbox.RemoveAllRows
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub FilterChanged()
		  FilterEditTimer.Reset
		  FilterEditTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getRowTag(item as String) As Variant
		  If itemList.LastRowIndex = -1 Or itemTags.LastRowIndex = -1 Then Return Nil
		  
		  Dim index As Integer = itemList.IndexOf(item)
		  If index = -1 Then Return Nil
		  
		  Return itemTags(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub rebuildList()
		  ClearListbox
		  For Each item As String In itemList
		    SearchListbox.AddRow(item)
		    SearchListbox.RowTagAt(SearchListbox.LastAddedRowIndex) = item
		  Next
		  
		  adjustHeightOnSearch
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SearchItem(value as String)
		  SearchListbox.RemoveAllRows
		  
		  If itemList.LastRowIndex = -1 Then
		    Return
		  Elseif value.IsEmpty Then
		    rebuildList
		    Return
		  End If
		  
		  Dim isFound As Boolean = False
		  
		  For i As Integer = 0 To itemList.LastRowIndex
		    If Not value.IsEmpty And itemList(i).IndexOf(value) <> -1 Then
		      SearchListbox.AddRow( itemList(i) )
		      SearchListbox.RowTagAt(SearchListbox.LastAddedRowIndex) = itemList(i)
		    End If
		  Next
		  
		  adjustHeightOnSearch
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setDimensions()
		  'SearchTxtField.Height = SearchListbox.DefaultRowHeight
		  SearchTxtField.Width = Self.Width - 60
		  SearchTxtField.Left = 20 '(Self.Width - SearchTxtField.Width) / 2
		  SearchTxtField.Top = Label1.Height + 5
		  SearchListbox.Top = SearchTxtField.Height + SearchTxtField.Top + padding/2
		  SearchListbox.Width = Self.Width - 40
		  SearchListbox.Left = (Self.Width - SearchListbox.Width) / 2
		  SearchListbox.Height = SearchListbox.DefaultRowHeight * visibleItems
		  
		  Self.Height = Label1.Height + SearchTxtField.Height + SearchListbox.Height + 20
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub showList(isShown as Boolean)
		  If isShown Then
		    SearchListbox.Visible = True
		    FilterChanged
		    Return
		  End If
		  SearchListbox.Height = 0
		  SearchListbox.Visible = False
		  FilterEditTimer.Reset
		  FilterEditTimer.RunMode = Timer.RunModes.Off
		  
		  adjustHeightOnSearch
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ValueChanged()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mHint
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SearchTxtField.Hint = value
			  mHint = value
			End Set
		#tag EndSetter
		Hint As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private hoveredRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private isHovered As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private itemList() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private itemTags() As Variant
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Label1.Value
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Label1.Value = value
			End Set
		#tag EndSetter
		LabelText As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private listboxInFocus As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Return mmenuGotFocus
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mmenuGotFocus = value
			  If value Then
			    label1.TextColor = kFocusedColor
			  Else
			    label1.TextColor = kTextColor
			  End If
			  
			  Self.Invalidate(False)
			  
			  If Not value Then
			    actionValueChanged
			  End If
			  
			End Set
		#tag EndSetter
		Private menuGotFocus As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mHint As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mmenuGotFocus As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private resultItemClicked As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private selectedRow As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return SearchTxtField.Value
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  SearchTxtField.Value = value
			  
			  showList(False)
			  
			  If value.IsEmpty Then
			    SearchTxtField.Hint = Hint
			  End If
			End Set
		#tag EndSetter
		Value As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private visibleItems As Integer = 5
	#tag EndProperty


	#tag Constant, Name = kFocusedColor, Type = Color, Dynamic = False, Default = \"&c3B86FF", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"&c3B86FF"
	#tag EndConstant

	#tag Constant, Name = kHoveredColor, Type = Color, Dynamic = False, Default = \"&c808495", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"&c808495"
	#tag EndConstant

	#tag Constant, Name = kIdleColor, Type = Color, Dynamic = False, Default = \"&cE8E9EC", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"&cE8E9EC"
	#tag EndConstant

	#tag Constant, Name = kTextColor, Type = Color, Dynamic = False, Default = \"&c4D4F5C", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"&c4D4F5C"
	#tag EndConstant

	#tag Constant, Name = padding, Type = Double, Dynamic = False, Default = \"10", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"10"
	#tag EndConstant


#tag EndWindowCode

#tag Events FilterEditTimer
	#tag Event
		Sub Action()
		  SearchItem(SearchTxtField.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchTxtField
	#tag Event
		Sub TextChange()
		  showList(True)
		  resultItemClicked = False
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  If resultItemClicked Then
		    menuGotFocus = False
		  Else
		    MenuTimeOut.Reset
		    MenuTimeOut.Mode = Timer.ModeSingle
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  resultItemClicked = False
		  
		  showList(True)
		  menuGotFocus = True
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Const kUpArrow = 30
		  Const kDownArrow = 31
		  Select Case Asc(Key)
		  Case kUpArrow
		    SearchListbox.SetFocus
		    SearchListbox.SelectedRowIndex = SearchListbox.SelectedRowIndex - 1
		  Case kDownArrow
		    SearchListbox.SetFocus
		    SearchListbox.SelectedRowIndex = SearchListbox.SelectedRowIndex + 1
		  End Select
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SearchListbox
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  Dim s As String
		  s = Me.CellValueAt(row,column)
		  SearchTxtField.Value = s
		  showList(False)
		  resultItemClicked = True
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  menuGotFocus = False
		  listboxInFocus = False
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  If Me.LastRowIndex <> - 1 And resultItemClicked Then
		    Me.SelectedRowIndex = 0
		  End If
		  menuGotFocus = True
		  listboxInFocus = True
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Select Case Asc(Key)
		  Case 13 // carriage return
		    Dim row As Integer = Me.SelectedRowIndex
		    If row <> -1 Then
		      SearchTxtField.Value = Me.SelectedRowValue
		      showList(False)
		      resultItemClicked = True
		    End If
		  End Select
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  SearchTxtField.Hint = me.SelectedRowValue
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  
		  If row = hoveredRow Or row = Me.SelectedRowIndex Then
		    g.DrawingColor = &cF8F8F8
		    g.FillRectangle(-10,-10,g.Width + 10,g.Height + 10)
		    
		    g.DrawingColor = &c047DFF
		    g.FillRectangle(0,-10,2,g.Height + 10)
		  Else
		    g.DrawingColor = &cF8F8F8
		    g.FillRectangle(0,-10,2,g.Height + 10)
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  hoveredRow = Me.RowFromXY(x,y)
		  Me.Invalidate(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MenuTimeOut
	#tag Event
		Sub Action()
		  If menuGotFocus and Not listboxInFocus Then
		    menuGotFocus = False
		    showList(False)
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label1
	#tag Event
		Sub Open()
		  Me.TextColor = kTextColor
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
		Name="Hint"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LabelText"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Value"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="InitialParent"
		Visible=false
		Group="Position"
		InitialValue=""
		Type="String"
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
		Name="EraseBackground"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
