VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "SIGN"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      Height          =   2970
      Left            =   0
      Picture         =   "Form1.frx":08CA
      ScaleHeight     =   2970
      ScaleWidth      =   4500
      TabIndex        =   0
      Top             =   0
      Width           =   4500
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Leave Digital Signature On The Screen
Private Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
'get dc
Private Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long
Private Sub Form_Load()
Dim dc1 As Long
'get the dc of the screen
dc1 = GetDC(0)
'draw  logo on the screen
BitBlt dc1, (Screen.Width - Picture1.Width) / (2 * Screen.TwipsPerPixelX), (Screen.Height - Picture1.Height) / (2 * Screen.TwipsPerPixelY), Picture1.Width, Picture1.Height, Picture1.hDC, 0, 0, vbSrcAnd
'finish
End
End Sub
