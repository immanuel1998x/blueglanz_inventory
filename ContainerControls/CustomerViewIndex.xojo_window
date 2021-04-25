#tag Window
Begin ContainerControl CustomerViewIndex
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
   Height          =   630
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   980
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
      Top             =   1
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
         Text            =   "Customer Management"
         TextAlignment   =   0
         TextColor       =   &cFFFFFF00
         Tooltip         =   ""
         Top             =   46
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   443
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
         Top             =   52
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
      Height          =   487
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
      Tooltip         =   ""
      Top             =   134
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   964
      Begin CustomSearchField TextFieldSearchClient
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
         FontSize        =   0.0
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
      Begin CustomListbox ListboxClients
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   True
         checkboxCol     =   -1
         ColumnCount     =   5
         ColumnWidths    =   "30,*"
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
         Height          =   378
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         InitialValue    =   "#	First Name	Last Name	Address	Contact No.			"
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
      Begin BigIconButton ButtonAddNewClient
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
         Tooltip         =   "Add New Customer"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin BigIconButton BigIconButtonEditClient
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
         Tooltip         =   "Edit Customer Info"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin BigIconButton ButtonDeleteClient
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
         Tooltip         =   "Delete Customer"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin BigIconButton ButtonRefresh
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
         Tooltip         =   "Refresh "
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
      Begin SmallButton ExportAsCSV
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   "Export as CSV"
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   30
         Icon            =   364965887
         Index           =   -2147483648
         InitialParent   =   "RoundRectangle1"
         Left            =   789
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   2
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   586
         Transparent     =   True
         Visible         =   True
         Width           =   164
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
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   "Search"
         Top             =   144
         Transparent     =   True
         Visible         =   True
         Width           =   40
      End
   End
   Begin SimpleButton ButtonAddNewClient2
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   1
      Caption         =   "New Customer(s)"
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
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -191
      Transparent     =   True
      Visible         =   True
      Width           =   130
   End
   Begin SimpleButton ButtonDelete32
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
      Left            =   249
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
      Top             =   -191
      Transparent     =   True
      Visible         =   True
      Width           =   120
   End
   Begin SimpleButton ButtonRefresh2
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
      Left            =   129
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
      Top             =   -191
      Transparent     =   True
      Visible         =   True
      Width           =   120
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
		Sub DeleteClient()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p As New Dictionary
		  p.Value("id") = client_id
		  api.SetFormData(p)
		  
		  Var response As String
		  response = api.Post(App.URL + "/client/delete_by_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    MessageBox(responseData.ToString)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FetchClient()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As String
		  response = api.Post(App.URL + "/client/fetch_all", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    PopulateListBoxClient(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PopulateListBoxClient(responsedata as JSONItem)
		  ListboxClients.RemoveAllRows
		  
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var clients as JSONItem = ResponseData.Child("rows")
		  Var num As Integer = 0
		  for i as integer = 0 to clients.Count - 1
		    num = num + 1
		    Var client as JSONItem = clients.ChildAt(i)
		    
		    Var first_name As String = DecodeURLComponent(client.Value("first_name"))
		    Var last_name As String = DecodeURLComponent(client.Value("last_name"))
		    Var address As String = DecodeURLComponent(client.Value("address"))
		    Var contact_no As String = client.Value("contact_no")
		    
		    ListboxClients.AddRow(num.ToString,first_name, last_name, address, contact_no)
		    ListboxClients.RowTag(ListboxClients.LastIndex) = client
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SearchClient()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  
		  Var client_search As New Dictionary
		  client_search.Value("last_name") = EncodeURLComponent(TextFieldSearchClient.Text)
		  api.SetFormData(client_search)
		  
		  Var response As String
		  response = api.Post(App.URL + "/client/search", 30)
		  responseData = New JSONItem(response)
		  
		  
		  If responseData.Value("status") = 200 Then
		    PopulateListBoxClient(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		jsonSelectedClient As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		responseData As JSONItem
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
#tag Events TextFieldSearchClient
	#tag Event
		Sub TextChanged()
		  If Me.Text= " " Then
		    FetchClient
		  End If
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 55736572206861732070726573736564205B63617272696167652072657475726E5D
		Sub Pressed(searchString as String)
		  SearchClient
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListboxClients
	#tag Event
		Sub Open()
		  FetchClient
		  Me.SetDefaultProperties
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  
		  If Me.ListIndex > -1 Then
		    jsonSelectedClient = Me.RowTag(Me.ListIndex)
		    client_id = jsonSelectedClient.Value("id")
		  End If
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  /////////////////////////////
		  'ListboxClients.RemoveAllRows
		  'MessageBox("hello")
		  'mUserID = mSelectedUser.Value("id")
		  'fieldname.Value = DecodeURLComponent(mSelectedUser.Value("name"))
		  'fieldEmail.Value = DecodeURLComponent(mSelectedUser.Value("email"))
		  'fieldUsername.Value = DecodeURLComponent(mSelectedUser.Value("username"))
		  'fieldPassword.Value = DecodeURLComponent(mSelectedUser.Value("password"))
		  'SearchPopupMenuRole.Value = DecodeURLComponent(mSelectedUser.Value("user_group"))
		End Sub
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  
		  If hitItem <> Nil Then
		    Select Case hitItem.Value
		    Case "Update"
		      If Me.ListIndex > -1 Then
		        jsonSelectedClient = Me.RowTag(Me.ListIndex)
		        
		        client_id = jsonSelectedClient.Value("id")
		        client_firstname = jsonSelectedClient.Value("first_name")
		        client_lastname = jsonSelectedClient.Value("last_name")
		        client_address = jsonSelectedClient.Value("address")
		        client_contact_no = jsonSelectedClient.Value("contact_no")
		        
		        isClientEditing = True
		        WindowAddNewClient.ShowModal
		      End If
		      
		    Case "View Transaction History"
		      If Me.ListIndex > -1 Then
		        jsonSelectedClient = Me.RowTag(Me.ListIndex)
		        client_id = jsonSelectedClient.Value("id")
		        WindowTransactionHistory.ShowModal
		      End If
		    End Select
		  End If
		  
		  'mUserID = mSelectedUser.Value("id")
		  'fieldname.Value = DecodeURLComponent(mSelectedUser.Value("name"))
		  'fieldEmail.Value = DecodeURLComponent(mSelectedUser.Value("email"))
		  'fieldUsername.Value = DecodeURLComponent(mSelectedUser.Value("username"))
		  'fieldPassword.Value = DecodeURLComponent(mSelectedUser.Value("password"))
		  'SearchPopupMenuRole.Value = DecodeURLComponent(mSelectedUser.Value("user_group"))
		  'controller.Update
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  // Add some items
		  
		  base.AddMenu( New MenuItem("Update"))
		  base.AddMenu( New MenuItem("View Transaction History"))
		  
		  base.AddMenu(New MenuItem(MenuItem.TextSeparator))
		  
		  Return True
		End Function
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
#tag Events ButtonAddNewClient
	#tag Event
		Sub Clicked()
		  WindowAddNewClient.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BigIconButtonEditClient
	#tag Event
		Sub Clicked()
		  If ListboxClients.ListIndex > -1 Then
		    jsonSelectedClient = ListboxClients.RowTag(ListboxClients.ListIndex)
		    
		    client_id = jsonSelectedClient.Value("id")
		    client_firstname = jsonSelectedClient.Value("first_name")
		    client_lastname = jsonSelectedClient.Value("last_name")
		    client_address = jsonSelectedClient.Value("address")
		    client_contact_no = jsonSelectedClient.Value("contact_no")
		    
		    isClientEditing = True
		    WindowAddNewClient.ShowModal
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonDeleteClient
	#tag Event
		Sub Clicked()
		  WindowClientConfirmDelete.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonRefresh
	#tag Event
		Sub Clicked()
		  FetchClient
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportAsCSV
	#tag Event
		Sub Clicked()
		  Var csv As String = ListboxClients.ExportToCSV
		  
		  Var csvType As New FileType
		  csvType.Name = "Comma Separated Values"
		  csvType.Extensions = "csv"
		  Var saveFile As FolderItem = FolderItem.ShowSaveFileDialog(csvType, "Blueglanz Transactions")
		  
		  If saveFile = Nil Then
		    Return
		  End If
		  
		  Var fileStream As TextOutputStream
		  fileStream = TextOutputStream.Create(saveFile)
		  fileStream.Write(csv)
		  fileStream.Close
		  
		  Return
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IconButtonSearch
	#tag Event
		Sub Clicked()
		  SearchClient
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonAddNewClient2
	#tag Event
		Sub Open()
		  Me.ButtonColor = primaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  WindowAddNewClient.ShowModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonDelete32
	#tag Event
		Sub Open()
		  Me.ButtonColor = dangerColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  WindowClientConfirmDelete.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonRefresh2
	#tag Event
		Sub Open()
		  Me.ButtonColor = primaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  FetchClient
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
#tag EndViewBehavior
