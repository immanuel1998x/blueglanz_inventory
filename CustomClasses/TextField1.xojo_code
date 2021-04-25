#tag Class
Protected Class TextField1
Inherits TextField
	#tag Event
		Sub GotFocus()
		  isFocused = True
		  
		  If isEmpty Then
		    Me.Value = ""
		  End If
		  
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  isFocused = False
		  
		  checkTextfieldValue
		  
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

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
		  checkTextfieldValue
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Sub TextChange()
		  If Not Me.Value.IsEmpty And Me.Value <> Me.Hint Then
		    isEmpty = False
		    setTextFieldColors
		    'checkTextfieldValue
		  End If
		  
		  actionTextChange
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub actionTextChange()
		  RaiseEvent TextChanged
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub actionTextChange1()
		  RaiseEvent TextChanged
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub checkTextfieldValue()
		  If Me.Value.IsEmpty Then
		    isEmpty = True
		    Me.Value = Me.Hint
		  Else
		    isEmpty = False
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub checkTextfieldValue1()
		  If Me.Value.IsEmpty Then
		    isEmpty = True
		    Me.Value = Me.Hint
		  Else
		    isEmpty = False
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GotFocus()
		  isFocused = True
		  If isEmpty Then
		    Me.Value = ""
		  End If
		  
		  Self.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setTextFieldColors()
		  If isEmpty Then
		    Me.TextColor = kHintColor
		  Else
		    Me.TextColor = kTextColor
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setTextFieldColors1()
		  If isEmpty Then
		    Me.TextColor = kHintColor
		  Else
		    Me.TextColor = kTextColor
		  End If
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Paint()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextChanged()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Me.Hint
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Me.Hint = value
			End Set
		#tag EndSetter
		Hint1 As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private isEmpty As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h21
		Private isFocused As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private isHovered As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Me.Password
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Me.Password = value
			End Set
		#tag EndSetter
		IsPassword As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If Me.Value = Me.Hint Then
			    Return ""
			  Else
			    Return Me.Value
			  End If
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Me.Value = value
			  
			  If value.IsEmpty And Not isFocused Then
			    checkTextfieldValue
			    setTextFieldColors
			  End If
			End Set
		#tag EndSetter
		Value1 As String
	#tag EndComputedProperty


	#tag Constant, Name = kFocusedColor, Type = Color, Dynamic = False, Default = \"&c3B86FF", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"&c3B86FF"
	#tag EndConstant

	#tag Constant, Name = kHintColor, Type = Color, Dynamic = False, Default = \"&cCECFD0", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"&cCECFD0"
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


	#tag ViewBehavior
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Initial State"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="BackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&hFFFFFF"
			Type="Color"
			EditorType="Color"
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
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Format"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
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
			Name="Password"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="Color"
			EditorType="Color"
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
			Name="Underline"
			Visible=true
			Group="Font"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hint"
			Visible=true
			Group="Initial State"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="TextAlignment"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="TextAlignments"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Left"
				"2 - Center"
				"3 - Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowSpellChecking"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumCharactersAllowed"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ValidationMask"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReadOnly"
			Visible=true
			Group="Behavior"
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
			Name="Value1"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hint1"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsPassword"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
