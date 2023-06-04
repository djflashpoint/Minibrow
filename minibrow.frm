VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form Form1 
   ClientHeight    =   8160
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   15015
   Icon            =   "minibrow.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8160
   ScaleWidth      =   15015
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      BackColor       =   &H00404040&
      ForeColor       =   &H00C0C0C0&
      Height          =   285
      Left            =   0
      TabIndex        =   1
      Text            =   "127.0.0.1"
      Top             =   0
      Width           =   15015
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   7935
      Left            =   0
      TabIndex        =   0
      Top             =   240
      Width           =   15015
      ExtentX         =   26485
      ExtentY         =   13996
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "res://C:\WINNT\system32\shdoclc.dll/dnserror.htm#http:///"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
If KeyAscii = 21 Then WebBrowser1.Refresh
WebBrowser1.Navigate ("127.0.0.1")
WebBrowser1.Silent = True
End Sub

Private Sub Form_Resize()
WebBrowser1.Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
Text1.Width = Me.Width
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then WebBrowser1.Navigate (Text1.Text)
End Sub

Private Sub WebBrowser1_TitleChange(ByVal Text As String)
Form1.Caption = WebBrowser1.LocationURL
Text1.Text = WebBrowser1.LocationURL
End Sub
