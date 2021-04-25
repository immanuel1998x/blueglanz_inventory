#tag Class
Protected Class clsQRProductPDF
Inherits DynaPDFMBS
	#tag Method, Flags = &h0
		Sub Constructor()
		  mPDF = New DynaPDFMBS
		  mPDF.SetLicenseKey("Pro") // For this example you can use a Starter, Lite, Pro or Enterprise License
		  
		  'Call mPDF.SetFont("Arial", self.kfsNone, 15.0, True, self.kcpUnicode)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillPage()
		  if pQRCode is Nil Then Return
		  
		  Var posX As Double = 0.00
		  Var posY As Double = 50.00
		  Var pdfWidth As Double = mPDF.GetPageWidth 
		  Var pdfHeight As Double = mPDF.GetPageHeight
		  
		  pdfWidth = pdfWidth/ 1
		  
		  For y As Integer = 1 to 8
		    Var currentHeight As Double = pdfHeight * (y - 1)
		    
		    For x As Integer = 1 to 4
		      Var currentWidth As Double = (pdfWidth - 10)
		      System.DebugLog("current width: " + currentWidth.ToString)
		      
		      'BARCode image
		      call mPDF.InsertPicture( _
		      pQRCode, _
		      posX, _
		      currentHeight - posY, _
		      260, _
		      90.00)
		      
		      posX = posX + currentWidth + 10
		      
		    Next
		  Next
		  Call mPDF.SetFont("Arial", mPDF.kfsLight, 8.0, True, mPDF.kcpUnicode)
		  Call mPDF.SetTextRect(10, 40, mPDF.GetPageWidth, mPDF.GetPageHeight-100)
		  Var label as String = "Size:" + product_size + " " + "Color:"+ product_color + " " + "Description:"+ DecodeURLComponent(product_description) +  "    Price :Php" + product_price
		  Call mPDF.WriteFText(mPDF.ktaLeft, label)
		  
		  'Var product_size as String = product_size 
		  'Var product_color as String = product_color 
		  'Var product_description as String =  DecodeURLComponent(product_description) 
		  'Var product_price as String = "    - Php" + product_price
		  '
		  'Call mPDF.WriteFText(mPDF.ktaLeft, product_size)
		  'Call mPDF.WriteFText(mPDF.ktaLeft, product_color)
		  'Call mPDF.WriteFText(mPDF.ktaLeft, product_description)
		  'Call mPDF.WriteFText(mPDF.ktaLeft, product_price)
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  'product_size = selectedProduct.Value("size")
		  'product_color = selectedProduct.Value("color")
		  'product_description = selectedProduct.Value("description")
		  'product_price = selectedProduct.Value("price")
		  
		  'Var pdfWidth As Double = mPDF.GetPageWidth 
		  'Var pdfHeight As Double = mPDF.GetPageHeight
		  
		  'MsgBox(pdfWidth.ToString)
		  'Var header As Picture = Picture.Open(App.FindFile("qrcode-products-header.png"))
		  'call mPDF.InsertPicture(header, currentWidth, currentHeight, pdfWidth, header.Height - 20)
		  '// QRProduct Values
		  '
		  'call mPDF.ChangeFontSize(10.0)
		  '// y = mPDF.GetLastTextPosY + 15.0
		  '//posX = mPDF.GetLastTextPosX +  pQRCode.Width + 30.0
		  '
		  'Var detailsPositionX As Double = currentWidth + pQRCode.Width + 30.0
		  'Var detailsPositionY As Double = currentHeight + posY 
		  'call mPDF.WriteText(detailsPositionX, detailsPositionY, clsQRProductValues.sWebAddress)
		  '
		  '// posY = mPDF.GetLastTextPosY + 12.0
		  'detailsPositionY  = detailsPositionY + 12.0
		  '
		  '
		  '// call mPDF.WriteText(detailsPositionX, posY, clsQRProducgValues.sProductName)
		  '// posY = mPDF.GetLastTextPosY + 12.0
		  'call mPDF.WriteText(detailsPositionX, detailsPositionY, clsQRProductValues.sArticleNumber)
		  '
		  '// posY = mPDF.GetLastTextPosY + 12.0
		  'detailsPositionY = detailsPositionY + 12.0
		  'call mPDF.WriteText(detailsPositionX, detailsPositionY, clsQRProductValues.sSerialNumber)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Generate()
		  'MessageBox(product_description)
		  var outfile as FolderItem = SpecialFolder.Desktop.Child(Self.sFileName) //dest.Child(fileName)
		  
		  call mPDF.CreateNewPDF(nil) // the output file is created later
		  
		  call mPDF.SetDocInfo mPDF.kdiCreator, kCreator
		  call mPDF.SetDocInfo mPDF.kdiTitle, Self.sFileName //OrderDetails.Value("delivery_order_no")
		  Var pdfWidth As Double = mPDF.GetPageWidth 
		  Var pdfHeight As Double = mPDF.GetPageHeight
		  call mPDF.SetPageHeight(60.00)
		  call mPDF.SetPageWidth(260)
		  call mPDF.SetPageCoords mPDF.kpcTopDown
		  
		  'call mPDF.SetPageFormat(1)
		  call mPDF.Append
		  
		  
		  FillPage
		  
		  call mPDF.EndPage
		  
		  // no error?
		  if mPDF.HaveOpenDoc then
		    if not mPDF.OpenOutputFile(outfile) then
		      MsgBox "Can't write file to "+ outfile.NativePath
		      quit
		    end if
		  end if
		  
		  call mPDF.CloseFile
		  
		  outfile.Launch
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mPDF As DynaPDFMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		pQRCode As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		sFileName As String
	#tag EndProperty


	#tag Constant, Name = kCreator, Type = String, Dynamic = False, Default = \"Climeo", Scope = Private
	#tag EndConstant


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
			InitialValue=""
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
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="pQRCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sFileName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
