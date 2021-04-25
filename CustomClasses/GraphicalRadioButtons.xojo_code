#tag Class
Protected Class GraphicalRadioButtons
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If isWithinIconArea(x,y, True) Then
		    Dim i As Integer = selectedIndex
		    RaiseEvent SelectionChange(i,choices(i))
		    Self.Invalidate(False)
		  End If
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  hoveredIndex = -1
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  If isWithinIconArea(x,y, False) Then
		    Self.Invalidate(False)
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  'g.DrawingColor = Color.Red
		  'g.DrawRectangle 0,0,g.Width,g.Height
		  
		  If Not Caption.IsEmpty Then
		    drawCaption(g)
		  End If
		  
		  drawRadioBtns(g)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  radioAreas = New Dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawCaption(g as Graphics)
		  Dim x As Double = margin
		  Dim y As Double = margin*2
		  
		  Var t As New TextShape
		  t.Value = Caption
		  t.FontName = "Arial"
		  t.FontSize = 16
		  t.X = x
		  t.Y = y
		  t.VerticalAlignment = TextShape.Alignment.Center
		  t.HorizontalAlignment = TextShape.Alignment.Left
		  t.FillColor = kTextColor
		  
		  g.DrawObject(t)
		  
		  g.DrawingColor = &c4D4F5C7F
		  g.PenSize = 1.5
		  y = y + margin*1.5
		  g.DrawLine 0,y,g.Width*.8,y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawLabel(g as Graphics, x as integer, y as integer, s as String, index as Integer)
		  Var t As New TextShape
		  t.Value = s
		  t.FontName = "Arial"
		  t.FontSize = 14
		  t.X = x
		  t.Y = y
		  t.VerticalAlignment = TextShape.Alignment.Center
		  t.HorizontalAlignment = TextShape.Alignment.Left
		  t.FillColor = kTextColor
		  t.FillOpacity = 50
		  If index = selectedIndex Or index = hoveredIndex Then
		    t.FillOpacity = 100
		  End If
		  g.DrawObject(t)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawRadioBtns(g as Graphics)
		  Const ovalSize = 20
		  
		  Dim x As Double = margin
		  Dim y As Double = margin*4.5
		  If Caption.IsEmpty Then
		    y = margin
		    
		    g.DrawingColor = &c4D4F5C7F
		    g.PenSize = 1.5
		    g.DrawLine 0,0,g.Width*.8,0
		  End If
		  
		  Dim w As Double = ovalSize
		  Dim h As Double = ovalSize
		  
		  radioAreas.RemoveAll
		  
		  For i As Integer = 0 To choices.LastRowIndex
		    g.DrawingColor = kIdleColor
		    If i = hoveredIndex Or i = selectedIndex Then
		      g.DrawingColor = kColor
		    End If
		    g.FillOval(x,y,w,h)
		    
		    radioAreas.Value(i) = Array(x, y, x + w, y +h)
		    'g.DrawingColor = Color.red
		    'g.DrawRectangle x,y,w,h
		    
		    Dim labelLeft As Double = x + w + margin
		    Dim labelTop As Double = y + h/2
		    drawLabel(g, labelLeft, labelTop, choices(i), i)
		    
		    g.DrawingColor = Color.White
		    Dim w1 As Double = w - 4
		    Dim h1 As Double  = h - 4
		    Dim x1 As Double = x + (w - w1)/2
		    Dim y1 As Double = y + (h - h1)/2
		    g.FillOval(x1,y1,w1,h1)
		    
		    If i = selectedIndex Then
		      Dim w2 As Double = w/2
		      Dim h2 As Double  = h/2
		      Dim x2 As Double = x + (w - w2)/2
		      Dim y2 As Double = y + (h - h2)/2
		      g.DrawingColor = kColor
		      g.FillOval(x2, y2, w2, h2)
		    End If
		    
		    y = y + ovalSize + margin
		    x = margin
		  Next
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSelectedIndex() As Integer
		  return selectedIndex
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSelectedValue() As String
		  If choices.LastRowIndex = -1 Then Return ""
		  
		  Return choices(selectedIndex)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function isWithinIconArea(X as Integer, Y as Integer, clicked as Boolean) As Boolean
		  Dim iconArea() As Double
		  
		  For i As Integer = 0 To radioAreas.KeyCount - 1
		    iconArea = radioAreas.Value(radioAreas.Key(i))
		    If iconArea.LastRowIndex = -1 Then Continue
		    
		    // 0 is Left
		    // 1 is Top
		    // 2 is Width
		    // 3 is Height
		    
		    Dim iconLeft As Integer = iconArea(0)
		    Dim iconTop As Integer = iconArea(1)
		    'Dim iconRight As Integer = iconArea(2)
		    Dim iconRight As Integer = Self.Width
		    Dim iconBottom As Integer = iconArea(3)
		    
		    If x > iconLeft And x < iconRight And y > iconTop And y < iconBottom Then
		      If clicked Then
		        selectedIndex = i
		      Else
		        hoveredIndex = i
		      End If
		      
		      Return True
		    End If
		  Next
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setChoices(values() as String, defaultSelected as Integer)
		  choices = values
		  selectedIndex = defaultSelected
		  
		  Self.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSelectedValue(value as String)
		  If value.IsEmpty Then Return
		  
		  selectedIndex = choices.IndexOf(value)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event SelectionChange(index as Integer, value as String)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mCaption
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCaption = value
			  Self.Invalidate(False)
			End Set
		#tag EndSetter
		Caption As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private choices() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private hoveredIndex As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCaption As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private radioAreas As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private selectedIndex As Integer = 0
	#tag EndProperty


	#tag Constant, Name = kColor, Type = Color, Dynamic = False, Default = \"&c3B86FF", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"&c3B86FF"
	#tag EndConstant

	#tag Constant, Name = kIdleColor, Type = Color, Dynamic = False, Default = \"&cC3DAFF", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"&cC3DAFF"
	#tag EndConstant

	#tag Constant, Name = kTextColor, Type = Color, Dynamic = False, Default = \"&c4D4F5C", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"&c4D4F5C"
	#tag EndConstant

	#tag Constant, Name = margin, Type = Double, Dynamic = False, Default = \"10", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"10"
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
			Name="Caption"
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
