Strict 
Graphics 800,600,0

' Autres

'----------LOAD IMAGE 

Global lightImage:TImage = LoadImage("pulse.png")
Global backgd:TImage = LoadImage("backgdoption.png")

Global retourButtonImg:TImage = LoadImage("retour.png")

Global easyCircleImg:TImage = LoadImage("easycircle.png")
Global middleCircleImg:TImage = LoadImage("middlecircle.png")
Global hardCircleImg:TImage = LoadImage("hardcircle.png")

Global soundIMG:TImage = LoadImage("sound.png")
Global noSoundIMG:TImage = LoadImage("nosound.png")
Global rectImg:TImage = LoadImage("rectangle.png")
Global screenImg:TImage = LoadImage("screen.png")
Global windowImg:TImage = LoadImage("window.png")

'----------LOAD FONT
Global hybrid:timagefont = LoadImageFont("Hybrid_b.ttf",250)
Global ancreon:timagefont = LoadImageFont("ancreon.ttf",250)
Global sea2001:timagefont = LoadImageFont("sea2001.ttf",100)


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
	
	Method moveOn ()
		If MouseX()>Self.x And MouseX()<Self.x+ImageWidth(Self.img)/2 And MouseY()>Self.y And MouseY()<Self.y+ImageHeight(Self.img)/2
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
		Next
	End Function
	
	Function clicked()
		If MouseDown(1)
			DrawRect(0,0,100,100)
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

HideMouse

TButton.Create (500,500,retourButtonImg,"retour")
	
Repeat 

Cls 

SetScale 1,1
	SetAlpha 1
	SetColor 255,255,255
	SetRotation 0
	
	'Dessin du background
	DrawImage backgd,0,0

	SetBlend alphablend
	SetAlpha 0.5

	If pulseFlag = 1
		pulseValue:+1
		SetScale 0.35+pulseValue*0.005,0.35+pulseValue*0.005
		If pulseValue > 10
			pulseFlag = 0
		EndIf
	ElseIf pulseFlag = 0
		pulseValue:-1
		SetScale 0.35+pulseValue*0.005,0.35+pulseValue*0.005
		If pulseValue < 0
			pulseFlag = 1
		EndIf
	EndIf 

	SetBlend alphablend
	SetAlpha 1
	SetRotation 0
	'SetBlend SOLIDBLEND
	SetBlend MASKBLEND
	SetMaskColor 0,0,0
	TButton.update()
	SetImageFont ancreon
	For Local lButton:TButton = EachIn buttonList
		If lbutton.moveOn()
			SetColor 58,97,144
			DrawText "{",lButton.x-30,lButton.y
			DrawText "}",lButton.x+ImageWidth(lButton.img)/2,lButton.y
			SetColor 200,200,200
			SetBlend LIGHTBLEND
			DrawText "{",lButton.x-30,lButton.y
			DrawText "}",lButton.x+ImageWidth(lButton.img)/2,lButton.y
			SetColor 255,255,255
			If (lbutton.clicked())

			End If
		EndIf
	Next
	
	SetBlend MASKBLEND
	SetImageFont sea2001
	SetColor 25,25,25
	SetScale 0.3,0.3
	DrawText "FACILE",125,130
	DrawText "MOYEN",125,200
	DrawText "EXPERT",120,270

	SetColor 255,255,255
	SetBlend ALPHABLEND
	SetAlpha 0.7
	SetScale 0.6,0.6
	
	If MouseX()>125 And MouseX()<300 And MouseY()>130 And MouseY()<160
		DrawImage easyCircleImg, 50,110
		SetScale 0.3,0.3
		SetColor 150,255,246
		DrawText "FACILE",125,130
	Else If MouseX()>125 And MouseX()<300 And MouseY()>200 And MouseY()<230
		DrawImage middleCircleImg, 50,180
		SetScale 0.3,0.3
		SetColor 50,45,255
		DrawText "MOYEN",125,200
	Else If MouseX()>125 And MouseX()<300 And MouseY()>270 And MouseY()<300
		DrawImage hardCircleImg, 50,250
		SetScale 0.3,0.3
		SetColor 162,19,164
		DrawText "EXPERT",120,270
	EndIf
			
	SetColor 255,255,255
	SetScale 1,1
	SetAlpha 1
	
	'SON
	
	'Dessin des icones du son
	SetScale 0.6,0.6
	DrawImage soundImg,560,100
	DrawImage noSoundImg,670,100
	
	'Gestion de la souris 
	If MouseX()>560 And MouseX()<560+soundImg.width And MouseY()>100 And MouseY()<100+soundImg.height
			SetScale 0.5,0.5
			DrawImage rectImg,550,90
	Else If MouseX()>670 And MouseX()<670+noSoundImg.width And MouseY()>100 And MouseY()<100+noSoundImg.height
			SetScale 0.5,0.5
			DrawImage rectImg,660,90
	End If
		
	'AFFICHAGE
	
	'Dessin des icones de l'affichage
	SetScale 0.8,0.8
	DrawImage screenImg,555,320
	DrawImage windowImg,665,320
	
	'Gestion de la souris 
	If MouseX()>555 And MouseX()<550+screenImg.width And MouseY()>320 And MouseY()<320+screenImg.height
			SetScale 0.5,0.5
			DrawImage rectImg,545,310
	Else If MouseX()>665 And MouseX()<665+windowImg.width And MouseY()>320 And MouseY()<320+windowImg.height
			SetScale 0.5,0.5
			DrawImage rectImg,655,310
	End If
	
	SetColor 255,255,255
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
			TLightPart.Create (XCoord,-30,-lx#,yv#-3,.2,660)
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




