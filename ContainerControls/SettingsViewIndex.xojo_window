#tag Window
Begin ContainerControl SettingsViewIndex
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
   Height          =   838
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   980
   Begin Label Label11
      AllowAutoDeactivate=   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   35.0
      FontUnit        =   0
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   118
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
      Top             =   -303
      Transparent     =   False
      Underline       =   False
      Value           =   "User Management"
      Visible         =   True
      Width           =   316
   End
   Begin SimpleButton ButtonAddProduct
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "+New User"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   -7
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -259
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
   Begin CustomHeader CustomHeader1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   121
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   2
      Transparent     =   True
      Visible         =   True
      Width           =   973
      Begin Label Label_Header
         AllowAutoDeactivate=   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   35.0
         FontUnit        =   0
         Height          =   43
         Index           =   -2147483648
         InitialParent   =   "CustomHeader1"
         Italic          =   False
         Left            =   20
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
         Text            =   "User(s) Management"
         TextAlignment   =   0
         TextColor       =   &cFFFFFF00
         Tooltip         =   ""
         Top             =   47
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   349
      End
      Begin Label Label_CurrentUser
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
         InitialParent   =   "CustomHeader1"
         Italic          =   False
         Left            =   816
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   53
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin CustomRectangle RoundRectangle1
      AllowAutoDeactivate=   True
      BorderThickness =   1.0
      BottomRightColor=   &c00000000
      Enabled         =   True
      FillColor       =   &cFFFFFF00
      Height          =   696
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   134
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   964
      Begin CustomSearchField TextFieldSearch
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   40
         Hint            =   ""
         Hint1           =   ""
         Icon            =   0
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Italic          =   False
         Left            =   659
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   144
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Value1          =   ""
         Visible         =   True
         Width           =   242
      End
      Begin CustomListbox ListboxUsers
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   True
         checkboxCol     =   -1
         ColumnCount     =   7
         ColumnWidths    =   "*"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   18
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   16.0
         FontUnit        =   0
         GridLinesHorizontalStyle=   2
         GridLinesVerticalStyle=   2
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   614
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         InitialValue    =   "Fullname	Contact No.	Gender	Pin	Role	Username	Profile			"
         Italic          =   False
         Left            =   29
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   196
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   924
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin BigIconButton BigIconButtonAddUser
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   886433791
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   29
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Add New User"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin BigIconButton BigIconButtonEditUser
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   448557055
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   89
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Edit User"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin BigIconButton BigIconButtonDeleteUser
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   667951103
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   150
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Delete a User"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin BigIconButton BigIconButtonRefresh
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   1053984767
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   213
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Refresh Users"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin BigIconButton IconButtonSearch
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   40
         Icon            =   13963263
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   913
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Refresh"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
   End
   Begin SimpleButton ButtonDelete
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "Delete"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   240
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -93
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
   Begin SimpleButton ButtonRefresh
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   0
      Caption         =   "Refresh"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   120
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -93
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
   Begin SimpleButton ButtonAddProduct1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "New User"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -93
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
   Begin Label Label1
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   574
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
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
      Top             =   -83
      Transparent     =   False
      Underline       =   False
      Value           =   "Search"
      Visible         =   True
      Width           =   44
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  'fetchResponseProducts
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub DeleteUser()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p As New Dictionary
		  p.Value("id") = user_id
		  api.SetFormData(p)
		  
		  Var response As String
		  response = api.Post(App.URL + "/manage_user/delete_by_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    MessageBox(responseData.ToString)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FetchUser()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As String
		  response = api.Post(App.URL + "/manage_user/fetch_all", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    PopulateListBoxUser(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopulateListBoxUser(responsedata as JSONItem)
		  ListboxUsers.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var prod_users as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to prod_users.Count - 1
		    Var prod_user as JSONItem = prod_users.ChildAt(i)
		    
		    Var fullname As String = DecodeURLComponent(prod_user.Value("fullname"))
		    Var contact_no As String = DecodeURLComponent(prod_user.Value("contact_no"))
		    Var gender As String = DecodeURLComponent(prod_user.Value("gender"))
		    Var pin As String = prod_user.Value("pin")
		    Var role As String = DecodeURLComponent(prod_user.Value("role"))
		    Var username As String = DecodeURLComponent(prod_user.Value("username"))
		    'Var password As String = DecodeURLComponent(prod_user.Value("password"))
		    
		    
		    ListboxUsers.AddRow(fullname, contact_no, gender, pin,role,username)
		    ListboxUsers.RowTag(ListboxUsers.LastIndex) = prod_user
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		jsonSelectedUser As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		responseData As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Untitled As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events ButtonAddProduct
	#tag Event
		Sub Open()
		  Me.ButtonColor = primaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  WindowManageUser.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextFieldSearch
	#tag Event
		Sub TextChanged()
		  'If Me.Value = "" Then
		  'ListBoxProducts.RemoveAllRows
		  'End If
		  'fetchResponseProducts
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListboxUsers
	#tag Event
		Sub Open()
		  FetchUser
		  Me.SetDefaultProperties
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Me.ListIndex > -1 Then
		    
		    'mSelectedUser = Me.RowTag(Me.ListIndex)
		    'mUserID = mSelectedUser.Value("id")
		    ''MessageBox(mSelectedUser.Value("user_group"))
		    ''MessageBox(mSelectedUser.Value("department"))
		    'Role_LabelHolder.Value = mSelectedUser.Value("user_group")
		    'Department_LabelHolder.Value = mSelectedUser.Value("department")
		  End If
		  
		  'mUserID = mSelectedUser.Value("id")
		  'fieldname.Value = DecodeURLComponent(mSelectedUser.Value("name"))
		  'fieldEmail.Value = DecodeURLComponent(mSelectedUser.Value("email"))
		  'fieldUsername.Value = DecodeURLComponent(mSelectedUser.Value("username"))
		  'fieldPassword.Value = DecodeURLComponent(mSelectedUser.Value("password"))
		  'SearchPopupMenuRole.Value = DecodeURLComponent(mSelectedUser.Value("user_group"))
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  'If Me.ListIndex > -1 Then
		  '
		  'mSelectedUser = Me.RowTag(Me.ListIndex)
		  'mUserID = mSelectedUser.Value("id")
		  ''MessageBox(mSelectedUser.Value("user_group"))
		  ''MessageBox(mSelectedUser.Value("department"))
		  'Role_LabelHolder.Value = mSelectedUser.Value("user_group")
		  'Department_LabelHolder.Value = mSelectedUser.Value("department")
		  'End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonAddUser
	#tag Event
		Sub Clicked()
		  WindowManageUser.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonEditUser
	#tag Event
		Sub Clicked()
		  If ListboxUsers.ListIndex > -1 Then
		    jsonSelectedUser = ListboxUsers.RowTag(ListboxUsers.ListIndex)
		    
		    user_id = jsonSelectedUser.Value("id")
		    user_fullname = jsonSelectedUser.Value("fullname")
		    user_contact_no = jsonSelectedUser.Value("contact_no")
		    user_gender = jsonSelectedUser.Value("gender")
		    user_pin = jsonSelectedUser.Value("pin")
		    user_role = jsonSelectedUser.Value("role")
		    user_username = jsonSelectedUser.Value("username")
		    user_password = jsonSelectedUser.Value("password")
		    
		    isUserEditing = True
		    WindowManageUser.ShowModal
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonDeleteUser
	#tag Event
		Sub Clicked()
		  WindowUserConfirmDelete.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonRefresh
	#tag Event
		Sub Clicked()
		  FetchUser
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IconButtonSearch
	#tag Event
		Sub Clicked()
		  'searchProductByProduct_Type_Name
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonDelete
	#tag Event
		Sub Open()
		  Me.ButtonColor = dangerColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  DeleteUser
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonRefresh
	#tag Event
		Sub Open()
		  Me.ButtonColor = primaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  FetchUser
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonAddProduct1
	#tag Event
		Sub Open()
		  Me.ButtonColor = primaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  WindowManageUser.ShowModal
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
		Name="InitialParent"
		Visible=false
		Group="Position"
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
		Name="EraseBackground"
		Visible=false
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
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Untitled"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
