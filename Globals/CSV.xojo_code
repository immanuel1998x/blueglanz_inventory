#tag Module
Protected Module CSV
	#tag Method, Flags = &h0
		Function ExportToCSV(Extends lb As Listbox) As String
		  'Combine all the headers into a csv row
		  Var headers() As String
		  For i As Integer = 0 To lb.LastColumnIndex
		    Var headerValue As String = lb.HeaderAt(i)
		    headers.AddRow("""" + headerValue + """") 'These extra double quotations are for wrapping the string in double quotations
		  Next
		  Var header As String = String.FromArray(headers, ",")
		  
		  'Combine all rows in the table
		  Var rows() As String
		  For i As Integer = 0 To lb.LastRowIndex
		    
		    Var cols() As String
		    For j As Integer = 0 To lb.LastColumnIndex
		      Var colValue As String = DecodeURLComponent(lb.CellValueAt(i, j)).ReplaceAll("₱","").ReplaceAll(",","")
		      cols.AddRow("""" + colValue + """")
		    Next
		    
		    Var row As String = String.FromArray(cols, ",")
		    rows.AddRow(row)
		  Next
		  Var contents As String = String.FromArray(rows, EndOfLine)
		  
		  Return header + EndOfLine + contents
		End Function
	#tag EndMethod


End Module
#tag EndModule
