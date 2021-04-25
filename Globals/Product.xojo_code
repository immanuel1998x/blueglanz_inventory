#tag Module
Protected Module Product
	#tag Property, Flags = &h0
		id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IsEditing As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		no_copies As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		products() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		productTypeIdHolder As String
	#tag EndProperty

	#tag Property, Flags = &h0
		product_attribute_id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		product_color As String
	#tag EndProperty

	#tag Property, Flags = &h0
		product_description As String
	#tag EndProperty

	#tag Property, Flags = &h0
		product_id As String
	#tag EndProperty

	#tag Property, Flags = &h0
		product_id_generated As String
	#tag EndProperty

	#tag Property, Flags = &h0
		product_names() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		product_no As String
	#tag EndProperty

	#tag Property, Flags = &h0
		product_price As String
	#tag EndProperty

	#tag Property, Flags = &h0
		product_size As String
	#tag EndProperty

	#tag Property, Flags = &h0
		product_stock As String
	#tag EndProperty

	#tag Property, Flags = &h0
		product_type As String
	#tag EndProperty

	#tag Property, Flags = &h0
		product_type_name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		selectedProduct As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h0
		TotalQtyDamaged As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TotalQtyDamagedFee As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		TotalQtyRented As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		TotalQtyReturnedItem As Integer
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
			InitialValue="-2147483648"
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
			Name="product_description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="product_color"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="product_id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="product_no"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="product_price"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="product_size"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="product_stock"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="product_type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsEditing"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="productTypeIdHolder"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="product_id_generated"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="product_type_name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="product_attribute_id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="no_copies"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
