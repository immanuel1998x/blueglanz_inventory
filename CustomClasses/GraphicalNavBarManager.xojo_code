#tag Class
Protected Class GraphicalNavBarManager
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
		  g.DrawingColor = primaryColor
		  g.FillRectangle( 0, 0, g.Width, g.Height )
		  
		  drawSegments(g)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub addNavBarSegment(seg as GraphicalNavBarSegment)
		  If segments.LastRowIndex = -1 Then
		    seg.segmentIndex = 0
		  Else
		    seg.segmentIndex = segments.LastRowIndex + 1
		  End If
		  segments.AddRow(seg)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawIcon(g as Graphics, areaX as Double, areaY as Double, areaW as Double, areaH as Double, icon as Picture)
		  Dim pic As Picture = icon
		  
		  Dim w,h As Double
		  If pic <> Nil Then
		    Dim iconSize As Double = Max(areaW,areaH)
		    Dim ratio As Double = Min( iconSize / pic.Height, iconSize / pic.Width)
		    //maintain aspect ratio to fit in the canvas
		    w = pic.Width * ratio
		    h = pic.Height * ratio
		    //Center the image
		    Dim x, y As Double
		    x = areaX
		    y = areaY
		    
		    g.DrawPicture(pic, x, y, w, h, 0, 0, pic.Width, pic.Height)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawSegments(g as Graphics)
		  Dim x As Integer = 0
		  Dim y As Integer = paddingTop
		  
		  For Each s As GraphicalNavBarSegment In segments
		    s.setSegmentColor
		    
		    g.DrawingColor = s.segmentColor
		    g.FillRectangle(x, y, s.Width, s.Height)
		    s.Left = x
		    s.Top = y
		    
		    //icon
		    'g.DrawingColor = Color.red
		    'g.PenSize = 1
		    Dim iconArea As Double = 25
		    'g.DrawRectangle(g.Width - paddingRight*2.5,y + (s.Height - iconArea)/2,iconArea,iconArea)
		    drawIcon(g, g.Width - paddingRight*2.5, y + (s.Height - iconArea)/2, iconArea, iconArea, s.segmentIcon)
		    
		    y = y + s.Height
		    
		    Dim labelLeft, labelTop As Double
		    labelLeft = s.Right - paddingRight*3
		    labelTop = s.Top + s.Height/2
		    Var t As New TextShape
		    t.Value = s.segmentLabel
		    t.FontName = "Arial"
		    t.FontSize = 20
		    t.X = labelLeft
		    t.Y = labelTop
		    t.VerticalAlignment = TextShape.Alignment.Center
		    t.HorizontalAlignment = TextShape.Alignment.Right
		    t.FillColor = s.labelColor
		    g.DrawObject(t)
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub hoverSegment(x as Integer, y as Integer)
		  Dim isSegmentFound As Boolean
		  For Each s As GraphicalNavBarSegment In segments
		    s.isMouseHovered = False
		    If s.WithinCursorArea( x, y ) And Not s.isSelected Then
		      s.isMouseHovered = True
		      isSegmentFound = True
		    End If
		  Next
		  
		  If isSegmentFound Then
		    Self.Invalidate(False)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub removeHoverEffects()
		  For Each s As GraphicalNavBarSegment In segments
		    s.isMouseHovered = False
		  Next
		  
		  Self.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub selectSegment(index as Integer)
		  For Each s As GraphicalNavBarSegment In segments
		    s.isSelected = False
		    If s.segmentIndex = index Then
		      s.isSelected = True
		      selectedIndex = s.segmentIndex
		    End If
		  Next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub selectSegment(x as Integer, y as Integer)
		  Dim isSegmentFound As Boolean
		  Dim currentSelected As Integer = -1
		  
		  For Each s As GraphicalNavBarSegment In segments
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
		Private mselectedIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private segments() As GraphicalNavBarSegment
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


	#tag Constant, Name = paddingRight, Type = Double, Dynamic = False, Default = \"15", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"15"
	#tag EndConstant

	#tag Constant, Name = paddingTop, Type = Double, Dynamic = False, Default = \"150", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"150"
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
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
