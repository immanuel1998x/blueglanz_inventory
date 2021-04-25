#tag Window
Begin Window LoginModal
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   False
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   298
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   ""
   Type            =   4
   Visible         =   True
   Width           =   682
   Begin CustomBackground CustomBackground1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   298
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   294
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   388
      Begin CustomBackground CustomBackground2
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   55
         Index           =   -2147483648
         InitialParent   =   "CustomBackground1"
         Left            =   294
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   0
         Transparent     =   True
         Visible         =   True
         Width           =   388
         Begin Label Label7
            AllowAutoDeactivate=   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   33
            Index           =   -2147483648
            InitialParent   =   "CustomBackground2"
            Italic          =   False
            Left            =   357
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   0
            TabStop         =   True
            TextAlignment   =   0
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   11
            Transparent     =   True
            Underline       =   False
            Value           =   "Blueglanz Inventory System"
            Visible         =   True
            Width           =   279
         End
      End
      Begin SmallButton SmallButtonLogin
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   "Login"
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   35
         Icon            =   1769541631
         Index           =   -2147483648
         InitialParent   =   "CustomBackground1"
         Left            =   324
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   233
         Transparent     =   True
         Visible         =   True
         Width           =   125
      End
      Begin SmallButton SmallButtonCancel
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   "Cancel"
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   35
         Icon            =   1534699519
         Index           =   -2147483648
         InitialParent   =   "CustomBackground1"
         Left            =   528
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   233
         Transparent     =   True
         Visible         =   True
         Width           =   125
      End
      Begin InputField TextFieldPassword
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
         Hint            =   ""
         InitialParent   =   "CustomBackground1"
         IsPassword      =   True
         LabelText       =   "Password:"
         Left            =   314
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   156
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   348
      End
      Begin InputField TextFieldUsername
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
         Hint            =   ""
         InitialParent   =   "CustomBackground1"
         IsPassword      =   False
         LabelText       =   "Username:"
         Left            =   314
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   79
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   348
      End
   End
   Begin HeaderContainer HeaderContainer1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   False
      Height          =   298
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   294
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  
		  'CButtonSave.Left = CButtonSave.Left + 38
		  'CButtonCancel.Left = CButtonCancel.Left + 55
		  ''mObserver = mainMainWindow
		  '
		  'If mUnitEditing = True Then
		  'UnitNameField.Value      = DecodeURLComponent(mSelectedGuest_state)
		  'UnitPriceField.Value       = DecodeURLComponent(mSelectedGuest_city)
		  'End If
		  '
		  '
		  'UnitNameField.Value      = DecodeURLComponent(mSelectedGuest_state)
		  'UnitPriceField.Value       = DecodeURLComponent(mSelectedGuest_city)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub DoLogin()
		  Var isSuccess As Boolean = False
		  
		  If TextFieldUsername.Value = "" Then
		    isSuccess = False
		    MessageBox("Username is Required!")
		  Elseif TextFieldPassword.Value = "" Then
		    isSuccess = False
		    MessageBox("Password is Required!")
		  Else
		    isSuccess = True
		  End If
		  
		  If isSuccess Then
		    Var api As New HTTPSocket
		    api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		    api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded") 
		    
		    Var p as new Dictionary
		    p.Value("username")                = EncodeURLComponent(TextFieldUsername.Value)
		    p.Value("password")                = EncodeURLComponent(TextFieldPassword.Value)
		    current_user = p.Value("username")
		    api.SetFormData(p)
		    
		    Var response As New JSONItem(api.Get(App.URL + "/user/login", 30))
		    responseData = response
		    
		    If responseData = Nil Then
		      Return
		    End If
		    
		    If responseData.HasName("rows") Then
		      users = responseData.Child("rows")
		      If response.Value("status")= 200 Then
		        If response.Value("row_count").IntegerValue > 0 Then
		          Var user As JSONItem = users.ChildAt(0)
		          user_role  = DecodeURLComponent(user.Value("role"))
		          current_user = user_role
		          
		          MainWindow.Visible = True
		          'LoginModal.Visible = False
		          LoginModal.Close
		        Else
		          LoginModal.Visible = True
		          MessageBox("User does not exist.")
		        End If
		      End If
		    End If
		  End If
		  
		  
		  
		  
		  ''---------------------------------------//
		  ''temporary
		  '
		  'If TextFieldUsername.Value = "Admin" OR TextFieldPassword.Value = "Admin123" Then
		  'self.Close
		  'Main.Show
		  'End If
		  
		  
		  
		  
		  //
		  'Var u as New Dictionary
		  'Var userName As String = DecodeURLComponent(user.Value("username"))
		  'u.Value("user_id")      = EncodeURLComponent(user.Value("id"))
		  'u.Value("description")  = EncodeURLComponent("User Logged-in: " + userName)
		  'api.SetFormData(u)
		  'UID = u.Value("user_id") 
		  'InitControllerInstance
		  
		  'if userRole = "Admin" then
		  'Dim s1 As New GraphicalNavBarSegment("Guest", guest1)
		  'Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s1)
		  'Dim s2 As New GraphicalNavBarSegment("Reservation", reservation)
		  'Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s2)
		  'Dim s3 As New GraphicalNavBarSegment("Reservation Type", reservationType)
		  'Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s3)
		  'Dim s4 As New GraphicalNavBarSegment("Payment", payment)
		  'Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s4)
		  'Dim s5 As New GraphicalNavBarSegment("Reports", report1)
		  'Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s5)
		  'Dim s6 As New GraphicalNavBarSegment("Settings", settings)
		  'Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s6)
		  '
		  'Mainwindow.GraphicalNavBarManager1.selectSegment(0)
		  'else
		  'Dim s1 As New GraphicalNavBarSegment("Guest", guest1)
		  'Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s1)
		  'Dim s2 As New GraphicalNavBarSegment("Reservation", reservation)
		  'Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s2)
		  'Dim s3 As New GraphicalNavBarSegment("Reservation Type", reservationType)
		  'Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s3)
		  'Dim s4 As New GraphicalNavBarSegment("Payment", payment)
		  'Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s4)
		  'Dim s5 As New GraphicalNavBarSegment("Reports", report1)
		  'Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s5)
		  ''Dim s6 As New GraphicalNavBarSegment("Settings", settings)
		  ''Mainwindow.GraphicalNavBarManager1.addNavBarSegment(s6)
		  '
		  'Mainwindow.GraphicalNavBarManager1.selectSegment(0)
		  'End If
		  
		  'Var insertResponse As New JSONItem(api.Post(App.URL + "/logs/insert", 30))
		  'Self.Visible = False
		  'Main.fetchResponseLogs
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		responseData As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		users As JSONItem
	#tag EndProperty


#tag EndWindowCode

#tag Events Label7
	#tag Event
		Sub Open()
		  Me.FontSize = 20
		  Me.Bold = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonLogin
	#tag Event
		Sub Clicked()
		  DoLogin
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonCancel
	#tag Event
		Sub Clicked()
		  Self.Close
		  MainWindow.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextFieldPassword
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  'If Keyboard.AsyncKeyDown(24) Then
		  ''MessageBox("Hello")
		  'End If
		  'If Key = CHR(13) Then
		  'DoLogin
		  'End If
		End Function
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
