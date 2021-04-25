#tag Window
Begin Window WindowUpdateProductAttribute
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
   Height          =   576
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Update Product"
   Type            =   "1"
   Visible         =   True
   Width           =   740
   Begin CustomCanvas_Background CustomCanvas_Background1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   489
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
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
      Top             =   17
      Transparent     =   True
      Visible         =   True
      Width           =   700
      Begin InputField TextFieldNo
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
         LabelText       =   "Style No."
         Left            =   40
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
         Top             =   78
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin InputField TextFieldSize
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
         LabelText       =   "Size"
         Left            =   40
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
         Top             =   155
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin InputField TextFieldColor
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
         LabelText       =   "Color"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   232
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin InputField TextFieldStock
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   False
         EraseBackground =   True
         HasBackgroundColor=   False
         Height          =   65
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         IsPassword      =   False
         LabelText       =   "Stock"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   309
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin InputField TextFieldPrice
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
         LabelText       =   "Price"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   False
         Tooltip         =   ""
         Top             =   386
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin InputField TextFieldProduct_ID_Generated
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   False
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         DoubleBuffer    =   False
         Enabled         =   False
         EraseBackground =   True
         HasBackgroundColor=   False
         Height          =   65
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         IsPassword      =   False
         LabelText       =   "Barcode"
         Left            =   352
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
         Top             =   386
         Transparent     =   True
         Value           =   ""
         Visible         =   True
         Width           =   300
      End
      Begin Label Label7
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
         Left            =   352
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   72
         Transparent     =   False
         Underline       =   False
         Value           =   "Description"
         Visible         =   True
         Width           =   76
      End
      Begin InputTextArea InputTextAreaDescription
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   True
         AllowStyledText =   True
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
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         Height          =   264
         HideSelection   =   True
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         Italic          =   False
         Left            =   352
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   101
         Transparent     =   False
         Underline       =   False
         UnicodeMode     =   "0"
         ValidationMask  =   ""
         Value           =   ""
         Value1          =   ""
         Visible         =   True
         Width           =   300
      End
   End
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
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   518
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
      Left            =   624
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Right           =   0
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   518
      Transparent     =   True
      Visible         =   True
      Width           =   100
   End
   Begin TextField1 TextFieldProduct_ID_Generateda
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Hint1           =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      IsPassword      =   False
      Italic          =   False
      Left            =   352
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   935
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Value           =   ""
      Value1          =   ""
      Visible         =   True
      Width           =   208
   End
   Begin Label Label8
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
      Left            =   124
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   936
      Transparent     =   False
      Underline       =   False
      Value           =   "Product ID Generated"
      Visible         =   True
      Width           =   128
   End
   Begin InputTxtArea InputTextAreaDescriptionas
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
      Height          =   159
      Hint            =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      LabelText       =   ""
      Left            =   870
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   169
      Transparent     =   True
      Value           =   ""
      Visible         =   True
      Width           =   300
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  If IsEditing = True Then
		    Me.Title = "Update Product"
		    'CProductTypeComboBox.Value = product_type_name
		    'CProductNoTextField.Value = product_no
		    'CProductIdGenerated.Value = product_id_generated
		    'CDescriptionTextArea.Value = product_description
		    
		    'For i As Integer = 0 To CListBoxAttributes.RowCount - 1
		    
		    TextFieldSize.Value = product_size
		    TextFieldColor.Value = product_color
		    TextFieldStock.Value = product_stock
		    TextFieldPrice.Value = product_price
		    TextFieldNo.Value = product_no
		    InputTextAreaDescription.Value = product_description
		    TextFieldProduct_ID_Generated.Value = product_id_generated
		    updateProductAttrFetch
		  End If
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ProductIDGenerate()
		  // names are split using space
		  Var name() As String = InputTextAreaDescription.Value.Split(CHR(32))
		  
		  // global value
		  Var uniqueName As String
		  
		  // check each split data and only add the first letter
		  For i As Integer = 0 To name.Count - 1
		    uniqueName = Str(uniqueName + Left(name(i), 1)).Uppercase
		  Next
		  
		  // first letter of the typed text and add the no
		  
		  
		  TextFieldProduct_ID_Generated.Value = uniqueName + "-" + TextFieldSize.Value + "-"  + TextFieldNo.Value
		  
		  
		  
		  
		  
		  
		  'For i As Integer = 0 To CListBoxAttributes.RowCount - 1
		  
		  
		  'CProductIdGenerated.Value = uniqueName + "-00"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateProductAttrFetch()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var productAttributes As New Dictionary
		  
		  productAttributes.Value("id") = product_id
		  
		  api.SetFormData(productAttributes)
		  
		  Var response As String
		  response = api.Post(App.URL + "/products/select_by_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    Var pvi As New ProductViewIndex
		    pvi.populateListBoxProductAttr(responseData)
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateProductAttributes()
		  Var api As New HTTPSocket
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var response As JSONItem
		  
		  Var productAttributes As New Dictionary
		  
		  productAttributes.Value("size") = TextFieldSize.Value
		  productAttributes.Value("color") = TextFieldColor.Value
		  productAttributes.Value("stock") = TextFieldStock.Value
		  productAttributes.Value("price") = TextFieldPrice.Value.ReplaceAll(",", "").ReplaceAll("₱","")
		  productAttributes.Value("style_no") = TextFieldNo.Value
		  productAttributes.Value("description") = EncodeURLComponent(InputTextAreaDescription.Value)
		  productAttributes.Value("barcode") = TextFieldProduct_ID_Generated.Value
		  productAttributes.Value("id") = product_id
		  
		  api.SetFormData(productAttributes)
		  
		  Var address as string = App.URL + "/products/update"
		  response = New JSONItem(api.Post(address, 2))
		  
		  
		  If response.Value("status") = 200 Then
		    Var pvi As New ProductViewIndex
		    pvi.FetchResponseProducts
		    Self.Close
		  Else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		mLastInsertedID As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events InputTextAreaDescription
	#tag Event
		Sub TextChange()
		  ProductIDGenerate
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
#tag Events ButtonUpdate
	#tag Event
		Sub Open()
		  Me.ButtonColor = secondaryColor
		End Sub
	#tag EndEvent
	#tag Event
		Sub LeftClick()
		  updateProductAttributes
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
		Name="mLastInsertedID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
