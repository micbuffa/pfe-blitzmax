Strict 
Graphics 800,600,0

' Autres

'----------LOAD IMAGE 

Global lightImage:TImage = LoadImage("pulse.png")
Global backgd:TImage = LoadImage("backgd.png")
Global boomer:TImage = LoadImage("boomer.png")
Global vib:TImage = LoadImage("vib.png")
Global zImg:TImage = LoadImage("Z4.png")

Global playButtonImg:TImage = LoadImage ("jouer.png")
Global optionsButtonImg:TImage = LoadImage ("options.png")
Global quitButtonImg:TImage = LoadImage ("quitter.png")

'----------LOAD FONT
Global hybrid:timagefont = LoadImageFont("Hybrid_b.ttf",250)
Global ancreon:timagefont = LoadImageFont("ancreon.ttf",250)

'----------SOUND

'Global channel1=AllocChannel()
'Global musicBG:TSound = LoadSound("tatakau.WAV",True)
'CueSound musicBG,channel1
'SetChannelVolume channel1,0.4
'SetChannelRate channel1, 1.5

'----------VARIABLE

Global XCoord = 1
Global partFlag = 0
Global partTimer = 1000

Global pulseValue = 1
Global pulseFlag = 1
Global rotFlag = 1
Global rotValue = 1

Global pulseFlagZ = 1

Global partNumber = 0
Global partList:TList	= CreateList()
Global ligthPartBlueImg:TImage = LoadImage ("partblue.png")
Global ligthPartPurpleImg:TImage = LoadImage ("partpurple.png")
Global ligthPartLBlueImg:TImage = LoadImage ("partblue2.png")

Global buttonList:Tlist = CreateList()

'-----------TYPE
Type TButton
	Field x#,y#,img:TImage,name:String
	
	Function Create(x,y,img:TImage,name:String)
		Local lButton:TButton= New TButton
		lButton.x = x
		lButton.y = y
		lButton.img = img
		lButton.name=name
		buttonList.AddLast(lButton)
		SetScale 0.5,0.5
		DrawImage lButton.img,lButton.x,lButton.y
		SetImageFont ancreon
		SetScale 0.3,0.3
		SetColor 0,0,0
		DrawText "{",lButton.x-30,lButton.y
		DrawText "}",lButton.x+ImageWidth(lButton.img)/2,lButton.y
		SetColor 255,255,255

	End Function
	
	Method Destroy()
		buttonList.remove(Self)
	End Method
	
	Method moveOn (lbutton:TButton)
		If MouseX()>lButton.x And MouseX()<lButton.x+ImageWidth(lbutton.img)/2 And MouseY()>lButton.y And MouseY()<lButton.y+ImageHeight(lbutton.img)/2
			Return True
		End If
		Return False
	End Method
	
	Function upDate()
		For Local lButton:TButton = EachIn buttonList
		SetScale 0.5,0.5
		DrawImage lButton.img,lButton.x,lButton.y
		SetImageFont ancreon
		SetScale 0.3,0.3
		SetColor 0,0,0
		DrawText "{",lButton.x-30,lButton.y
		DrawText "}",lButton.x+ImageWidth(lButton.img)/2,lButton.y
		SetColor 255,255,255
			'SetImageFont ancreon
			'SetColor 100,100,100
			'DrawText "{",lButton.x-30,lButton.y
			'DrawText "}",lButton.x+ImageWidth(lButton.img)/2,lButton.y
			'SetColor 255,255,255
		Next
	End Function
	
	Function clicked()
		If MouseDown(1)
'			If( name = "play") Then SetColor 255,0,0
'			Else If (name = "options") Then SetColor 0,255,0
			DrawRect(0,0,100,100)
			Return True
		Else 
			Return False
		EndIf 
	End Function
	
End Type 	

Type TLightPart
	Field x#,y#,r,g,b,xv#,yv#,scale#,life
	
	Function Create(x,y,xv#,yv#,scale#,life)
		Local lPart:TLightPart= New TLightPart
		lPart.x = x
		lPart.y = y
		lPart.xv# = xv#
		lPart.yv# = yv#
		lPart.scale# = scale#
		lPart.life = life
		partList.AddLast(lPart)
	End Function

	Method Destroy()
		partList.Remove(Self)
	End Method
	
	Function UpdateAll()
		For Local lPart:TLightPart = EachIn partList
			lPart.yv#:+RndFloat()-0.5
			lPart.x#:+lPart.xv#
        	lPart.y#:+lPart.yv#
        	SetScale lPart.scale,lPart.scale
			partNumber =Rnd(4)
			If partNumber = 1
			   DrawImage (ligthPartBlueImg,lPart.x,lPart.y)
			ElseIf partNumber = 2
        		DrawImage (ligthPartPurpleImg,lPart.x,lPart.y)
			ElseIf partNumber = 3
        		DrawImage (ligthPartLBlueImg,lPart.x,lPart.y)
			EndIf
        	SetScale 1,1
        	lPart.life:-1
	       	If lPart.life < 1 Then lPart.Destroy()
		Next
	End Function

End Type

	TButton.Create (40,320,playButtonImg,"play")
	TButton.Create (100,400,optionsButtonImg,"options")
	TButton.Create (160,480,quitButtonImg,"quit")

Rem

'-------TURN TEXT INTO IMAGE VIA GRABIMAGE 
Local text:String="Appuyez sur Entrée"
Local h:Int=TextHeight("A")
Local c:Float=0.0
SetMaskColor 255,255,255
Local img:TImage=CreateImage(600,h)
DrawText Text,0,0
GrabImage Img,0,0

'--------NOW CREATE THE RED/YELLOW GRADIENT
Cls
For Local y:Int=0 To h
  c=255.0*(y/Float(h))
  SetColor 255,c,0
  DrawLine 0,y,TextWidth(Text),y
Next

'-----WRITE THE TEXTIMAGE ONTO THE GRADIENT WITH THE RIGHT MASKCOLOR 
'-----THEN GRAB IT
SetBlend MASKBLEND
SetColor 255,255,255
DrawImage Img,0,0
SetMaskColor 0,0,0
GrabImage Img,0,0

'------NOW DISPLAY THE GRABBED IMAGE
Local x:Int=0
'SetClsColor 50,50,50
EndRem

'DrawImage(fond,400,300)

HideMouse

Repeat 

Cls 

	SetScale 1,1
	SetAlpha 1
	SetColor 255,255,255
	SetRotation 0
	
	'Dessin du background
	DrawImage backgd,0,0

	'Dessin boomer
	MidHandleImage boomer
	SetBlend alphablend
	SetAlpha 0.5
	SetRotation rotvalue
	Rem
	If rotFlag = 1
		rot:+1
		If rot> 1
			rotFlag = 0
		EndIf
	ElseIf rotFalg = 0
		rot:-1
		If rot< -1
			rotFlag = 1
		EndIf
	EndIf
	EndRem
	If pulseFlag = 1
		pulseValue:+1
		SetScale 0.35+pulseValue*0.005,0.35+pulseValue*0.005
		'DrawImage boomer,650,450
		If pulseValue > 10
			pulseFlag = 0
		EndIf
	ElseIf pulseFlag = 0
		pulseValue:-1
		SetScale 0.35+pulseValue*0.005,0.35+pulseValue*0.005
		'DrawImage boomer,650,450
		If pulseValue < 0
			pulseFlag = 1
		EndIf
	EndIf 

	'Dessin Vib'

	SetScale 1.15,1.15
	SetAlpha 1
	SetRotation 23
	DrawImage vib,280,-30
	
	'Dessin Z
	MidHandleImage zImg
	SetScale 0.7,0.6
	If pulseFlagZ = 1
		SetScale 0.7+pulseValue*0.005,0.6+pulseValue*0.005
		If pulseValue > 5
			pulseFlagZ = 0
		EndIf
		DrawImage zImg,650,200
	ElseIf pulseFlagZ = 0
		SetScale 0.7+pulseValue*0.005,0.6+pulseValue*0.005
		If pulseValue > 10
			pulseFlagZ = 0
		EndIf
		DrawImage zImg,650,200
	EndIf 
	


	SetRotation 0
	TButton.update()
	'SetBlend SOLIDBLEND
	SetBlend MASKBLEND
	SetMaskColor 0,0,0

	For Local lButton:TButton = EachIn buttonList
		If (lbutton.moveOn(lbutton))
			SetImageFont ancreon
			'SetColor 255,255,255
			'SetBlend LIGHTBLEND
			'DrawText "{",lButton.x-30,lButton.y
			'DrawText "}",lButton.x+ImageWidth(lButton.img)/2,lButton.y
			SetBlend LIGHTBLEND
			SetColor 245,245,255
			
			DrawText "{",lButton.x-30,lButton.y
			DrawText "}",lButton.x+ImageWidth(lButton.img)/2,lButton.y
			SetColor 255,255,255
			If (lbutton.clicked())
				If lbutton.name="play"
					Print "pouet"
				Else If lbutton.name="options"
					Print "pouet2"
				Else If lbutton.name="quit"
					Print "pouet3"
				EndIf
			EndIf
		EndIf

	Next

	SetScale 1,1
	'Dessin souris
	SetColor 255,255,255
	SetBlend LightBlend
	'SetAlpha 0.4

	MidHandleImage lightimage
	SetScale 0.5,0.5

	If pulseFlag = 1
		SetScale 0.4+pulseValue*0.01,0.4+pulseValue*0.01
		DrawImage lightimage,MouseX(),MouseY()
	ElseIf pulseFlag = 0
		SetScale 0.4+pulseValue*0.01,0.4+pulseValue*0.01
		DrawImage lightimage,MouseX(),MouseY()

	EndIf 


	'Dessin particules flottantes
	partNumber = Rnd(3)
	SetAlpha 1
	SetScale 1,1
	SetBlend LightBlend
	If partTimer > 400
		'If MouseDown(1) 	
		'Ok, the yv, is the y velocity, this is going to be at
		'1, so y will update by 1 every refresh by default
		Local yv# = 0.01
		'ok I call this lx because its a local variable,
		'it is actually modifying the X velocity vector
		'of the particle so that we can see where this particle
		'will go.  
		For Local lx# = 0.1 To 1 Step .1
	    	'Randomize the y velocity a bit to make it look neat
			yv#:-RndFloat()
	    	'Ok, so we go from .1 to 1 by .1 a step and create
	    	'two particles at a time.  the -lx in the latter
	    	'create function is so that it is mirrored.
			TLightPart.Create (XCoord,-30,lx#,yv#-3,.2,660)
			'TLightPart.Create (XCoord,-30,-lx#,yv#-3,.2,660)
		Next

		If XCoord > 800
			partFlag = 1
			partTimer  = 0
		ElseIf XCoord < 0
			partFlag = 0
			partTimer  = 0
		EndIf
		If partFlag = 0
			XCoord:+20
		ElseIf partFlag = 1
			XCoord:-20
		EndIf
	End If
	
	TLightPart.UpdateAll
	partTimer :+1
	
Flip 

Until KeyDown (key_enter) Or KeyDown (key_escape) Or AppTerminate()




