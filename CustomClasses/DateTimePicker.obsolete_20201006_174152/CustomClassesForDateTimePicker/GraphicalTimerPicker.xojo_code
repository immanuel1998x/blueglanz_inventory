#tag Class
Protected Class GraphicalTimerPicker
Inherits Canvas
	#tag Event
		Sub LostFocus()
		  showMinuteRects = False
		  showHourRects = False
		  showPeriodRects = False
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Self.SetFocus
		  
		  If inHourRectsArea(x) Then
		    ClickWithin(x,y,timeDataInfo.hourData)
		    showHourRects = True
		    showMinuteRects = False
		    showPeriodRects = False
		  Elseif inMinuteRectsArea(x) Then
		    ClickWithin(x,y,timeDataInfo.minuteData)
		    showMinuteRects = True
		    showHourRects = False
		    showPeriodRects = False
		  Elseif inPeriodRectsArea(x) Then
		    ClickWithin(x,y,timeDataInfo.dayPeriodData)
		    showPeriodRects = True
		    showMinuteRects = False
		    showHourRects = False
		  Else
		    showMinuteRects = False
		    showHourRects = False
		    showPeriodRects = False
		    Self.Invalidate(False)
		  End If
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  cursorInHours = False
		  cursorInMinutes = False
		  cursorInPeriod = False
		  
		  showHourRects = False
		  showMinuteRects = False
		  showPeriodRects = False
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  If inHourRectsArea(x) Then
		    cursorInHours = True
		    cursorInMinutes = False
		    cursorInPeriod = False
		  Elseif inMinuteRectsArea(x) Then
		    cursorInHours = False
		    cursorInMinutes = True
		    cursorInPeriod = False
		  Elseif inPeriodRectsArea(x) Then
		    cursorInPeriod = True
		    cursorInHours = False
		    cursorInMinutes = False
		  Else
		    cursorInHours = False
		    cursorInMinutes = False
		    cursorInPeriod = False
		  End If
		  Self.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  'MoveTop(deltaY*5, True)
		  'System.DebugLog Str(deltaY)
		  
		  If deltaY > 0 Then
		    If inHourRectsArea(x) And showHourRects Then
		      GoUp(timeDataInfo.hourData)
		    Elseif inMinuteRectsArea(x) And showMinuteRects Then
		      GoUp(timeDataInfo.minuteData)
		    Elseif inPeriodRectsArea(x) And showPeriodRects Then
		      GoUp(timeDataInfo.dayPeriodData)
		    End If
		    
		  Elseif deltaY < 0 Then
		    If inHourRectsArea(x) And showHourRects Then
		      GoDown(timeDataInfo.hourData)
		    Elseif inMinuteRectsArea(x) And showMinuteRects Then
		      GoDown(timeDataInfo.minuteData)
		    Elseif inPeriodRectsArea(x) And showPeriodRects Then
		      GoDown(timeDataInfo.dayPeriodData)
		    End If
		  End If
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  Self.AllowFocus = True
		  createTimeRects
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  Dim cHeight As Double = GetCumulativeRectsHeight
		  If HourRects.LastRowIndex <> -1 _ 
		    And (Self.Height > cHeight/1.5 Or Self.Height < cHeight/1.5) Then
		    'setDimension
		  End If
		  
		  Dim x As Double = g.Width/2
		  Dim y As Double = g.Height/2 - kRectHeight - rectMargin*2
		  
		  If (Not showHourRects And Not showMinuteRects And Not showPeriodRects) Then
		    Var s As New TextShape
		    s.Value = "Select Time"
		    s.FontName = "Helvetica"
		    s.FillColor = &c125488
		    s.Bold = True
		    s.FontSize = 16
		    s.X = x
		    s.Y = y
		    s.VerticalAlignment = TextShape.Alignment.Center
		    s.HorizontalAlignment = TextShape.Alignment.Center
		    g.DrawObject(s)
		  End If
		  
		  
		  
		  'g.DrawingColor = Color.White
		  'g.FillRectangle(0,0,g.Width,g.Height)
		  
		  viewport.Top = (g.Height - viewport.Height) / 2
		  
		  'g.DrawingColor = Color.Red
		  'g.DrawRectangle(0,viewport.Top,viewport.Width,viewport.Height)
		  
		  setSelectedRect(timeDataInfo.hourData)
		  setSelectedRect(timeDataInfo.minuteData)
		  setSelectedRect(timeDataInfo.dayPeriodData)
		  
		  drawTimeRects(g)
		  drawArrows(g)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddToBottom(rectData as RectDataClass, timeInfo as timeDataInfo)
		  Select Case timeInfo
		  Case timeDataInfo.hourData
		    HourRects.AddRow(rectData)
		  Case timeDataInfo.minuteData
		    MinuteRects.AddRow(rectData)
		  Case timeDataInfo.dayPeriodData
		    periodRects.AddRow(rectData)
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddToTop(rectData as RectDataClass, timeInfo as timeDataInfo)
		  Select Case timeInfo
		  Case timeDataInfo.hourData
		    HourRects.AddRowAt(0,rectData)
		  Case timeDataInfo.minuteData
		    MinuteRects.AddRowAt(0,rectData)
		  Case timeDataInfo.dayPeriodData
		    periodRects.AddRowAt(0,rectData)
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ClickWithin(x as Integer, y as Integer, timeInfo as timeDataInfo)
		  Dim timeRect As RectDataClass
		  Dim rectIndex As Integer
		  Dim timeRects() As RectDataClass
		  Dim rectsAreShown As Boolean
		  Select Case timeInfo
		  Case timeDataInfo.hourData
		    rectIndex = hRectInView
		    timeRects = HourRects
		    rectsAreShown = showHourRects
		  Case timeDataInfo.minuteData
		    rectIndex = mRectInView
		    timeRects = MinuteRects
		    rectsAreShown = showMinuteRects
		  Case timeDataInfo.dayPeriodData
		    rectIndex = pRectInView
		    timeRects = periodRects
		    rectsAreShown = showPeriodRects
		  End Select
		  
		  
		  If timeRects.LastRowIndex = -1 Then Return
		  
		  Dim isNewIndexSelected As Boolean = False
		  For i As Integer = 0 To timeRects.LastRowIndex
		    timeRect = timeRects(i)
		    
		    If x >= timeRect.Left And x <= timeRect.Right _ 
		      And y >= timeRect.Top And y <= timeRect.Bottom Then
		      
		      If rectIndex <> i Then
		        isNewIndexSelected = True
		      End If
		      rectIndex = i
		      
		      Exit
		    End If
		  Next
		  
		  Select Case timeInfo
		  Case timeDataInfo.hourData
		    If isNewIndexSelected Then
		      showHourRects = False
		    End If
		    hRectInView = rectIndex
		    snapPositions(timeInfo)
		    setSelectedRect(timeInfo)
		  Case timeDataInfo.minuteData
		    If isNewIndexSelected Then
		      showMinuteRects = False
		    End If
		    mRectInView = rectIndex
		    snapPositions(timeInfo)
		    setSelectedRect(timeInfo)
		  Case timeDataInfo.dayPeriodData
		    If isNewIndexSelected Then
		      showPeriodRects = False
		    End If
		    pRectInView = rectIndex
		    snapPositions(timeInfo)
		    setSelectedRect(timeInfo)
		  End Select
		  
		  Self.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub createTimeRects()
		  // 12 hour format
		  Dim x As Integer = 10
		  //Hours
		  For i As Integer = 1 To 12
		    Dim y As Integer = GetAutoBottomPosition(timeDataInfo.hourData)
		    Dim hRect As New RectDataClass(x, y, kRectWidth, kRectHeight)
		    hRect.TimeValue = i
		    If i < 10 Then
		      hRect.TimeValue = Format(i,"00")
		    End If
		    AddToBottom(hRect,timeDataInfo.hourData)
		  Next
		  
		  x = x + kRectWidth + rectMargin
		  For i As Integer = 0 To 59
		    Dim y As Integer = GetAutoBottomPosition(timeDataInfo.minuteData)
		    Dim mRect As New RectDataClass(x, y, kRectWidth, kRectHeight)
		    mRect.TimeValue = i
		    If i < 10 Then
		      mRect.TimeValue = Format(i,"00")
		    End If
		    
		    AddToBottom(mRect,timeDataInfo.minuteData)
		  Next
		  
		  x = x + kRectWidth + rectMargin
		  For i As Integer = 1 To 2
		    Dim y As Integer = GetAutoBottomPosition(timeDataInfo.dayPeriodData)
		    Dim pRect As New RectDataClass(x, y, kRectWidth, kRectHeight)
		    If i Mod 2 = 0 Then
		      pRect.TimeValue = "AM"
		    Else
		      pRect.TimeValue = "PM"
		    End If
		    AddToBottom(pRect,timeDataInfo.dayPeriodData)
		  Next
		  
		  Dim h As Integer = kRectHeight + 10
		  Dim rectTop As Integer = (Me.Height - h) / 2
		  viewport = New RectDataClass(-1,rectTop, Self.Width, h)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawArrows(g as Graphics)
		  Dim rectIndex As Integer
		  Dim timeRects() As RectDataClass
		  If Not showHourRects And cursorInHours Then
		    timeRects = HourRects
		    rectIndex = hRectInView
		    g.DrawingColor = &c2A93D57F
		  Elseif Not showMinuteRects And cursorInMinutes Then
		    timeRects = MinuteRects
		    rectIndex = mRectInView
		    g.DrawingColor = &c2AAED37F
		  Elseif Not showPeriodRects And cursorInPeriod Then
		    timeRects = periodRects
		    rectIndex = pRectInView
		    g.DrawingColor = &c2AAED37F
		  End If
		  
		  If rectIndex = -1 Or timeRects.LastRowIndex = -1 Then Return
		  
		  // Top arrow
		  Dim w As Integer = kRectWidth/2
		  Dim h As Integer = kRectHeight/3
		  Dim x As Integer = timeRects(rectIndex).Left + w/2
		  Dim y As Integer = timeRects(rectIndex).Top - rectMargin
		  
		  Var points(6) As Double
		  points(1) = x
		  points(2) = y
		  points(3) = x + w/2
		  points(4) = y - h
		  points(5) = x + w
		  points(6) = y
		  g.FillPolygon(points)
		  
		  // Bottom arrow
		  w = kRectWidth/2
		  h = kRectHeight/3
		  x = timeRects(rectIndex).Left + w/2
		  y = timeRects(rectIndex).Bottom + rectMargin
		  
		  points(1) = x
		  points(2) = y
		  points(3) = x + w/2
		  points(4) = y + h
		  points(5) = x + w
		  points(6) = y
		  g.FillPolygon(points)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawTimeRects(g as Graphics)
		  If HourRects.LastRowIndex = - 1 Or MinuteRects.LastRowIndex = - 1 Then Return
		  
		  Dim hRect As RectDataClass
		  For i As Integer = 0 To HourRects.LastRowIndex
		    hRect = HourRects(i)
		    g.DrawingColor = &c2A93D5
		    If Not showHourRects And i <> hRectInView Then
		      Continue
		    End If
		    
		    // Don't bother drawing them if they're not shown
		    If hRect.Top > g.Height Or hRect.Bottom < 0 Then
		      Continue
		    End If
		    
		    Dim x As Double = hRect.Left + hRect.Width/2
		    Dim y As Double = hRect.Top + hRect.Height/2
		    
		    Var s As New TextShape
		    s.Value = hrect.TimeValue
		    s.FontName = "Helvetica"
		    s.Bold = True
		    s.X = x
		    s.Y = y
		    s.VerticalAlignment = TextShape.Alignment.Center
		    
		    If i = hRectInView Then
		      g.FillRectangle(hRect.Left + rectMargin,hRect.Top + rectMargin, _ 
		      hRect.Width - rectMargin*2, hRect.Height - rectMargin*2)
		      s.FillColor = Color.White
		    Elseif i + 1 = hRectInView Or i - 1 = hRectInView Then
		      g.DrawingColor = &c2A93D57F
		      s.FillOpacity = 75
		    Elseif i <> hRectInView  Then
		      g.DrawingColor = &c2A93D5C0
		      s.FillOpacity = 25
		    End If
		    g.DrawRectangle(hRect.Left,hRect.Top,hRect.Width,hRect.Height)
		    g.DrawObject(s)
		  Next
		  
		  Dim mRect As RectDataClass
		  For i As Integer = 0 To MinuteRects.LastRowIndex
		    mRect = MinuteRects(i)
		    g.DrawingColor = &c2AAED3
		    If Not showMinuteRects And i <> mRectInView Then
		      Continue
		    End If
		    
		    Dim x As Double = mRect.Left + mRect.Width/2
		    Dim y As Double = mRect.Top + mRect.Height/2
		    
		    Var s As New TextShape
		    s.Value = mRect.TimeValue
		    s.FontName = "Helvetica"
		    s.Bold = True
		    s.X = x
		    s.Y = y
		    s.VerticalAlignment = TextShape.Alignment.Center
		    
		    If i = mRectInView Then
		      g.FillRectangle(mRect.Left + rectMargin,mRect.Top + rectMargin, _ 
		      mRect.Width - rectMargin*2, mRect.Height - rectMargin*2)
		      s.FillColor = Color.White
		    Elseif i + 1 = mRectInView Or i - 1 = mRectInView Then
		      g.DrawingColor = &c2AAED37F
		      s.FillOpacity = 75
		    Elseif i <> mRectInView  Then
		      g.DrawingColor = &c2AAED3C0
		      s.FillOpacity = 25
		    End If
		    g.DrawRectangle(mRect.Left,mRect.Top,mRect.Width,mRect.Height)
		    
		    g.DrawObject(s)
		  Next
		  
		  Dim pRect As RectDataClass
		  For i As Integer = 0 To periodRects.LastRowIndex
		    pRect = periodRects(i)
		    g.DrawingColor = &c29C8D1
		    If Not showPeriodRects And i <> pRectInView Then
		      Continue
		    End If
		    
		    Dim x As Double = pRect.Left + pRect.Width/2
		    Dim y As Double = pRect.Top + pRect.Height/2
		    
		    Var s As New TextShape
		    s.Value = pRect.TimeValue
		    s.FontName = "Helvetica"
		    s.Bold = True
		    s.X = x
		    s.Y = y
		    s.VerticalAlignment = TextShape.Alignment.Center
		    
		    If i = pRectInView Then
		      g.FillRectangle(pRect.Left + rectMargin,pRect.Top + rectMargin, _ 
		      pRect.Width - rectMargin*2, pRect.Height - rectMargin*2)
		      s.FillColor = Color.White
		    Elseif i + 1 = pRectInView Or i - 1 = pRectInView Then
		      g.DrawingColor = &c29C8D17F
		      s.FillOpacity = 75
		    Elseif i <> pRectInView  Then
		      g.DrawingColor = &c29C8D1C0
		      s.FillOpacity = 25
		    End If
		    g.DrawRectangle(pRect.Left,pRect.Top,pRect.Width,pRect.Height)
		    
		    g.DrawObject(s)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetAutoBottomPosition(timeInfo as timeDataInfo) As Integer
		  Dim startYpos As Integer
		  
		  Select Case timeInfo
		  Case timeDataInfo.hourData
		    
		    If HourRects.LastRowIndex = -1 Then
		      startYpos = (Me.Height - kRectHeight) /2
		      Return startYpos
		    Else
		      Dim hRect As RectDataClass = HourRects(HourRects.LastRowIndex)
		      startYpos = hRect.Top
		      startYpos = startYpos + hRect.Height + rectMargin
		      
		      Return startYpos
		    End If
		    
		  Case timeDataInfo.minuteData
		    If MinuteRects.LastRowIndex = -1 Then
		      startYpos = (Me.Height - kRectHeight) /2
		      Return startYpos
		    Else
		      Dim mRect As RectDataClass = MinuteRects(MinuteRects.LastRowIndex)
		      startYpos = mRect.Top
		      startYpos = startYpos + mRect.Height + rectMargin
		      
		      Return startYpos
		    End If
		  Case timeDataInfo.dayPeriodData
		    
		    If periodRects.LastRowIndex = -1 Then
		      startYpos = (Me.Height - kRectHeight) /2
		      Return startYpos
		    Else
		      Dim pRect As RectDataClass = periodRects(periodRects.LastRowIndex)
		      startYpos = pRect.Top
		      startYpos = startYpos + pRect.Height + rectMargin
		      
		      Return startYpos
		    End If
		    
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetAutoTopPosition(timeInfo as timeDataInfo) As Integer
		  Dim startYpos As Integer
		  
		  Select Case timeInfo
		  Case timeDataInfo.hourData
		    
		    If HourRects.LastRowIndex = -1 Then
		      startYpos = (Me.Height - kRectHeight) /2
		      Return startYpos
		    Else
		      Dim hRect As RectDataClass = HourRects(HourRects.FirstRowIndex)
		      startYpos = hRect.Top
		      startYpos = startYpos - hRect.Height - rectMargin
		      
		      Return startYpos
		    End If
		    
		  Case timeDataInfo.minuteData
		    
		    If MinuteRects.LastRowIndex = -1 Then
		      startYpos = (Me.Height - kRectHeight) /2
		      Return startYpos
		    Else
		      Dim mRect As RectDataClass = MinuteRects(MinuteRects.FirstRowIndex)
		      startYpos = mRect.Top
		      startYpos = startYpos - mRect.Height - rectMargin
		      
		      Return startYpos
		    End If
		    
		  Case timeDataInfo.dayPeriodData
		    
		    If periodRects.LastRowIndex = -1 Then
		      startYpos = (Me.Height - kRectHeight) /2
		      Return startYpos
		    Else
		      Dim pRect As RectDataClass = periodRects(periodRects.FirstRowIndex)
		      startYpos = pRect.Top
		      startYpos = startYpos - pRect.Height - rectMargin
		      
		      Return startYpos
		    End If
		    
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetCumulativeRectsHeight() As Double
		  Dim sumHeight As Double
		  For Each hRect As RectDataClass In HourRects
		    sumHeight = sumHeight + hRect.Height + rectMargin
		  Next
		  
		  Return sumHeight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSelectedTime() As Pair
		  If hRectInView = -1 Or hRectInView > HourRects.LastRowIndex Then Return Nil
		  If mRectInView = -1 Or mRectInView > MinuteRects.LastRowIndex Then Return Nil
		  If pRectInView = -1 Or pRectInView > periodRects.LastRowIndex Then Return Nil
		  
		  If HourRects.LastRowIndex = -1 Then Return Nil
		  If MinuteRects.LastRowIndex = -1 Then Return Nil
		  If periodRects.LastRowIndex = -1 Then Return Nil
		  
		  Dim hour As Integer = HourRects(hRectInView).TimeValue.IntegerValue
		  Dim minutes As Integer = MinuteRects(mRectInView).TimeValue.IntegerValue
		  Dim dayPeriod As String = periodRects(pRectInView).TimeValue.StringValue
		  
		  If dayPeriod = "PM" Then
		    hour = hour + 12
		  End If
		  
		  // decrement by 1 since DateTime classes are 0-based
		  'hour = hour - 1
		  
		  If hour = 24 Then
		    hour = 0
		  End If
		  
		  Dim p As Pair = hour : minutes
		  
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GoDown(timeInfo as timeDataInfo)
		  Dim timeRects() As RectDataClass
		  Select Case timeInfo
		  Case timeDataInfo.hourData
		    timeRects = HourRects
		  Case timeDataInfo.minuteData
		    timeRects = MinuteRects
		  Case timeDataInfo.dayPeriodData
		    timeRects = periodRects
		  End Select
		  
		  For Each timeRect As RectDataClass In timeRects
		    timeRect.Top = timeRect.Top + kRectHeight + rectMargin
		  Next
		  
		  Self.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GoUp(timeInfo as timeDataInfo)
		  Dim timeRects() As RectDataClass
		  Select Case timeInfo
		  Case timeDataInfo.hourData
		    timeRects = HourRects
		  Case timeDataInfo.minuteData
		    timeRects = MinuteRects
		  Case timeDataInfo.dayPeriodData
		    timeRects = periodRects
		  End Select
		  
		  For Each timeRect As RectDataClass In timeRects
		    timeRect.Top = timeRect.Top - kRectHeight - rectMargin
		  Next
		  
		  Self.Invalidate(False)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function inHourRectsArea(x as Integer) As Boolean
		  If x >= 0 And x <= HourRects(0).Right Then
		    Return True
		  End If
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function inMinuteRectsArea(x as Integer) As Boolean
		  If x > HourRects(0).Right And x <= MinuteRects(0).Right Then
		    Return True
		  End If
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function inPeriodRectsArea(x as Integer) As Boolean
		  If x >= MinuteRects(0).Right And x <= periodRects(0).Right Then
		    Return True
		  End If
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MoveTop(deltaY as Integer, forceInvalidate as Boolean)
		  'For Each hRect As RectDataClass In HourRects
		  'hRect.Top = hRect.Top - deltaY
		  'Next
		  '
		  'If forceInvalidate Then
		  'Self.Invalidate(False)
		  'End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setDimension()
		  'Self.Height = GetCumulativeRectsHeight/1.5
		  Self.Width = periodRects(0).Right + 10
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setSelectedRect(timeInfo as timeDataInfo)
		  Dim timeRect As RectDataClass
		  Dim rectIndex As Integer
		  Dim timeRects() As RectDataClass
		  Select Case timeInfo
		  Case timeDataInfo.hourData
		    rectIndex = hRectInView
		    timeRects = HourRects
		  Case timeDataInfo.minuteData
		    rectIndex = mRectInView
		    timeRects = MinuteRects
		  Case timeDataInfo.dayPeriodData
		    rectIndex = pRectInView
		    timeRects = periodRects
		  End Select
		  
		  For i As Integer = 0 To timeRects.LastRowIndex
		    timeRect = timeRects(i)
		    
		    If timeRect.Top > viewport.Top And timeRect.Bottom < viewport.Bottom Then
		      rectIndex = i
		      'System.DebugLog Str(rectIndex) + " " + Str(timeRect.TimeValue)
		      Exit
		    Else
		      rectIndex = -1
		    End If
		  Next
		  
		  Dim visibleRectsRemaining As Integer = (Self.Height / kRectHeight)/2
		  'System.DebugLog Str(rectIndex) + "<    >" + Str(timeRects.LastRowIndex)
		  // aaaaaaaaaaaaaaaaaaaaaaaa
		  If rectIndex > timeRects.LastRowIndex/2 Then
		    While rectIndex >= timeRects.LastRowIndex/2
		      Dim y As Integer = GetAutoBottomPosition(timeInfo)
		      Dim loopRect As RectDataClass = timeRects(timeRects.FirstRowIndex)
		      AddToBottom(loopRect,timeInfo)
		      timeRects.RemoveRowAt(timeRects.FirstRowIndex)
		      
		      rectIndex = rectIndex - 1
		    Wend
		  Elseif rectIndex < (timeRects.LastRowIndex/2) - 1 Then
		    While rectIndex < (timeRects.LastRowIndex/2) - 1
		      Dim y As Integer = GetAutoTopPosition(timeInfo)
		      Dim loopRect As RectDataClass = timeRects(timeRects.LastRowIndex)
		      AddToTop(loopRect,timeInfo)
		      timeRects.RemoveRowAt(timeRects.LastRowIndex)
		      
		      rectIndex = rectIndex + 1
		    Wend
		  End If
		  
		  'If rectIndex = timeRects.FirstRowIndex Then
		  '
		  'For i As Integer = 1 To visibleRectsRemaining
		  'Dim y As Integer = GetAutoTopPosition(timeDataInfo.hourData)
		  'Dim loopRect As RectDataClass = timeRects(timeRects.LastRowIndex)
		  'AddToTop(loopRect,timeInfo)
		  'timeRects.RemoveRowAt(timeRects.LastRowIndex)
		  '
		  'rectIndex = rectIndex + 1
		  'Next
		  'Elseif rectIndex = timeRects.LastRowIndex Then
		  'For i As Integer = 1 To visibleRectsRemaining
		  'Dim y As Integer = GetAutoBottomPosition(timeDataInfo.hourData)
		  'Dim loopRect As RectDataClass = timeRects(timeRects.FirstRowIndex)
		  'AddToBottom(loopRect,timeInfo)
		  'timeRects.RemoveRowAt(timeRects.FirstRowIndex)
		  '
		  'rectIndex = rectIndex - 1
		  'Next
		  '
		  'End If
		  
		  Select Case timeInfo
		  Case timeDataInfo.hourData
		    hRectInView = rectIndex
		  Case timeDataInfo.minuteData
		    mRectInView = rectIndex
		  Case timeDataInfo.dayPeriodData
		    pRectInView = rectIndex
		  End Select
		  
		  snapPositions(timeInfo)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub snapPositions(timeInfo as timeDataInfo)
		  Dim timeRect As RectDataClass
		  Dim rectIndex As Integer
		  Dim timeRects() As RectDataClass
		  Select Case timeInfo
		  Case timeDataInfo.hourData
		    rectIndex = hRectInView
		    timeRects = HourRects
		  Case timeDataInfo.minuteData
		    rectIndex = mRectInView
		    timeRects = MinuteRects
		  Case timeDataInfo.dayPeriodData
		    rectIndex = pRectInView
		    timeRects = periodRects
		  End Select
		  
		  
		  If rectIndex > timeRects.LastRowIndex Or rectIndex < timeRects.FirstRowIndex Then Return
		  
		  Dim startRect As RectDataClass = timeRects(rectIndex)
		  
		  startRect.Top = (Me.Height - kRectHeight) /2
		  
		  Dim startYpos As Integer = startRect.Top
		  
		  For i As Integer = rectIndex To timeRects.LastRowIndex
		    timeRect = timeRects(i)
		    
		    timeRect.Top = startYpos
		    
		    startYpos = startYpos + timeRect.Height + rectMargin
		  Next
		  
		  startYpos = startRect.Top
		  For i As Integer = rectIndex DownTo timeRects.FirstRowIndex
		    timeRect = timeRects(i)
		    
		    timeRect.Top = startYpos
		    
		    startYpos = startYpos - timeRect.Height - rectMargin
		  Next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		cursorInHours As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		cursorInMinutes As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		cursorInPeriod As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		HourRects() As RectDataClass
	#tag EndProperty

	#tag Property, Flags = &h0
		hRectInView As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MinuteRects() As RectDataClass
	#tag EndProperty

	#tag Property, Flags = &h0
		mouseX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mRectInView As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		periodRects() As RectDataClass
	#tag EndProperty

	#tag Property, Flags = &h0
		pRectInView As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		showHourRects As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		showMinuteRects As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		showPeriodRects As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		viewport As RectDataClass
	#tag EndProperty


	#tag Constant, Name = dayPeriodData, Type = Double, Dynamic = False, Default = \"2", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"2"
	#tag EndConstant

	#tag Constant, Name = hourData, Type = Double, Dynamic = False, Default = \"0", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"0"
	#tag EndConstant

	#tag Constant, Name = kRectHeight, Type = Double, Dynamic = False, Default = \"25", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"25"
	#tag EndConstant

	#tag Constant, Name = kRectWidth, Type = Double, Dynamic = False, Default = \"50", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"50"
	#tag EndConstant

	#tag Constant, Name = minuteData, Type = Double, Dynamic = False, Default = \"1", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"1"
	#tag EndConstant

	#tag Constant, Name = rectMargin, Type = Double, Dynamic = False, Default = \"3", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"3"
	#tag EndConstant


	#tag Enum, Name = timeDataInfo, Type = Integer, Flags = &h0
		hourData
		  minuteData
		dayPeriodData
	#tag EndEnum


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
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
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
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
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
			InitialValue="True"
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
			InitialValue="False"
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
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group=""
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hRectInView"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mRectInView"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="showMinuteRects"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="showHourRects"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mouseX"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cursorInHours"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cursorInMinutes"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="showPeriodRects"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="pRectInView"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cursorInPeriod"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
