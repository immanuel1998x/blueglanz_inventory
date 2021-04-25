#tag Class
Protected Class SmallButton
Inherits Canvas
	#tag Event
		Sub GotFocus()
		  mGotFocus = True
		  Me.Invalidate
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Asc(Key) = 13 Then
		    RaiseEvent Clicked
		  End If
		End Function
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  mGotFocus = False
		  Me.Invalidate
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  mMouseDown = True
		  
		  Me.Invalidate
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  mMouseEntered = True
		  Self.Invalidate
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  mMouseEntered = False
		  
		  Self.Invalidate
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  mMouseDown = False
		  
		  Me.Invalidate
		  
		  If X < 0 Or X > Width Then
		    Return
		  End If
		  
		  If Y < 0 Or Y > Height Then
		    Return
		  End If
		  
		  RaiseEvent Clicked
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  If Not mMouseDown Then 'State NORMAL
		    g.DrawingColor = Color.White
		    g.FillRectangle(0, 0, g.Width, g.Height)
		    
		    g.DrawingColor = &cC0C0C000
		    g.DrawRectangle(0, 0, g.Width, g.Height)
		  Else 'State PRESSED
		    g.DrawingColor = &cC0C0C000
		    g.FillRectangle(0, 0, g.Width, g.Height)
		    
		    g.DrawingColor = &c80808000
		    g.DrawRectangle(0, 0, g.Width, g.Height)
		  End If
		  
		  If (mMouseEntered And Not mMouseDown) Or mGotFocus Then
		    g.DrawingColor = &c0080FF00
		    g.DrawRectangle(0, 0, g.Width, g.Height)
		  End If
		  
		  'Icon square section
		  Var iconPadding As Double = 8
		  Var squareLine As Double = g.Height
		  g.DrawLine(squareLine, iconPadding, squareLine, squareLine - iconPadding)
		  
		  'Write text
		  Dim txtPadding As Double = g.TextHeight / 5
		  Var portionXCenter As Double = ((g.Width - squareLine) / 2) + squareLine
		  Var portionYCenter As Double = ((g.Height + g.TextHeight) / 2) - txtPadding
		  g.DrawingColor = Color.Black
		  g.FontName = "Source Sans Pro Black"
		  g.FontSize = 16
		  g.FontUnit = FontUnits.Point
		  g.DrawText(Caption, portionXCenter - g.TextWidth(Caption) / 2, portionYCenter)
		  
		  If icon = Nil Then
		    Return
		  End If
		  
		  'Put icon
		  g.DrawPicture(icon, iconPadding, iconPadding, squareLine - iconPadding * 2, _
		  squareLine - iconPadding * 2, 0, 0, icon.Width, icon.Height)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  Me.AllowFocus = True
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Clicked()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GotFocus()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event LostFocus()
	#tag EndHook


	#tag Property, Flags = &h0
		Caption As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Icon As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mGotFocus As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMouseDown As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mMouseEntered As Boolean = False
	#tag EndProperty


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
			Name="Caption"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Icon"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Picture"
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
