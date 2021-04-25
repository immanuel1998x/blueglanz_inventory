#tag Window
Begin Window MainWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   1
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   808
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   764
   MinimumWidth    =   1000
   Resizeable      =   True
   Title           =   "Blueglanz Wedding & Events Boutique"
   Type            =   0
   Visible         =   True
   Width           =   1302
   Begin GraphicalNavBarManager GraphicalNavBarManager1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   808
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   -45
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   245
      Begin SmallButton SmallButtonLogout
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Caption         =   "Logout"
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   30
         Icon            =   1744078847
         Index           =   -2147483648
         InitialParent   =   "GraphicalNavBarManager1"
         Left            =   17
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   756
         Transparent     =   True
         Visible         =   True
         Width           =   156
      End
   End
   Begin MainContainer MainContainer1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   True
      Height          =   806
      InitialParent   =   ""
      Left            =   200
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   1102
   End
   Begin HeaderContainer HeaderContainer1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF00
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackgroundColor=   True
      Height          =   121
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   200
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Self.Maximize
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub LeftClick()
		  LogoutConfirm.Show
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events GraphicalNavBarManager1
	#tag Event
		Sub Open()
		  // Side Navigation Bar
		  Var s0 As New GraphicalNavBarSegment("P.O.S    ",pointofsale)
		  Me.addNavBarSegment(s0)
		  'Var s1 As New GraphicalNavBarSegment("Rental   ", nav_rental)
		  'Me.addNavBarSegment(s1)
		  Var s2 As New GraphicalNavBarSegment("Inventory   ",nav_inventory)
		  Me.addNavBarSegment(s2)
		  Var s3 As New GraphicalNavBarSegment("Transactions   ",nav_transaction)
		  Me.addNavBarSegment(s3)
		  Var s4 As New GraphicalNavBarSegment("Customers   ",nav_customers)
		  Me.addNavBarSegment(s4)
		  Var s5 As New GraphicalNavBarSegment("Stock Warnings   ",nav_outofstoc)
		  Me.addNavBarSegment(s5)
		  Var s6 As New GraphicalNavBarSegment("Manage User   ",nav_users)
		  Me.addNavBarSegment(s6)
		  Var s7 As New GraphicalNavBarSegment("Reports   ",nav_reports)
		  Me.addNavBarSegment(s7)
		  Me.selectSegment(0)
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change(index as Integer)
		  MainContainer1.viewPage(index)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SmallButtonLogout
	#tag Event
		Sub Clicked()
		  LogoutConfirm.Show
		End Sub
	#tag EndEvent
#tag EndEvents
