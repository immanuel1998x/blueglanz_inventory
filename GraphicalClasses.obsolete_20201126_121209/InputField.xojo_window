#tag Window
Begin ContainerControl InputField
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
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   False
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   300
   Begin TextField TextField1
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
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
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
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
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   25
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Visible         =   True
      Width           =   260
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
      Left            =   12
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
      TabStop         =   False
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Value           =   "Helper Text"
      Visible         =   True
      Width           =   276
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
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  If g.Width < 50 Then Return
		  
		  setTextFieldColors
		  
		  Dim txtLeft As Integer = TextField1.Left
		  Dim txtTop As Integer = TextField1.Top
		  Const padding = 10
		  
		  g.PenSize = 1.5
		  Dim w As Integer = TextField1.Width + padding*2
		  Dim h As Integer = TextField1.Height + padding
		  Dim x As Integer = txtLeft + (TextField1.Width - w)/2
		  Dim y As Integer = txtTop + (TextField1.Height - h)/2
		  
		  g.DrawingColor = Color.White
		  g.FillRectangle(x,y,w,h)
		  
		  g.DrawingColor = kIdleColor
		  If isFocused Then
		    g.DrawingColor = kFocusedColor
		  Elseif isHovered Then
		    g.DrawingColor = kHoveredColor
		  End If
		  g.DrawRectangle(x,y,w,h)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub actionTextChange()
		  RaiseEvent TextChanged
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub checkTextfieldValue()
		  If TextField1.Value.IsEmpty Then
		    isEmpty = True
		    TextField1.Value = TextField1.Hint
		  Else
		    isEmpty = False
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setTextFieldColors()
		  If isEmpty Then
		    TextField1.TextColor = kHintColor
		  Else
		    TextField1.TextColor = kTextColor
		  End If
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event TextChanged()
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return TextField1.Hint
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  TextField1.Hint = value
			End Set
		#tag EndSetter
		Hint As String
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
			  Return TextField1.Password
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  TextField1.Password = value
			End Set
		#tag EndSetter
		IsPassword As Boolean
	#tag EndComputedProperty

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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If TextField1.Value = TextField1.Hint Then
			    Return ""
			  Else
			    Return TextField1.Value
			  End If
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  TextField1.Value = value
			  
			  If value.IsEmpty And Not isFocused Then
			    checkTextfieldValue
			    setTextFieldColors
			  End If
			End Set
		#tag EndSetter
		Value As String
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


#tag EndWindowCode

#tag Events TextField1
	#tag Event
		Sub Open()
		  checkTextfieldValue
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  isFocused = True
		  label1.TextColor = kFocusedColor
		  If isEmpty Then
		    Me.Value = ""
		  End If
		  
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  isFocused = False
		  label1.TextColor = kTextColor
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
		Name="Value"
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
		Name="Hint"
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
		Name="IsPassword"
		Visible=true
		Group="Behavior"
		InitialValue=""
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
