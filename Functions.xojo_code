#tag Module
Protected Module Functions
	#tag Method, Flags = &h0
		Function BaseNameTimestamp() As String
		  Var d As DateTime = DateTime.Now
		  Var str As String
		  str = StrReplace("-", "", d.SQLDateTime)
		  str = StrReplace(":", "", str)
		  str = StrReplace(" ", "-", str)
		  
		  Return str
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CenterContainer(parent As Window, container As ContainerControl) As Integer()
		  Var x As Integer = (parent.Width / 2) - (container.Width / 2)
		  Var y As Integer = (parent.Height / 2) - (container.Height / 2)
		  
		  Var xy() As Integer = Array(x, y)
		  Return xy
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckStatusCode(HTTPStatus As Integer) As Boolean
		  Select Case HTTPStatus
		  Case 200
		    Return True
		  Case 400
		    MessageBox("Error 400: Bad Request")
		  Case 401
		    MessageBox("Error 401: Unathorized User")
		  Case 500
		    MessageBox("Error 500: Internal Server Error")
		  Case 501
		    MessageBox("Error 501: Not Implemented")
		  End Select
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentDate() As String
		  Var d As DateTime = DateTime.Now
		  Return d.SQLDate
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentTimestamp() As String
		  Var d As DateTime = DateTime.Now
		  Return d.SQLDateTime
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Escape(value As String, encoding As TextEncoding = Nil) As String
		  Return DecodeURLComponent(value.TrimLeft.TrimRight, encoding)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Explode(delimiter As String, str As String) As String()
		  Return str.Split(delimiter)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GenerateQuotationNumber(created_at As String, id As String) As String
		  Var pattern() As String = Explode("", "000000")
		  Var patternLenth As Integer = pattern.Count
		  
		  Var idLength As Integer = Len(id)
		  
		  Var endPattern As Integer = pattern.Count - idLength
		  
		  Var quotationNumber As String
		  For i As Integer = 0 To endPattern - 1
		    quotationNumber = quotationNumber + pattern(i)
		  Next
		  
		  Var splittedDateTime() As String = Explode(" ", created_at)
		  Var splittedDate() As String = Explode("-", splittedDateTime(0))
		  Var dateCreated As String = Implode("", splittedDate)
		  
		  Return "S" + dateCreated + "-" + quotationNumber + id
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetAppStageCode() As String
		  Var stageCode As String
		  Select Case App.StageCode
		  Case 0
		    stageCode = "Development"
		  Case 1
		    stageCode = "Alpha"
		  Case 2
		    stageCode = "Beta"
		  Case 3
		    stageCode = "Final"
		  End Select
		  
		  Return stageCode
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetContainers(c As Window) As ContainerControl()
		  Var containers() As ContainerControl
		  Var o As Runtime.ObjectIterator = Runtime.IterateObjects
		  
		  While o.MoveNext
		    If o.Current IsA ContainerControl AND ContainerControl(o.Current).Window IS c Then
		      containers.AddRow(ContainerControl(o.Current))
		    End If
		  Wend
		  
		  Return containers
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCurrency() As String
		  Return "₱"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Implode(delimiter As String, fields() As String) As String
		  Return String.FromArray(fields, delimiter)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InArray(needle As Variant, haystack() As Integer) As Boolean
		  For i As Integer = 0 To haystack.Count - 1
		    If haystack(i) = needle Then
		      Return True
		    End If
		  Next
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InArray(needle As Variant, haystack() As String) As Boolean
		  For i As Integer = 0 To haystack.Count - 1
		    If haystack(i) = needle Then
		      Return True
		    End If
		  Next
		  
		  Return False
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScaleImage(p As Picture, maxWidth As Integer, maxHeight As Integer, x As Integer = 0, y As Integer = 0) As Picture
		  If p <> Nil Then
		    Var ratio As Double = min(maxHeight / p.height, maxWidth / p.width)
		    Var newPic As New Picture(p.width * ratio, p.height * ratio)
		    newPic.graphics.DrawPicture(p, x, y, newPic.width, newPic.height, 0, 0, p.width, p.height)
		    
		    Return newPic
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Screenshot(w As Window)
		  Var pic As Picture = Nil
		  If w <> Nil Then
		    w = w.TrueWindow
		    If w <> Nil Then
		      Var x, y, width, height as Integer
		      Var scale as Double = w.ScaleFactor
		      x = w.Left * scale
		      y = w.Top * scale
		      width = w.Width * scale
		      height = w.Height * scale
		      pic = ScreenshotRectMBS(x, y, width, height)
		    End If
		  End If
		  
		  Var imageData As String
		  Var bs As BinaryStream
		  Var file As FolderItem
		  If pic <> Nil Then
		    If Picture.IsExportFormatSupported(Picture.Formats.JPEG) Then
		      Var dest As FolderItem = SpecialFolder.Documents.Child("climeo")
		      If dest.Exists Then
		        dest = dest.Child("screenshot")
		        If Not dest.Exists Then
		          dest.CreateFolder
		        End If
		      Else
		        dest.CreateFolder
		        dest = dest.Child("screenshot")
		        If Not dest.Exists Then
		          dest.CreateFolder
		        End If
		      End If
		      
		      file = dest.Child(BaseNameTimestamp + "-screenshot-sales.jpg")
		      If Not file.Exists Then
		        pic.Save(file, Picture.Formats.JPEG)
		        dest.Open
		      End If
		    End If
		    
		    bs = BinaryStream.Open(file, False)
		    If bs <> Nil Then
		      imageData = bs.Read(bs.Length)
		      bs.Close
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundColor(g As Graphics, backgroundColor As Color)
		  g.DrawingColor = backgroundColor
		  g.FillRectangle(0, 0, g.Width, g.Height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundHeaderWithBorder(g as Graphics, width as Integer, height as Integer, backgroundColor as color)
		  'g.DrawingColor = primaryColor
		  'g.FillRectangle(0, 0, width, height)
		  '
		  'g.ForeColor = Color.White
		  'g.PenHeight = 0
		  'g.PenWidth = 2
		  'g.DrawRect 0, 0, width, height
		  '
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundWithBorder(g as Graphics, width as Integer, height as Integer, backgroundColor as color)
		  g.DrawingColor = backgroundColor
		  g.FillRectangle(0, 0, width, height)
		  
		  g.ForeColor = ColorBorder
		  g.PenHeight = 0
		  g.PenWidth = 2
		  g.DrawRect 0, 0, width, height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorder(g As Graphics)
		  g.ForeColor = ColorBorder
		  g.PenHeight = 0
		  g.PenSize = 1
		  g.DrawRectangle(0, 0, g.Width, g.Height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetFormData(sock As HTTPSocket, FormData As Dictionary, Boundary As String)
		  If Boundary.Trim = "" Then
		    Boundary = "--" + Right(EncodeHex(MD5(Str(Microseconds))), 24) + "-bOuNdArY"
		  End If
		  
		  Static CRLF As String = EndOfLine.Windows
		  Dim data As New MemoryBlock(0)
		  Dim out As New BinaryStream(data)
		  
		  For Each key As String In FormData.Keys
		    out.Write("--" + Boundary + CRLF)
		    If VarType(FormData.Value(Key)) = Variant.TypeString Then
		      out.Write("Content-Disposition: form-data; name=""" + key + """" + CRLF + CRLF)
		      out.Write(FormData.Value(key) + CRLF)
		    ElseIf FormData.Value(Key) IsA FolderItem Then
		      Dim file As FolderItem = FormData.Value(key)
		      out.Write("Content-Disposition: form-data; name=""" + key + """; filename=""" + File.Name + """" + CRLF)
		      out.Write("Content-Type: application/octet-stream" + CRLF + CRLF) ' replace with actual MIME Type
		      Dim bs As BinaryStream = BinaryStream.Open(File)
		      out.Write(bs.Read(bs.Length) + CRLF)
		      bs.Close
		    End If
		  Next
		  out.Write("--" + Boundary + "--" + CRLF)
		  out.Close
		  #If RBVersion > 2012 Then
		    sock.SetRequestContent(data, "multipart/form-data; boundary=" + Boundary)
		  #else
		    sock.SetPostContent(data, "multipart/form-data; boundary=" + Boundary)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLabelWidth(textLabel As Label)
		  Var strWidth As Integer
		  Var p As New Picture(100, 100)
		  p.Graphics.FontSize = textLabel.FontSize
		  p.Graphics.FontName = textLabel.FontName
		  
		  If textLabel.Bold Then
		    p.Graphics.Bold = textLabel.Bold
		  End If
		  
		  Var value As String = textLabel.Value
		  strWidth = p.Graphics.TextWidth(value)
		  
		  textLabel.Value = value
		  If textLabel.Bold Then
		    textLabel.Width = strWidth + 4
		  Else
		    textLabel.Width = strWidth + 1
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPbBackgroundWithBorder(g As Graphics, width As Integer, height As Integer)
		  'g.DrawingColor = PbSuccess
		  'g.FillRectangle(0, 0, width, height)
		  '
		  'g.ForeColor = BorderColor
		  'g.PenHeight = 0
		  'g.PenWidth = 1
		  'g.DrawRect 0, 0, width, height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StrReplace(search As String, replace As String, subject As String) As String
		  Return subject.ReplaceAll(search, replace)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TabSpace() As String
		  Return Encodings.ASCII.Chr(9)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ThrowNewErrorResponseException(response As String) As Boolean
		  Var responseData As JSONItem
		  Try
		    responseData = New JSONItem(response)
		  Catch e As KeyNotFoundException
		    MessageBox e.Message
		    Return True
		  Catch e As JSONException
		    MessageBox e.Message
		    Return True
		  End Try
		  
		  If responseData.HasName("status") AND responseData.Value("status") = 500 Then
		    MessageBox(responseData.Value("error_message"))
		    Return True
		  End If
		  
		  Return False
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		mSelectedGuest_id_holder As String
	#tag EndProperty

	#tag Property, Flags = &h0
		responseData As JSONItem
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
			Name="mSelectedGuest_id_holder"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
