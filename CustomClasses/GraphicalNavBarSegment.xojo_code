#tag Class
Protected Class GraphicalNavBarSegment
	#tag Method, Flags = &h0
		Sub Constructor()
		  Width = defaultSegWidth
		  Height = defaultSegHeight
		  segmentColor = fillerColor2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(segLabel as String)
		  Width = defaultSegWidth
		  Height = defaultSegHeight
		  
		  segmentLabel = segLabel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(segLabel as String, w as Integer, h as Integer)
		  Width = w
		  Height = h
		  
		  segmentLabel = segLabel
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(segLabel as String, w as Integer, h as Integer, icon as Picture)
		  Width = w
		  Height = h
		  
		  segmentLabel = segLabel
		  segmentIcon = icon
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(segLabel as String, icon as Picture)
		  Width = defaultSegWidth
		  Height = defaultSegHeight
		  
		  segmentLabel = segLabel
		  segmentIcon = icon
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSegmentColor()
		  If isSelected Then
		    segmentColor = secondaryColor 
		    labelColor = Color.White
		  Elseif isMouseHovered Then
		    segmentColor = edgeColor
		    labelColor = Color.White
		  Else
		    segmentColor = primaryColor
		    labelColor = Color.White
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WithinCursorArea(x as Integer, y as Integer) As Boolean
		  Return (x >= Left And x <= Right And _
		  y > Top And y < Bottom)
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Top + Height
			End Get
		#tag EndGetter
		Bottom As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Height As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		isMouseHovered As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		isSelected As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		labelColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		Left As Double
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Left + Width
			End Get
		#tag EndGetter
		Right As Double
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		segmentColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		segmentIcon As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		segmentIndex As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		segmentLabel As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Top As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Width As Double
	#tag EndProperty


	#tag Constant, Name = defaultSegHeight, Type = Double, Dynamic = False, Default = \"50", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"50"
	#tag EndConstant

	#tag Constant, Name = defaultSegWidth, Type = Double, Dynamic = False, Default = \"250", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"250"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Height"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Right"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bottom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="segmentIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="isSelected"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="segmentColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="isMouseHovered"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="segmentLabel"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="labelColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="segmentIcon"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
