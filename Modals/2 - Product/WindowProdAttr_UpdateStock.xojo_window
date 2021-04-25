#tag Window
Begin Window WindowProdAttr_UpdateStock
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
   Height          =   228
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Return Stock"
   Type            =   1
   Visible         =   True
   Width           =   376
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
      Left            =   20
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
      Top             =   318
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
      ButtonType      =   1
      Caption         =   "Update"
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   264
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
      Top             =   318
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
      Height          =   153
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   336
      Begin TextField1 P_RestockAmtTextField
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
         Height          =   25
         Hint            =   ""
         Hint1           =   ""
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         IsPassword      =   False
         Italic          =   False
         Left            =   204
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   114
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Value1          =   ""
         Visible         =   True
         Width           =   100
      End
      Begin Label Label13
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
         Left            =   40
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
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   109
         Transparent     =   False
         Underline       =   False
         Value           =   "Re-stock Amount:"
         Visible         =   True
         Width           =   100
      End
      Begin TextField1 P_CurrentStockTextField
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
         Height          =   25
         Hint            =   ""
         Hint1           =   ""
         Index           =   -2147483648
         InitialParent   =   "CustomCanvas_Background1"
         IsPassword      =   False
         Italic          =   False
         Left            =   204
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   57
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Value1          =   ""
         Visible         =   True
         Width           =   100
      End
      Begin Label Label12
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
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Value           =   "Current Stock:"
         Visible         =   True
         Width           =   100
      End
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
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   185
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
      InitialParent   =   ""
      Left            =   231
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   185
      Transparent     =   True
      Visible         =   True
      Width           =   125
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  'MessageBox(prodAttr_currStock.ToString)
		  
		  P_CurrentStockTextField.Value = product_stock
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub fetchresponse()
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  Var p as new Dictionary
		  p.Value("id") = report_id.ToString
		  api.SetFormData(p)
		  
		  Var response As String
		  response = api.Post(App.URL + "/reports/select_by_id", 2)
		  responseData = New JSONItem(response)
		  
		  If responseData.Value("status") = 200 Then
		    
		    Var product_types as JSONItem = ResponseData.Child("rows")
		    for i as integer = 0 to product_types.Count - 1
		      Var product_type as JSONItem = product_types.ChildAt(i)
		      
		      
		      Var stock As String = product_type.Value("stock")
		      prodAttr_currStock = stock.ToInteger
		    Next
		    
		  Else
		    MsgBox "An error occured " + responseData.Value("error_message") 
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub update_prodAttr_stock()
		  
		  
		  Var api As New HTTPSocket
		  
		  api.SetRequestHeader("Authorization: ", "Basic bWVsdmluOmFkbWlu")
		  api.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		  
		  
		  Var ResctockAmt As Integer = P_RestockAmtTextField.Value.ToInteger
		  Var NewStock As Integer = product_stock.ToInteger +  ResctockAmt
		  
		  
		  
		  Var data As New Dictionary
		  data.Value("stock") =  NewStock.ToString
		  'MessageBox(data.Value("stock"))
		  data.Value("id") = product_id
		  
		  api.SetFormData(data)
		  
		  Var address as string = App.URL + "/products/restock"
		  response = New JSONItem(api.Post(address, 2))
		  
		  
		  If response.Value("status") = 200 Then
		    'MessageBox(response.ToString)
		    Self.Close
		  Else
		    MsgBox "An error occured " + response.Value("error_message")
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		response As JSONItem
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
		  update_prodAttr_stock
		  
		  'MessageBox(quantity.ToString)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events P_RestockAmtTextField
	#tag Event
		Sub TextChanged()
		  'productIdGenerate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events P_CurrentStockTextField
	#tag Event
		Sub TextChanged()
		  'productIdGenerate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonSave
	#tag Event
		Sub Clicked()
		  update_prodAttr_stock
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
