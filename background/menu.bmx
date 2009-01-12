Incbin "pulse.png"
Incbin "backgd.png"
Incbin "boomer.png"
Incbin "vib.png"
Incbin "Z4.png"
Incbin "controlsBG.png"
Incbin "cadre.png"
Incbin "jouer.png"
Incbin "options.png"
Incbin "quitter.png"
Incbin "aide.png"
Incbin "Hybrid_b.ttf"
Incbin "ancreon.ttf"
Incbin "partblue.png"
Incbin "partblue2.png"
Incbin "partpurple.png"
Incbin "../sound/SmoothFull.ogg"

Global lightImage:TImage = LoadImage("incbin::pulse.png")
Global backgd:TImage = LoadImage("incbin::backgd.png")
Global boomer:TImage = LoadImage("incbin::boomer.png")
Global vib:TImage = LoadImage("incbin::vib.png")
Global zImg:TImage = LoadImage("incbin::Z4.png")
Global controlImg:TImage = LoadImage("incbin::controlsBG.png")
Global frameImg:TImage = LoadImage("incbin::cadre.png")

Global playButtonImg:TImage = LoadImage ("incbin::jouer.png")
Global optionsButtonImg:TImage = LoadImage ("incbin::options.png")
Global quitButtonImg:TImage = LoadImage ("incbin::quitter.png")
Global aideButtonImg:TImage = LoadImage ("incbin::aide.png")

'----------LOAD FONT
Global hybrid:timagefont = LoadImageFont("incbin::Hybrid_b.ttf",250)
Global ancreon:timagefont = LoadImageFont("incbin::ancreon.ttf",250)

'----------SOUND

Global channelBG:TChannel=AllocChannel()
Global musicBG:TSound = LoadSound("incbin::../sound/SmoothFull.ogg",True)
CueSound musicBG,channelBG
SetChannelVolume channelBG,0.4
SetChannelRate channelBG, 1

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
Global ligthPartBlueImg:TImage = LoadImage ("incbin::partblue.png")
Global ligthPartPurpleImg:TImage = LoadImage ("incbin::partpurple.png")
Global ligthPartLBlueImg:TImage = LoadImage ("incbin::partblue2.png")

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
			'DrawRect(0,0,100,100)
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


Function createMainButtons()
	TButton.Create (50,270,playButtonImg,"play")
	TButton.Create (120,350,aideButtonImg,"aide")
	TButton.Create (190,430,optionsButtonImg,"options")
	TButton.Create (250,510,quitButtonImg,"quit")
End Function 

createMainButtons() ' Création des boutons du menu principal

Function switchGraphics()
	If windowed 
		Graphics 800,600,32,60 ; windowed = False
	Else
		Graphics 800,600,0,60 ; windowed = True
	EndIf
End Function


HideMouse

Function menu() 

	SetScale 1,1
	SetAlpha loopsCount/300
	SetColor 255,255,255
	SetRotation 0
	
	'Dessin du background
	DrawImage backgd,0,0
	
	'Dessin boomer
	MidHandleImage boomer
	SetBlend alphablend
	SetAlpha 0.5
	SetRotation rotvalue

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
					play = 10
				Else If lbutton.name="options"
					play = OPTIONS_MENU ; ClearList buttonList
					TButton.Create (500,500,retourButtonImg,"retour")
					Rem If windowed 
						Graphics 800,600,32,60 ; windowed = False
					Else
						Graphics 800,600,0,60 ; windowed = True
					EndIf
					End Rem
				Else If lbutton.name="quit"
					End 'stops the program at once
				Else If lbutton.name="aide"
					play = HELP_MENU ; ClearList buttonList
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
	
End Function
	
'Flip 

'Until KeyDown (key_enter) Or KeyDown (key_escape) Or AppTerminate()


Function help()
	SetScale 1,1
	SetAlpha loopsCount/300
	SetColor 255,255,255
	SetRotation 0
	
	'Dessin du background
	DrawImage backgd,0,0
	'Dessin du cadre
	If loopscount Mod Rand(500) = 0
		SetScale 2+RndDouble()*3,1+RndDouble()*2
		DrawImage frameImg,310+Rand(-20,2),300-Rand(50)
	Else
		SetScale 2.5,1
		SetAlpha 0.9
		DrawImage frameImg,310+Rand(-1,1),300+Rand(-1,1)
	EndIf
	
	
	'Dessin des contrôles
	SetScale 1,1
	SetAlpha 1
	DrawImage controlImg,0,0
	

	'Dessin boomer
	MidHandleImage boomer
	SetBlend alphablend
	SetAlpha 0.5
	SetRotation rotvalue

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


	SetRotation 0
	TButton.update()
	SetBlend MASKBLEND

	For Local lButton:TButton = EachIn buttonList
		If (lbutton.moveOn(lbutton))
			SetImageFont ancreon
			SetBlend LIGHTBLEND
			SetColor 245,245,255
			DrawText "{",lButton.x-30,lButton.y
			DrawText "}",lButton.x+ImageWidth(lButton.img)/2,lButton.y
			SetColor 255,255,255
			If (lbutton.clicked())
				If lbutton.name="retour"
					play = 0
					' à complèter
				EndIf
			EndIf
		EndIf

	Next

	'Dessin souris
	SetColor 255,255,255
	SetBlend LightBlend

	MidHandleImage lightimage

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
		Local yv# = 0.01
		For Local lx# = 0.1 To 1 Step .1
			yv#:-RndFloat()
			TLightPart.Create (XCoord,-30,lx#,yv#-3,.2,660)
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
	
End Function

