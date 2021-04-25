#tag Class
Protected Class CustomListbox
Inherits ListBox
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  ''Return False
		  'g.AntiAliased = False
		  '
		  'g.DrawingColor = &cFFFFFF
		  'g.FillRectangle(-20,-20,g.Width+20, g.Height+20)
		  '
		  'If row = SelectedRowIndex Then
		  '
		  'g.DrawingColor = &cE5EFFF'&c3088E1
		  '
		  '//FILLED STYLE
		  'g.FillRectangle  0,0,g.Width,g.Height
		  '
		  ''BORDERED STYLE
		  ''If column = 0 Then
		  ''// left border
		  ''g.FillRectangle(0, 0, 2, g.Height + 10)
		  ''// top 
		  ''g.FillRectangle(-10, 0, g.Width + 10, 2)
		  ''// bottom
		  ''g.FillRectangle(-10, g.Height - 2, g.Width + 10, 2)
		  ''Elseif column = Me.LastColumnIndex Then
		  ''// right border
		  ''g.FillRectangle(g.Width - 2, 0, 2, g.Height + 10)
		  ''// top 
		  ''g.FillRectangle(-10, 0, g.Width + 10, 2)
		  ''// bottom
		  ''g.FillRectangle(-10, g.Height - 2, g.Width + 10, 2)
		  ''Else
		  ''// top 
		  ''g.FillRectangle(-10, 0, g.Width + 10, 2)
		  ''// bottom
		  ''g.FillRectangle(-10, g.Height - 2, g.Width + 10, 2)
		  ''End If
		  '
		  'End If
		  '
		  'If RowCount > 0 And ColumnCount > 0 And row < RowCount And column < ColumnCount Then
		  'If column = checkboxCol And CellTagAt(row,column) <> Nil Then
		  'g.AntiAliased = True
		  '
		  'Dim checkState As Boolean = CellTagAt(row,column)
		  '
		  'Dim rectSize As Double = 20 'Min(g.Width,g.Height) * .65
		  'Dim x As Double = (g.Width - rectSize) / 2
		  'Dim y As Double = (g.Height - rectSize) / 2
		  'g.DrawingColor = Color.White
		  'g.FillRoundRectangle x,y,rectSize,rectSize,10,10
		  '
		  'g.PenSize = 1.5
		  'g.DrawingColor = &c3088E1
		  'g.DrawRoundRectangle x,y,rectSize,rectSize,10,10
		  'checkboxClickArea = Array(x,y,rectSize,rectSize)
		  '
		  'Dim icon As picture '= icon_check
		  'If icon <> Nil And checkState Then
		  'Const margin = 5
		  'Dim iconSize As Double = rectSize * .6
		  'Dim w,h As Double
		  'Dim ratio As Double = Min( iconSize / icon.Width, iconSize / icon.Height)
		  '//maintain aspect ratio to fit in the canvas
		  'w = icon.Width * ratio
		  'h = icon.Height * ratio
		  '//Center the image
		  'x = x + (rectSize - w)/2
		  'y = y + (rectSize - h)/2
		  'g.DrawPicture(icon, x, y, w, h, 0, 0, icon.Width, icon.Height)
		  'End If
		  '
		  'End If
		  'End If
		  '
		  'g.DrawingColor = &cDBDDDF
		  '// bottom
		  'g.FillRectangle(-10, g.Height - 1, g.Width + 10, 1)
		  '
		  'Return True
		  
		  If row Mod 2 = 0 Then
		    g.DrawingColor = &c0080FFEE
		    g.FillRectangle(0, 0, g.Width, g.Height)
		  End If
		End Function
	#tag EndEvent

	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  '
		  'g.PenSize = 0
		  'g.DrawingColor = kTextColor
		  '
		  'g.FontSize = 14
		  'g.Bold = False
		  '
		  'if row >= 0 AND row <= Me.LastAddedRowIndex AND column = 1 then
		  'if Me.CellValueAt(row, column) = "View Prices" then
		  'g.Underline = True
		  'g.DrawingColor = Color.Blue
		  'end if
		  'end if
		  '
		  'Return False
		  '
		  '
		  '
		  '
		  '
		  
		  
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Function HeaderBackgroundPaint(g As Graphics, column As Integer) As Boolean
		  g.DrawingColor = &ccacaca
		  g.FillRectangle(0,0,g.Width,20)
		  
		End Function
	#tag EndEvent

	#tag Event
		Function HeaderContentPaint(g As Graphics, column As Integer) As Boolean
		  g.FontSize = 15
		  g.Bold = True
		  g.DrawingColor = &c000000
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub CenterColumn()
		  Var column As Integer = 0
		  If column = ColumnCount Then Return
		  
		  For column = 0 To LastColumnIndex
		    ColumnAlignmentAt(column) = ListBox.Alignments.Center
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckBoxColumnAt(column as Integer)
		  checkboxCol = column
		  
		  // use celltag to store checked/unchecked states
		  For row As Integer = 0 To LastRowIndex
		    CellTagAt(row,column) = False
		  Next
		  
		  Self.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DisableTableSort()
		  Var column As Integer = 0
		  If column = ColumnCount Then Return
		  
		  For column = 0 To ColumnCount
		    ColumnSortTypeAt(column) = ListBox.SortTypes.NotSortable
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isWithinIconArea(X as Integer, Y as Integer) As Boolean
		  'If checkboxClickArea.LastRowIndex = -1 Then Return False
		  '
		  '// 0 is Left
		  '// 1 is Top
		  '// 2 is Width
		  '// 3 is Height
		  '
		  'Dim iconLeft As Integer = checkboxClickArea(0)
		  'Dim iconTop As Integer = checkboxClickArea(1)
		  'Dim iconRight As Integer = checkboxClickArea(0) + checkboxClickArea(2)
		  'Dim iconBottom As Integer = checkboxClickArea(1) + checkboxClickArea(3)
		  '
		  'Return x > iconLeft And x < iconRight And y > iconTop And y < iconBottom
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDefaultProperties()
		  HasBorder = True
		  Bold = False
		  GridLinesHorizontalStyle = Listbox.Borders.None 
		  GridLinesVerticalStyle = Listbox.Borders.None 
		  AllowFocusRing = False 
		  DefaultRowHeight = 30
		  FontSize = 13
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private checkboxClickArea() As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		checkboxCol As Integer = -1
	#tag EndProperty


	#tag Constant, Name = kTextColor, Type = Color, Dynamic = False, Default = \"&c2F2F35", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"&c2F2F35"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="_ScrollOffset"
			Visible=false
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollWidth"
			Visible=false
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBorder"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnCount"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnWidths"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DefaultRowHeight"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesHorizontalStyle"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Borders"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesVerticalStyle"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Borders"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasHeader"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeadingIndex"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasHorizontalScrollbar"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasVerticalScrollbar"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DropIndicatorVisible"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoHideScrollbars"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowResizableColumns"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowRowDragging"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowRowReordering"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowExpandableRows"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RequiresSelection"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RowSelectionType"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="RowSelectionTypes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Single"
				"1 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group=""
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
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
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="80"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="22"
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
			Name="InitialValue"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
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
			Name="Bold"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontName"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FontUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			InitialValue=""
			Type="String"
			EditorType="DataSource"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			InitialValue=""
			Type="String"
			EditorType="DataField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="checkboxCol"
			Visible=false
			Group="Behavior"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
