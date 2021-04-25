#tag Class
Protected Class SimpleButton
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Not IsContextualClick Then
		    Clicked = True
		    Self.Invalidate(False)
		  End If
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  isMouseHover = True
		  Me.MouseCursor = System.Cursors.FingerPointer
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  isMouseHover = False
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  If Clicked Then
		    RaiseEvent LeftClick
		  End If
		  
		  Clicked = False
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  If Me.Width <= 10 Or Me.height <= 10 Then Return
		  
		  Dim x,y,w,h As Double
		  w = g.Width - 10
		  h = g.Height - 2
		  x = (g.Width - w) / 2
		  y = (g.Height - h) / 2
		  g.DrawingColor = ButtonColor
		  If isMouseHover And Not Clicked Then
		    g.DrawingColor = modifyColorAlpha(ButtonColor)
		  Elseif Clicked Then
		    g.DrawingColor = modifyColorValue(ButtonColor)
		  End If
		  g.FillRoundRectangle(x,y,w,h,5, 5)
		  
		  If ButtonType = Types.Ghost Then
		    w = w - 3
		    h = h - 3
		    x = (g.Width - w) / 2
		    y = (g.Height - h) / 2
		    g.DrawingColor = Color.White
		    g.FillRoundRectangle(x,y,w,h,5, 5)
		  End If
		  
		  drawLabel(g)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawLabel(g as Graphics)
		  Dim labelLeft, labelTop As Double
		  labelLeft = g.Width/2
		  labelTop = g.Height/2
		  Var t As New TextShape
		  t.Value = Caption
		  t.FontName = "Arial"
		  t.FontSize = 14
		  t.X = labelLeft
		  t.Y = labelTop
		  t.VerticalAlignment = TextShape.Alignment.Center
		  t.HorizontalAlignment = TextShape.Alignment.Center
		  If ButtonType = Types.Ghost Then
		    t.FillColor = ButtonColor
		  Elseif ButtonType = Types.Solid Then
		    t.FillColor = Color.White 
		  ElseIf ButtonType = Types.Danger Then
		    t.FillColor = Color.Red
		  End If
		  g.DrawObject(t)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function modifyColorAlpha(currentC as Color) As Color
		  Var cAlpha As Integer = 70
		  Var hexColor as String = Str(currentC)
		  Var modifiedHex as String = hexColor.Middle(4)
		  //format of hex is &hAARRGGBB
		  //color format is &cRRGGBBAA
		  Var sliderAlphaHex as String = Hex(cAlpha)
		  modifiedHex = "&h" + sliderAlphaHex + modifiedHex
		  Var newColorInt As UInt32 = modifiedHex.Val
		  Var newColor As Color = Color(newColorInt)
		  Return newColor
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function modifyColorValue(currentC as Color) As Color
		  Dim newValue As Double
		  
		  If currentC.Value >= .5 Then
		    newValue = currentC.Value - .20
		  Else
		    newValue = currentC.Value + .20
		  End If
		  
		  Dim newColor As Color = Color.HSV(currentC.Hue,currentC.Saturation,newValue)
		  
		  Return newColor
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event LeftClick()
	#tag EndHook


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  return Top + Height
			End Get
		#tag EndGetter
		Private Bottom As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		ButtonColor As Color = accentColor
	#tag EndProperty

	#tag Property, Flags = &h0
		ButtonType As Types = Types.Ghost
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mCaption
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mCaption = value
			End Set
		#tag EndSetter
		Caption As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Clicked As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private isMouseHover As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCaption As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Left + Width
			End Get
		#tag EndGetter
		Right As Integer
	#tag EndComputedProperty


	#tag Constant, Name = Danger, Type = Double, Dynamic = False, Default = \"2", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"2"
	#tag EndConstant

	#tag Constant, Name = Ghost, Type = Double, Dynamic = False, Default = \"0", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"0"
	#tag EndConstant

	#tag Constant, Name = padding, Type = Double, Dynamic = False, Default = \"5", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"5"
	#tag EndConstant

	#tag Constant, Name = Solid, Type = Double, Dynamic = False, Default = \"1", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"1"
	#tag EndConstant


	#tag Enum, Name = Types, Type = Integer, Flags = &h0
		Ghost
		  Solid
		Danger
	#tag EndEnum


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
			Name="Right"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ButtonType"
			Visible=true
			Group="Behavior"
			InitialValue="Types.Ghost"
			Type="Types"
			EditorType="Enum"
			#tag EnumValues
				"0 - Ghost"
				"1 - Solid"
				"2 - Danger"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ButtonColor"
			Visible=false
			Group="Behavior"
			InitialValue="accentColor"
			Type="Color"
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
