
'----------LOAD IMAGE 

Incbin "backgdcredits.png"
Incbin "shootPart1.png"
Incbin "shootPart2.png"
Incbin "shootPart3.png"
Incbin "creditFX.png"
Incbin "sunFX.png"


Global backgdCredits:TImage = LoadImage("incbin::backgdcredits.png")


Global shootPart1:TImage = LoadImage("incbin::shootPart1.png")
Global shootPart2:TImage = LoadImage("incbin::shootPart2.png")
Global shootPart3:TImage = LoadImage("incbin::shootPart3.png")

Global shootPartFX:TImage = LoadImage("incbin::creditFX.png")
Global shootPartFXBolt:TImage = LoadImage("incbin::sunFX.png")

MidHandleImage lightimage
MidHandleImage shootPart1
MidHandleImage shootPart2
MidHandleImage shootPart3
MidHandleImage ExplosionAnimImage
MidHandleImage shootPartFX
MidHandleImage shootPartFXBolt
MidHandleImage boomer

'----------VARIABLE



Global shootPartList:Tlist = CreateList()
Global shootPartCounter = 0
Global shootPartRotate = 0
Global sparkList:Tlist = CreateList()


Type TShootPart
	Field x
	Field y
	Field speed#
	Field hSpeed#
	Field imagetype = Rand (1,3) 
	Field img:TImage
	Field state
	Field Frame#
	Field rotate = 0
	Field explosionType = Rand (1,2) 
	
	Function Create(speed,hspeed)
		Local lShootPart:TShootPart= New TShootPart

		lShootPart.x = Rand(0,800)
		lShootPart.y = Rand(0,600)

		lShootPart.speed = speed 
		lShootPart.hspeed = hspeed 
		lShootPart.img = shootPart1
		lShootPart.state = 1 
		shootPartList.AddLast(lShootPart)
	End Function

	Method Destroy()
		shootPartList.Remove(Self)
	End Method
	
	Function UpdateAll()
		For Local lShootPart:TShootPart= EachIn shootPartList
			If lShootPart.state = 1
				lShootPart.hspeed = lShootPart.hspeed + (RndFloat()-0.5)
				lShootPart.speed=lShootPart.speed + (RndFloat()-0.5)
				lShootPart.x = lShootPart.x + lShootPart.hspeed
				lShootPart.y = lShootPart.y + lShootPart.speed
				partNumber =Rnd(4)
				If lShootPart.rotate< 360
					lShootPart.rotate:+3
				Else 
					lShootPart.rotate= 0
				End If
				SetRotation lShootPart.rotate
				SetColor 255,255,255
				SetAlpha 1
				SetScale 0.5,0.5
				If lShootPart.imagetype = 1
					DrawImage(shootPart1,lShootPart.x,lShootPart.y)
				Else If lShootPart.imagetype = 2
					DrawImage(shootPart2,lShootPart.x,lShootPart.y)
				Else lShootPart.imagetype = 3
					DrawImage(shootPart3,lShootPart.x,lShootPart.y)
				EndIf
		       	If lShootPart.y > 600 Or lShootPart.y < -20 Then lShootPart.Destroy()
		       	If lShootPart.x > 800 Or lShootPart.x < 0 Then lShootPart.Destroy()
			Else
				If lShootPart.frame >11
					lShootPart.Destroy()
				Else
					SetRotation 0
					If lShootPart.explosionType = 1
						DrawImage ExplosionAnimImage,lShootPart.x,lShootPart.y, lShootPart.frame
						'DrawImage shootPartFXBolt,lShootPart.x+10+(RndFloat()-0.5)*200,lShootPart.y+10+(RndFloat()-0.5)*200
						DrawImage shootPartFXBolt,lShootPart.x+10-(RndFloat()-0.5)*200,lShootPart.y+10-(RndFloat()-0.5)*200
						'DrawImage shootPartFXBolt,lShootPart.x+20+(RndFloat()-0.5)*200,lShootPart.y+20+(RndFloat()-0.5)*200
						DrawImage shootPartFXBolt,lShootPart.x+20-(RndFloat()-0.5)*200,lShootPart.y+20-(RndFloat()-0.5)*200
						'DrawImage shootPartFXBolt,lShootPart.x+30+(RndFloat()-0.5)*200,lShootPart.y+30+(RndFloat()-0.5)*200
						DrawImage shootPartFXBolt,lShootPart.x+30-(RndFloat()-0.5)*200,lShootPart.y+30-(RndFloat()-0.5)*200
						'DrawImage shootPartFXBolt,lShootPart.x-10+(RndFloat()-0.5)*200,lShootPart.y-10+(RndFloat()-0.5)*200
						DrawImage shootPartFXBolt,lShootPart.x-10-(RndFloat()-0.5)*200,lShootPart.y-10-(RndFloat()-0.5)*200
						'DrawImage shootPartFXBolt,lShootPart.x-20+(RndFloat()-0.5)*200,lShootPart.y-20+(RndFloat()-0.5)*200
						DrawImage shootPartFXBolt,lShootPart.x-20-(RndFloat()-0.5)*200,lShootPart.y-20-(RndFloat()-0.5)*200
						'DrawImage shootPartFXBolt,lShootPart.x-30+(RndFloat()-0.5)*200,lShootPart.y-30+(RndFloat()-0.5)*200
						DrawImage shootPartFXBolt,lShootPart.x-30-(RndFloat()-0.5)*200,lShootPart.y-30-(RndFloat()-0.5)*200						
						SetBlend LIGHTBLEND
						SetScale lShootPart.frame/10,lShootPart.frame/10
						DrawImage shootPartFX,lShootPart.x,lShootPart.y
						SetBlend ALPHABLEND
						SetScale 0.5,0.5
					Else 
						DrawImage ExplosionAnimImage2,lShootPart.x,lShootPart.y, lShootPart.frame
					EndIf
					lShootPart.frame:+0.3
				End If
			End If

		Next
	End Function
	
	Method moveOn ()
		If MouseX()>Self.x And MouseX()<Self.x+ImageWidth(Self.img)/3 And MouseY()>Self.y And MouseY()<Self.y+ImageHeight(Self.img)/3
			Return True
		End If
		Return False
	End Method 
	
	Function clicked()
		If MouseDown(1)
			Return True
		EndIf 
		Return False
	End Function
	
End Type

HideMouse

Function creditsMenu()

	SetScale 1,1
	SetAlpha 1
	SetColor 255,255,255
	SetRotation 0
	
	'Dessin du background
	DrawImage backgdCredits,0,0

	'Dessin boomer
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

	SetScale 1,1
	
	'Dessin souris
	SetColor 255,255,255
	SetBlend LightBlend


	SetScale 0.5,0.5

	If pulseFlag = 1
		SetScale 0.4+pulseValue*0.01,0.4+pulseValue*0.01
		DrawImage lightimage,MouseX(),MouseY()
	ElseIf pulseFlag = 0
		SetScale 0.4+pulseValue*0.01,0.4+pulseValue*0.01
		DrawImage lightimage,MouseX(),MouseY()
	EndIf 

	SetBlend ALPHABLEND
	SetColor 255,255,255
	SetScale 1,1

	If CountList(shootPartList)<100
		TShootPart.Create (2+RndFloat(),2+RndFloat())
	End If
	
	TShootPart.UpdateAll()
	
	For Local lShootPart:TShootPart = EachIn shootPartList
		If lShootPart.moveOn()
			If(lShootPart.clicked())
				lShootPart.state = 0
			End If
		End If
	Next
	
	SetRotation 0
	TButton.update()
	
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
					play = MAIN_MENU ; ClearList buttonList
					createMainButtons()
				EndIf
			EndIf
		EndIf
	Next

End Function




