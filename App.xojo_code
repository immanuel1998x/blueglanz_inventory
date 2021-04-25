#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  MainWindow.Visible = False
		  LoginModal.Show
		  DynaPDFMBS.SetLicenseKeyGlobal "1491843-11052021-2-8-12-64564FE5E2934E69BF6D29B0FF0DD2BB-3CF34D72833944FB629CFF29CE5C6140"
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  // call window
		  Var winStackLog As New windowStackLog
		  // get error type
		  Var errType As String = Introspection.GetType(error).Name
		  // set error type in label
		  winStackLog.lblType.Value = "Error Type: " + errType + " (" + error.Message + ")"
		  // set count as 1
		  Var lineCount As Integer = 1
		  // loop through stack from old to latest step
		  For Each stack As String In error.Stack
		    // add stack step to listbox log
		    winStackLog.lbStack.AddRow(lineCount.ToString, stack)
		    // do +1
		    lineCount = lineCount + 1
		  Next 
		  
		  Return True
		End Function
	#tag EndEvent


	#tag Property, Flags = &h0
		URL As String = "http://127.0.0.1:6500/api"
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="URL"
			Visible=false
			Group="Behavior"
			InitialValue="http://127.0.0.1:6500/api"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
