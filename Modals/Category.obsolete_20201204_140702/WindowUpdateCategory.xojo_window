#tag Window
Begin Window WindowUpdateCategory
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   "1"
   FullScreen      =   False
   HasBackgroundColor=   True
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   True
   Height          =   140
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Update Category"
   Type            =   "1"
   Visible         =   True
   Width           =   318
   Begin SimpleButton ButtonCancel
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   "1"
      Caption         =   "Cancel"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   16
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
      Top             =   100
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin SimpleButton ButtonUpdate
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      ButtonColor     =   &c00000000
      ButtonType      =   "1"
      Caption         =   "Update"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   202
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
      Top             =   100
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
      Height          =   68
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   278
      Begin Label Label11
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Italic          =   False
         Left            =   30
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
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   36
         Transparent     =   False
         Underline       =   False
         Value           =   "Category:"
         Visible         =   True
         Width           =   82
      End
      Begin CustomComboBox CProductTypeComboBox
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
         InitialValue    =   ""
         Italic          =   False
         Left            =   124
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   41
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   154
      End
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
		  'MessageBox(product_type)
		  
		  If IsEditing = True Then
		    CProductTypeComboBox.Value = product_type_name
		    
		    if IsEditing = true then
		      FetchResponseProductTypeBy_ID
		    end if
		  End If
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub FetchResponseProductTypeBy_ID()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var data As New Dictionary
		  data.Value("id") = product_type
		  api.SetFormData(data)
		  
		  Var response As String
		  response = api.Post(App.URL + "/product_category/select_by_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub fetchResponseProductTypes()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As String
		  response = api.Post(App.URL + "/product_category/fetch_all", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    populateProductTypes(responseData)
		    'MsgBox(responseData.ToString)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub populateProductTypes(responseData As JSONItem)
		  CProductTypeComboBox.RemoveAllRows
		  if ResponseData.Value("row_count") <= 0 then
		    return
		  end if
		  
		  Var product_types as JSONItem = ResponseData.Child("rows")
		  for i as integer = 0 to product_types.Count - 1
		    Var product_type as JSONItem = product_types.ChildAt(i)
		    
		    Var id As String = DecodeURLComponent(product_type.Value("id"))
		    Var product_type_name As String = DecodeURLComponent(product_type.Value("category_name"))
		    
		    
		    CProductTypeComboBox.AddRow(product_type_name)
		    CProductTypeComboBox.RowTag(CProductTypeComboBox.LastAddedRowIndex) = product_type
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub productIdGenerate()
		  '// names are split using space
		  'Var name() As String = CDescriptionTextArea.Value.Split(CHR(32))
		  '
		  '// global value
		  'Var uniqueName As String
		  '
		  '// check each split data and only add the first letter
		  'For i As Integer = 0 To name.Count - 1
		  'uniqueName = Str(uniqueName + Left(name(i), 1)).Uppercase
		  'Next
		  '
		  '// first letter of the typed text and add the no
		  ''For i As Integer = 0 To CListBoxAttributes.RowCount - 1
		  'If CProductNoTextField.Value = "" Then
		  'CProductIdGenerated.Value = uniqueName + "-00"
		  'Else
		  '
		  'CProductIdGenerated.Value = uniqueName + "-" + CProductNoTextField.Value
		  'End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateProduct()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p as new Dictionary
		  
		  p.Value("id")             = product_id
		  'p.Value("product_typeid") = productTypeIdHolder
		  p.Value("category_name") = EncodeURLComponent(CProductTypeComboBox.Value)
		  api.SetFormData(p)
		  
		  
		  Var address as string = App.URL + "/product_category/update"
		  Var response As New JSONItem(api.Post(address, 2))
		  
		  If response.Value("status") = 200 Then
		    Self.Close
		  Else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  'If CProductTypeComboBox.ListIndex > -1 Then
		  '
		  'json_product_type = CProductTypeComboBox.RowTag(CProductTypeComboBox.LastAddedRowIndex)
		  'product_type_id_combobox = json_product_type.Value("id")
		  '
		  'End If
		  '
		  'MessageBox(product_type_id_combobox.ToString)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		json_product_type As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		product_type_id_combobox As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		selectedProductType As JSONItem
	#tag EndProperty


#tag EndWindowCode

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
#tag Events ButtonUpdate
	#tag Event
		Sub Open()
		  Me.ButtonColor = secondaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  
		  updateProduct
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CProductTypeComboBox
	#tag Event
		Sub TextChanged()
		  If Me.ListIndex > -1 Then
		    
		    json_product_type = Me.RowTag(Me.ListIndex)
		    productTypeIdHolder = json_product_type.Value("id")
		    
		    
		  End If
		  
		  
		  'If CProductTypeComboBox.ListIndex > -1 Then
		  'product_type = CProductTypeComboBox.RowTag(CProductTypeComboBox.ListIndex)
		  'MessageBox(product_type.Value("id"))
		  ''reservation_ID = selectedProductType.Value("id")
		  ''MsgBox(selectedProductType.Value("id"))
		  'End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Load()
		  fetchResponseProductTypes
		  
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
	#tag ViewProperty
		Name="product_type_id_combobox"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
