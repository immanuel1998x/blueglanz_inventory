#tag Window
Begin Window WindowManageUser
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   1
   FullScreen      =   False
   HasBackgroundColor=   True
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   True
   Height          =   662
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Manage Users"
   Type            =   1
   Visible         =   True
   Width           =   738
   Begin Label Label1
      AllowAutoDeactivate=   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   30.0
      FontUnit        =   0
      Height          =   39
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   -13
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
      Top             =   -294
      Transparent     =   False
      Underline       =   False
      Value           =   "User Info"
      Visible         =   True
      Width           =   185
   End
   Begin SimpleButton ButtonSave1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "Save"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   370
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Right           =   0
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   777
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin SimpleButton ButtonCancel
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
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   138
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Right           =   0
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   726
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin SimpleButton ButtonUpdate1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "Update"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   370
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Right           =   0
      Scope           =   0
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   824
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin CustomCanvas_Background CustomCanvas_Background1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   580
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   698
      Begin GraphicalRadioButtons GRB_Gender
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   "Gender"
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   116
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Left            =   367
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   73
         Transparent     =   True
         Visible         =   True
         Width           =   132
      End
      Begin InputField TextFieldFullName
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
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         IsPassword      =   False
         LabelText       =   "Fullname"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   73
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin InputField TextFieldContactNo
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
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         IsPassword      =   False
         LabelText       =   "Contact No."
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   150
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin InputField TextFieldPin
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
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         IsPassword      =   False
         LabelText       =   "Pin"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   228
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
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
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         IsPassword      =   False
         LabelText       =   "Username"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   431
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin ComboBox ComboBoxRole
         AllowAutoComplete=   False
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         InitialValue    =   "Admin\r\nStandard"
         Italic          =   False
         Left            =   52
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   327
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   270
      End
      Begin Label Label11
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Italic          =   False
         Left            =   52
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   305
         Transparent     =   False
         Underline       =   False
         Value           =   "Role"
         Visible         =   True
         Width           =   92
      End
      Begin Label Label_LoginCreds
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Italic          =   False
         Left            =   52
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   392
         Transparent     =   False
         Underline       =   False
         Value           =   "Login Credentials:"
         Visible         =   True
         Width           =   288
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
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         IsPassword      =   False
         LabelText       =   "Password"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   515
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin Label Label_LoginCreds1
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Italic          =   False
         Left            =   52
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   40
         Transparent     =   False
         Underline       =   False
         Value           =   "User Information:"
         Visible         =   True
         Width           =   288
      End
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
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   612
      Transparent     =   True
      Visible         =   True
      Width           =   125
   End
   Begin SmallButton SmallButtonSave
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Caption         =   "Save"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   35
      Icon            =   1769541631
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   593
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   612
      Transparent     =   True
      Visible         =   True
      Width           =   125
   End
   Begin SmallButton SmallButtonUpdate
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Caption         =   "Update"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   35
      Icon            =   1769541631
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   593
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   697
      Transparent     =   True
      Visible         =   True
      Width           =   125
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  isUserEditing = False
		  SmallButtonUpdate.Top = 612
		  SmallButtonSave.Top = 697
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  If isUserEditing = True Then
		    PopulateUserFields
		    SmallButtonUpdate.Top = 612
		    SmallButtonSave.Top = 697
		  End If
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub InsertNewUser()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  If TextFieldUsername.Value = "" Then
		    MessageBox("Username is required.")
		    Return
		  End If
		  
		  If TextFieldPassword.Value = "" Then
		    MessageBox("Contact number is required.")
		    Return
		  End If
		  
		  
		  Var data as new Dictionary
		  data.Value("fullname")  = EncodeURLComponent(TextFieldFullName.Value)
		  data.Value("contact_no") = EncodeURLComponent(TextFieldContactNo.Value)
		  data.Value("gender") = EncodeURLComponent(GRB_Gender.getSelectedValue)
		  data.Value("pin") = EncodeURLComponent(TextFieldPin.Value)
		  data.Value("role") = EncodeURLComponent(ComboBoxRole.Value)
		  data.Value("username") = EncodeURLComponent(TextFieldUsername.Value)
		  data.Value("password") = EncodeURLComponent(TextFieldPassword.Value)
		  api.SetFormData(data)
		  
		  Var response As New JSONItem(api.Post(App.URL + "/manage_user/insert", 2))
		  
		  
		  
		  if response.Value("status") = 200 then
		    Self.Close
		  else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		  
		  
		  
		  
		  'mLastInsertedID = response.Value("insert_id")
		  'If CProductTypeComboBox.SelectedRowIndex = -1 Then
		  'MessageBox("Please select a product type.")
		  'Return
		  'End If
		  '
		  'Var productTypeId As Integer = 0
		  'Var productType As JSONItem = CProductTypeComboBox.RowTagAt(CProductTypeComboBox.SelectedRowIndex)
		  'If productType = Nil Then
		  'MessageBox("Please select a product type")
		  'Return
		  'End If
		  '
		  'If productType.HasName("id") Then
		  'productTypeId = productType.Value("id")
		  'End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopulateUserFields()
		  TextFieldFullName.Value = DecodeURLComponent(user_fullname)
		  TextFieldContactNo.Value = user_contact_no
		  TextFieldPin.Value = user_pin
		  ComboBoxRole.Value = user_role
		  TextFieldUsername.Value = user_username
		  TextFieldPassword.Value = user_password
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateUser()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var data as new Dictionary
		  data.Value("id")  = user_id.ToString
		  data.Value("fullname")  = EncodeURLComponent(TextFieldFullName.Value)
		  data.Value("contact_no") = EncodeURLComponent(TextFieldContactNo.Value)
		  data.Value("gender") = EncodeURLComponent(GRB_Gender.getSelectedValue)
		  data.Value("pin") = EncodeURLComponent(TextFieldPin.Value)
		  data.Value("role") = EncodeURLComponent(ComboBoxRole.Value)
		  data.Value("username") = EncodeURLComponent(TextFieldUsername.Value)
		  data.Value("password") = EncodeURLComponent(TextFieldPassword.Value)
		  api.SetFormData(data)
		  
		  Var address as string = App.URL + "/manage_user/update"
		  Var response As New JSONItem(api.Post(address, 2))
		  
		  If response.Value("status") = 200 Then
		    'MessageBox(response.ToString)
		    Self.Close
		  Else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		date_rented As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		date_sold As DateTime
	#tag EndProperty


#tag EndWindowCode

#tag Events ButtonSave1
	#tag Event
		Sub Open()
		  Me.ButtonColor = secondaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  InsertNewUser
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonCancel
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
#tag Events ButtonUpdate1
	#tag Event
		Sub Open()
		  Me.ButtonColor = secondaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  UpdateUser
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GRB_Gender
	#tag Event
		Sub Open()
		  Var arr() As String = Array ("Male", "Female")
		  Me.setChoices(arr, 0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label_LoginCreds
	#tag Event
		Sub Open()
		  Me.FontSize = 15
		  Me.Bold = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label_LoginCreds1
	#tag Event
		Sub Open()
		  Me.FontSize = 15
		  Me.Bold = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonCancel
	#tag Event
		Sub Clicked()
		  Self.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonSave
	#tag Event
		Sub Clicked()
		  InsertNewUser
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonUpdate
	#tag Event
		Sub Clicked()
		  UpdateUser
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
