'----------LOAD IMAGE 

Incbin "backgdoption.png"
Incbin "retour.png"
Incbin "easycircle.png"
Incbin "middlecircle.png"
Incbin "hardcircle.png"
Incbin "sound.png"
Incbin "nosound.png"
Incbin "rectangle.png"
Incbin "screen.png"
Incbin "window.png"
Incbin "sea2001.ttf"

Global backgdOption:TImage = LoadImage("incbin::backgdoption.png")

Global retourButtonImg:TImage = LoadImage("incbin::retour.png")

Global easyCircleImg:TImage = LoadImage("incbin::easycircle.png")
Global middleCircleImg:TImage = LoadImage("incbin::middlecircle.png")
Global hardCircleImg:TImage = LoadImage("incbin::hardcircle.png")

Global soundIMG:TImage = LoadImage("incbin::sound.png")
Global noSoundIMG:TImage = LoadImage("incbin::nosound.png")
Global rectImg:TImage = LoadImage("incbin::rectangle.png")
Global screenImg:TImage = LoadImage("incbin::screen.png")
Global windowImg:TImage = LoadImage("incbin::window.png")

Global sea2001:timagefont = LoadImageFont("incbin::sea2001.ttf",100)

	
Function optionsMenu()

SetScale 1,1
	
	'Dessin du background
	DrawImage backgdOption,0,0

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

	SetAlpha 1
	SetBlend MASKBLEND
	TButton.update()
	SetImageFont ancreon
	For Local lButton:TButton = EachIn buttonList
		If lbutton.moveOn(lbutton)
			SetColor 58,97,144
			DrawText "{",lButton.x-30,lButton.y
			DrawText "}",lButton.x+ImageWidth(lButton.img)/2,lButton.y
			SetColor 200,200,200
			SetBlend LIGHTBLEND
			DrawText "{",lButton.x-30,lButton.y
			DrawText "}",lButton.x+ImageWidth(lButton.img)/2,lButton.y
			SetColor 255,255,255
			If (lbutton.clicked())
				If lbutton.name="retour"
					play = MAIN_MENU ; ClearList buttonList
					createMainButtons()
				EndIf
			End If
		EndIf
	Next
	
	
	'---------- Choix de la difficulté 
	
	SetBlend MASKBLEND
	SetImageFont sea2001
	SetColor 25,25,25
	SetScale 0.3,0.3
	DrawText "EASY",125,130
	DrawText "MIDD",125,200
	DrawText "HARD",120,270
	
	If MouseX()>125 And MouseX()<300 And MouseY()>130 And MouseY()<160 Or difficulty = 1
		SetColor 255,255,255
		SetBlend ALPHABLEND
		SetAlpha 0.7
		SetScale 0.6,0.6
		DrawImage easyCircleImg, 50,110
		SetScale 0.3,0.3
		SetColor 150,255,246
		If difficulty = 1 Then DrawText "EASY",125,130
		If MouseDown(1) Then Difficulty = 1
	EndIf
	If MouseX()>125 And MouseX()<300 And MouseY()>200 And MouseY()<230 Or difficulty = 2
		SetColor 255,255,255
		SetBlend ALPHABLEND
		SetAlpha 0.7
		SetScale 0.6,0.6
		DrawImage middleCircleImg, 50,180
		SetScale 0.3,0.3
		SetColor 50,45,255
		If difficulty = 2 Then DrawText "MID",125,200
		If MouseDown(1) Then Difficulty = 2
	EndIf
	If MouseX()>125 And MouseX()<300 And MouseY()>270 And MouseY()<300 Or difficulty = 3
		SetColor 255,255,255
		SetBlend ALPHABLEND
		SetAlpha 0.7
		SetScale 0.6,0.6
		DrawImage hardCircleImg, 50,250
		SetScale 0.3,0.3
		SetColor 162,19,164
		If difficulty = 3 Then DrawText "HARD",120,270
		If MouseDown(1) Then Difficulty = 3
	EndIf
			
	SetColor 255,255,255
	SetAlpha 1
	
	'SON
	
	'Dessin des icones du son
	SetScale 0.6,0.6
	DrawImage soundImg,560,100
	DrawImage noSoundImg,670,100
	
	'Gestion de la souris 
	SetScale 0.5,0.5
	If MouseX()>560 And MouseX()<560+soundImg.width And MouseY()>100 And MouseY()<100+soundImg.height	
			DrawImage rectImg,550,90
			If MouseDown(1) Then soundOff = False
	Else If MouseX()>670 And MouseX()<670+noSoundImg.width And MouseY()>100 And MouseY()<100+noSoundImg.height	
			DrawImage rectImg,660,90
			If MouseDown(1) Then soundOff = True
	End If
	If soundOff 
		DrawImage rectImg,660,90
	Else
		DrawImage rectImg,550,90
	EndIf
		
	'AFFICHAGE
	
	'Dessin des icones de l'affichage
	SetScale 0.8,0.8
	DrawImage screenImg,555,320
	DrawImage windowImg,665,320
	
	'Gestion de la souris 
	SetScale 0.5,0.5
	If MouseX()>555 And MouseX()<550+screenImg.width And MouseY()>320 And MouseY()<320+screenImg.height		
			DrawImage rectImg,545,310
			If MouseDown(1) And windowed Then Graphics 800,600,32,60 ; windowed = False
	Else If MouseX()>665 And MouseX()<665+windowImg.width And MouseY()>320 And MouseY()<320+windowImg.height
			DrawImage rectImg,655,310
			If MouseDown(1) And Not windowed Then Graphics 800,600,0,60 ; windowed = True
	End If
	If windowed
		DrawImage rectImg,655,310
	Else
		DrawImage rectImg,545,310
	EndIf

	
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
	
End Function

'Until KeyDown (key_enter) Or KeyDown (key_escape) Or AppTerminate()




