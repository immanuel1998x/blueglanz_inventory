#tag Window
Begin Window WindowAddSales
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
   Title           =   "Manage Sales"
   Type            =   1
   Visible         =   True
   Width           =   846
   Begin CustomCanvas_Background CustomCanvas_Background1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   571
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   806
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
         Scope           =   2
         TabIndex        =   19
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   121
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   350
      End
      Begin InputTxtArea TextAreaDescription
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
         Height          =   137
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         LabelText       =   "Description"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   20
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   198
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   356
      End
      Begin InputField TextFieldDateReturn
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
         LabelText       =   "Expected Date Return"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   21
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   347
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   350
      End
      Begin InputField TextFieldQuantity
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
         LabelText       =   "Quantity"
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   23
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   47
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   350
      End
      Begin InputField TextFieldDeposit
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
         LabelText       =   "Deposit"
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   24
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   121
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   350
      End
      Begin GraphicalRadioButtons GRBSold_Rented
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   ""
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   86
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   26
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   424
         Transparent     =   True
         Visible         =   True
         Width           =   100
      End
      Begin InputField TextFieldAmount
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
         LabelText       =   "Total Amount"
         Left            =   411
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   27
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   198
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   350
      End
      Begin SearchPopupMenu SearchPopupMenuClient
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
         Height          =   62
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         LabelText       =   "Client Name"
         Left            =   41
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   18
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   47
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   350
      End
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
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   617
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin SimpleButton ButtonSave
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
      Left            =   730
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Right           =   0
      Scope           =   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   617
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin PushButton PushButton1
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "+"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   21
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   1609
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   229
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   22
   End
   Begin IconButton1 ButtonChooseDate1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   22
      Icon            =   2042361855
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   946
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   380
      Transparent     =   True
      Visible         =   True
      Width           =   30
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  TextFieldDateReturn.Value = "Sold"
		  TextAreaDescription.Value = product_description
		  Populate_ComboboxClient
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub insertNewSale()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  If SearchPopupMenuClient.Value = "" Then
		    MessageBox("Client's Name is required.")
		    Return
		  End If
		  
		  If TextFieldContactNo.Value = "" Then
		    MessageBox("Contact number is required.")
		    Return
		  End If
		  
		  
		  Var data as new Dictionary
		  data.Value("client_name") = EncodeURLComponent(SearchPopupMenuClient.Value)
		  data.Value("contact_no") = EncodeURLComponent(TextFieldContactNo.Value)
		  data.Value("description") = EncodeURLComponent(TextAreaDescription.Value)
		  data.Value("quantity") = EncodeURLComponent(TextFieldQuantity.Value).ToInteger
		  Var updatedStock As Integer
		  updatedStock = product_stock.ToInteger - data.Value("quantity")
		  if GRBSold_Rented.getSelectedValue = "Sold" then
		    data.Value("sold") = "Yes"
		    data.Value("rented") = "No"
		  Else
		    data.Value("sold") = "No"
		    data.Value("rented") = "Yes"
		  end if
		  
		  data.Value("date_returned") = TextFieldDateReturn.Value
		  data.Value("amount") = TextFieldAmount.Value
		  data.Value("deposit") = TextFieldDeposit.Value
		  data.Value("report_id") = product_id
		  
		  api.SetFormData(data)
		  'Break
		  
		  Var response As New JSONItem(api.Post(App.URL + "/reports/insert", 2))
		  
		  
		  
		  if response.Value("status") = 200 then
		    
		    Var stock as new Dictionary
		    
		    stock.Value("stock") = updatedStock
		    stock.Value("id") = product_id
		    api.SetFormData(stock)
		    
		    Var responsestock As New JSONItem(api.Post(App.URL + "/product_attributes/update_stock", 2))
		    Self.Close
		  else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Populate_ComboboxClient()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  
		  Var response As String
		  response = api.Post(App.URL + "/client/fetch_all", 30)
		  Var responseData As New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    Dim items() As String
		    Dim tags() As Variant
		    
		    if ResponseData.Value("row_count") <= 0 then
		      return
		    Else
		      mClients = responseData.Value("rows")
		    end if
		    
		    Var amenity_types as JSONItem = responseData.Child("rows")
		    for i as integer = 0 to amenity_types.Count - 1
		      Var amenity_type as JSONItem = amenity_types.ChildAt(i)
		      
		      Var last_name As String = DecodeURLComponent(amenity_type.Value("last_name"))
		      Var first_name As String = DecodeURLComponent(amenity_type.Value("first_name"))
		      
		      Var mClientContainer as new CustomerViewIndex
		      mClientContainer.FetchClient
		      items.AddRow(last_name + ", " + first_name)
		      tags.AddRow(amenity_type)
		    Next
		    SearchPopupMenuClient.AddList(items,tags)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		date_rented As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		date_sold As DateTime
	#tag EndProperty

	#tag Property, Flags = &h21
		Private jsonSelectedClient As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mClients As JSONItem
	#tag EndProperty


#tag EndWindowCode

#tag Events TextFieldQuantity
	#tag Event
		Sub TextChanged()
		  if Me.Value = "" then
		    Return 
		  Else
		    TextFieldAmount.Value = Str(product_price.ToDouble * Me.Value.ToDouble)
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GRBSold_Rented
	#tag Event
		Sub Open()
		  Var arr() As String = Array ("Sold", "Rented")
		  Me.setChoices(arr, 0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchPopupMenuClient
	#tag Event
		Sub ValueChanged()
		  If Not Me.Value.IsEmpty Then
		    Dim rowTag As Variant = Me.getRowTag(Me.Value)
		    If rowTag <> Nil Then
		      jsonSelectedClient = rowTag
		      TextFieldContactNo.Value = DecodeURLComponent(jsonSelectedClient.Value("contact_no"))
		      client_id = jsonSelectedClient.Value("id")
		      'MessageBox(mReservation_Guest_ID_Holder.ToString)
		      
		    End If
		  End If
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
#tag Events ButtonSave
	#tag Event
		Sub Open()
		  Me.ButtonColor = secondaryColor
		  
		  
		  
		  'CProductTypeComboBox.Value = product_type_name
		  'CProductNoTextField.Value = product_no
		  'CProductIdGenerated.Value = product_id_generated
		  'CDescriptionTextArea.Value = product_description
		  
		  'For i As Integer = 0 To CListBoxAttributes.RowCount - 1
		  
		  'TextField.Value = product_size
		  'TextFieldColor.Value = product_color
		  'TextFieldStock.Value = product_stock
		  'TextFieldPrice.Value = product_price
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  insertNewSale
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  'TextFieldQuantity.Value + 1
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
