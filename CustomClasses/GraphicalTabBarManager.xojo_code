#tag Class
Protected Class GraphicalTabBarManager
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  selectSegment(x,y)
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  removeHoverEffects
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  hoverSegment( X, Y )
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  // draw background
		  g.DrawingColor = &cF0F0F0
		  g.FillRectangle( 0, 0, g.Width, g.Height )
		  
		  drawSegments(g)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub addNavTabSegment(seg as GraphicalNavTabSegment)
		  If segments.LastRowIndex = -1 Then
		    seg.segmentIndex = 0
		  Else
		    seg.segmentIndex = segments.LastRowIndex + 1
		  End If
		  seg.isSelected = False
		  segments.AddRow(seg)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deselectTabs()
		  For Each s As GraphicalNavTabSegment In segments
		    s.isSelected = False
		  Next
		  Self.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawSegments(g as Graphics)
		  Dim x As Integer = tabMargin*2
		  Dim y As Integer = Self.Height - GraphicalNavTabSegment.defaultSegHeight'0
		  
		  Dim s As GraphicalNavTabSegment
		  For i As Integer = 0 To segments.LastRowIndex
		    s = segments(i)
		    
		    If s.isHidden Then Continue
		    
		    s.setSegmentColor
		    
		    g.DrawingColor = s.segmentColor
		    g.FillRoundRectangle(x, y, s.Width, s.Height, 20, 20)
		    g.FillRectangle(x, y + s.Height/2 , s.Width, s.Height/2)
		    s.Left = x
		    s.Top = y
		    
		    Var t As New TextShape
		    t.FillColor = s.labelColor
		    
		    If s.isSelected Then
		      t.Bold = True
		    End If
		    
		    
		    'g.DrawingColor = animObjs(i).color1
		    'g.FillRoundRectangle(x1, y1, w1, h1, h1 / 2, h1 / 2)
		    x = x + s.Width + tabMargin
		    
		    Dim labelLeft, labelTop As Double
		    labelLeft = s.Left + s.Width/2
		    labelTop = s.Top + s.Height/2
		    t.Value = s.segmentLabel
		    t.FontName = "Arial"
		    t.FontSize = 14
		    t.X = labelLeft
		    t.Y = labelTop
		    t.VerticalAlignment = TextShape.Alignment.Center
		    t.HorizontalAlignment = TextShape.Alignment.Center
		    g.DrawObject(t)
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub hoverSegment(x as Integer, y as Integer)
		  Dim isSegmentFound As Boolean
		  Dim seg As GraphicalNavTabSegment
		  For Each s As GraphicalNavTabSegment In segments
		    s.isMouseHovered = False
		    If s.WithinCursorArea( x, y ) And Not s.isSelected Then
		      s.isMouseHovered = True
		      isSegmentFound = True
		      seg = s
		    End If
		  Next
		  
		  If isSegmentFound Then
		    Self.Invalidate(False)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub removeHoverEffects()
		  For Each s As GraphicalNavTabSegment In segments
		    s.isMouseHovered = False
		  Next
		  
		  Self.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function segmentAt(index as Integer) As GraphicalNavTabSegment
		  If index > segments.LastRowIndex Or index < 0 Then Return Nil
		  
		  Return segments(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function segmentAt(label as String) As GraphicalNavTabSegment
		  For Each s As GraphicalNavTabSegment In segments
		    If label = s.segmentLabel Then
		      Return s
		    End If
		  Next
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub selectSegment(index as Integer)
		  If segments.LastRowIndex = -1 Then Return
		  If index < segments.FirstRowIndex Or index > segments.LastRowIndex Then Return
		  
		  deselectTabs
		  
		  Dim i As Integer = index
		  selectedIndex = i
		  segments(i).isSelected = True
		  
		  Self.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub selectSegment(x as Integer, y as Integer)
		  Dim isSegmentFound As Boolean
		  Dim currentSelected As Integer = -1
		  
		  For Each s As GraphicalNavTabSegment In segments
		    If s.isSelected Then
		      currentSelected = s.segmentIndex
		    End If
		    
		    s.isSelected = False
		    If s.WithinCursorArea( x, y ) Then
		      s.isSelected = True
		      isSegmentFound = True
		      selectedIndex = s.segmentIndex
		      
		    End If
		  Next
		  
		  If isSegmentFound Then
		    Self.Invalidate(False)
		  Elseif currentSelected <> -1 Then
		    selectSegment(currentSelected)
		    Self.Invalidate(False)
		  End If
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Change(index as Integer)
	#tag EndHook


	#tag Property, Flags = &h21
		Private mselectedIndex As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private segments() As GraphicalNavTabSegment
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Return mselectedIndex
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // New index selected
			  If value <> selectedIndex Then
			    RaiseEvent Change(value)
			  End If
			  mselectedIndex = value
			End Set
		#tag EndSetter
		Private selectedIndex As Integer
	#tag EndComputedProperty


	#tag Constant, Name = paddingBottom, Type = Double, Dynamic = False, Default = \"7", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"7"
	#tag EndConstant

	#tag Constant, Name = tabMargin, Type = Double, Dynamic = False, Default = \"3", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"3"
	#tag EndConstant


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
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
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
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
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
			InitialValue="False"
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
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group=""
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
