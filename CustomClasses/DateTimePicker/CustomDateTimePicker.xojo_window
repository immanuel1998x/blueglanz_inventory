#tag Window
Begin Window CustomDateTimePicker
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   3
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   420
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   380
   MaximumWidth    =   500
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   380
   MinimumWidth    =   500
   Resizeable      =   False
   Title           =   "Select Date"
   Type            =   1
   Visible         =   True
   Width           =   302
   Begin CalendarContainer CalendarContainer1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      CalendarView    =   ""
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   True
      Height          =   348
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   300
   End
   Begin GraphicalTimerPicker GraphicalTimerPicker1
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      cursorInHours   =   False
      cursorInMinutes =   False
      cursorInPeriod  =   False
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   285
      hRectInView     =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   675
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      mouseX1         =   0
      mRectInView     =   0
      pRectInView     =   0
      Scope           =   0
      showHourRects   =   False
      showMinuteRects =   False
      showPeriodRects =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   176
   End
   Begin SimpleButton SimpleButtonOK
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "OK"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   33
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   212
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   379
      Transparent     =   True
      Visible         =   True
      Width           =   88
   End
   Begin SimpleButton SimpleButtonCancel
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "Cancel"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   33
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   124
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   379
      Transparent     =   True
      Visible         =   True
      Width           =   88
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  'Self.Height = CalendarContainer1.Height
		  'GraphicalTimerPicker1.Top = (Self.Height -GraphicalTimerPicker1.Height) / 2
		  'SimpleButtonOK.Top = GraphicalTimerPicker1.Top + GraphicalTimerPicker1.Height + 5
		  'SimpleButtonOK.Left = GraphicalTimerPicker1.Left + (GraphicalTimerPicker1.Width - SimpleButtonOK.Width) /2
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawingColor = Color.White
		  g.FillRectangle(0,0, g.Width, g.Height)
		  
		  g.DrawingColor = &c575A5E
		  Dim w As Integer = 2
		  Dim h As Integer = g.Height * .75
		  Dim Right As Integer = CalendarContainer1.Left + CalendarContainer1.Width
		  Dim x As Integer =  Right + (GraphicalTimerPicker1.Left - Right)/2
		  Dim y As Integer = (g.Height - h)/2
		  g.FillRoundRectangle(x,y,w,h, 2,2)
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		selectedDate As DateTime
	#tag EndProperty


#tag EndWindowCode

#tag Events SimpleButtonOK
	#tag Event
		Sub LeftClick()
		  Dim d As DateTime = CalendarContainer1.GetSelectedDate
		  Dim time As pair = GraphicalTimerPicker1.GetSelectedTime
		  If d <> Nil And time <> Nil Then
		    'MessageBox Str(d.Month) + "/" + Str(d.Day) + "/" + Str(d.Year) + " " _
		    '+ Str(time.Left) + ":" + Format(time.Right.IntegerValue, "00")
		    
		    d = New DateTime(d.Year,d.Month,d.Day, time.Left, time.Right)
		    // method here to save the date
		    
		    selectedDate = d
		    Self.Close
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.ButtonColor = accentColor
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SimpleButtonCancel
	#tag Event
		Sub LeftClick()
		  
		  Self.Close
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.ButtonColor = dangerColor
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
		Name="Interfaces"
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
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
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
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
