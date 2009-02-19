Incbin "images/vaisseaumatricelittle.png"
Incbin "images/ally2.png"
Incbin "images/tirBF.png"
Incbin "images/tirMF.png"
'Incbin "images/tirHF2.png"
Incbin "images/TIRHFMatrice.png"
Incbin "images/TIRHFLaserMatrice.png"
'Incbin "images/TIRHFLaserMatriceLight.png"
Incbin "images/enemyBullet1.png"
Incbin "images/enemyBullet2.png"
Incbin "images/light.png"
Incbin "images/explosion.png"
Incbin "images/lightbase.png"
Incbin "images/lightrect.png"
Incbin "images/noteLittle.png"
Incbin "images/cledesol.png"
Incbin "images/cledefa.png"
Incbin "images/cledut.png"
Incbin "images/bonusPower.png"
Incbin "images/bonusSlow.png"
Incbin "images/bonusBombe.png"
Incbin "images/bonusLife.png"
Incbin "images/fondVibzGrunge.png"
Incbin "images/fondVibzGrungeBig.png"
Incbin "images/bordgauche.png"
Incbin "images/borddroit.png"
Incbin "images/jauge.png"
Incbin "images/explosion2.png"
Incbin "images/logolife.png"
Incbin "images/logobomb.png"

Incbin "images/scrolling21.png"
Incbin "images/scrolling22.png"
Incbin "images/scrolling11.png"
Incbin "images/scrolling12.png"

Incbin "images/logobomb.png"

' Gestion des images
AutoMidHandle(True)
Global PlayerImage:TImage = LoadAnimImage("incbin::images/vaisseaumatricelittle.png",70,50,0,6)
Global Ship2B:Timage = LoadImage("incbin::images/ally2.png",mipmappedimage)
Global BulletBassImage:Timage = LoadImage("incbin::images/tirBF.png")
Global BulletMidImage:Timage = LoadImage("incbin::images/tirMF.png")
Global BulletTrebleBaseImage:TImage = LoadAnimImage("incbin::images/TIRHFMatrice.png",100,100,0,14,mipmappedimage)
Global BulletTrebleImage:TImage = LoadAnimImage("incbin::images/TIRHFLaserMatrice.png",50,15,0,14,mipmappedimage)
Global EnemyBulletImageBF:TImage = LoadImage("incbin::images/enemyBullet1.png")
Global EnemyBulletImageHF:TImage = LoadImage("incbin::images/enemyBullet2.png")
Global ExplosionImage:TImage = LoadImage("incbin::images/light.png")
Global ExplosionAnimImage:TImage = LoadAnimImage("incbin::images/explosion.png",200,250,0,12)
Global ExplosionAnimImage2:TImage = LoadAnimImage("incbin::images/explosion2.png",200,250,0,12)

Global ShieldImage:TImage = LoadImage("incbin::images/lightbase.png")
Global FocusImage:TImage = LoadImage("incbin::images/lightrect.png")
Global spriteInit = True 'est-ce que les sprites sont initialisés (effet de flammes derrière le vaisseau)

Global noteImage:TImage = LoadImage("incbin::images/noteLittle.png")
Global cleDeSolImage:TImage = LoadImage("incbin::images/cledesol.png")
Global cleDeFaImage:TImage = LoadImage("incbin::images/cledefa.png")
Global cleDUtImage:TImage = LoadImage("incbin::images/cledut.png")

Global bonusWidthImage:TImage = LoadAnimImage("incbin::images/bonusPower.png",50,50,0,8)
Global bonusSlowImage:TImage = LoadAnimImage("incbin::images/bonusSlow.png",50,50,0,8)
Global bonusBombImage:TImage = LoadAnimImage("incbin::images/bonusBombe.png",50,50,0,8)
Global bonusLifeImage:TImage = LoadAnimImage("incbin::images/bonusLife.png",50,50,0,8)

AutoMidHandle(False)
Global bg31:TImage = LoadImage("incbin::images/fondVibzGrunge.png")
Global bg32:TImage = LoadImage("incbin::images/fondVibzGrungeBig.png")
Global bg21:TImage = LoadImage("incbin::images/scrolling21.png")
Global bg22:TImage = LoadImage("incbin::images/scrolling22.png")
Global bg11:TImage = LoadImage("incbin::images/scrolling11.png")
Global bg12:TImage = LoadImage("incbin::images/scrolling12.png")
Global BG1:TImage[3] 
Global BG2:TImage[3]
bg1[0] = bg31 
bg1[1] = bg21
bg1[2] = bg31
bg2[0] = bg12
bg2[1] = bg22
bg2[2] = bg32

AutoMidHandle(True)
Global leftImage:TImage = LoadImage("incbin::images/bordgauche.png")
Global rightImage:TImage = LoadImage("incbin::images/borddroit.png")
Global jaugeImage:TImage = LoadImage("incbin::images/jauge.png",mipmappedimage)
Global lifeStockImage:TImage = LoadImage("incbin::images/logolife.png")
Global bombStockImage:TImage = LoadImage("incbin::images/logobomb.png")

Global sprites:TList = CreateList()
Global animations:TList = CreateList()

Global mapX# = 0 'coordonnées de l'arrière plan (tileimage)
Global mapY# = 0 
Global mapSpeed% = 6 'la vitesse de défilement de l'arrière plan

Type Tsprite

	Field x#,y#
	Field origineX#, origineY#
	Field speed#
	Field colR,colG,colB
	
	Function init_sprite(x%,y%,r,g,b,width=30,height=20)
		
		For Local i=0 To 3
			Local sp:Tsprite=New Tsprite
			sp.x#=x+Rnd(-width/2,width/2)
			sp.y#=y+Rnd(-height/2,height/2)
			sp.origineX = sp.x
			sp.origineY = sp.y
			sp.speed#=Rnd(0,1)/100
			sp.colR=r
			sp.colG =g
			sp.colB=b
			ListAddLast sprites,sp
		Next
	End Function
	
	Function update_sprite(flag%) ' si flag = 0 : on affiche pas, sinon oui, x et y servent à rien ??
		For Local sp:Tsprite = EachIn sprites
			sp.y#=sp.y#+sp.speed#
			sp.speed:+0.008
			If sp.y#>GraphicsHeight() Or sp.y>sp.origineY+ 15 + Rnd(5)
				sprites.remove(sp)
			EndIf
			'SetBlend lightblend
			SetAlpha 0.1
			SetColor sp.colR,sp.colG,sp.colB
			If Not (flag = 0) DrawOval sp.x#,sp.y#,2,2
			'SetBlend alphablend
		Next
	End Function

End Type

Type coordinate
	Field a%,b%
End Type 

Function motionBlur(coordsList:TList, image:TImage, scale# = 1, frame#=0, maxImages# = 20)
	Local c# = 0
	'Print SizeOf coordslist
	For Local coord:coordinate = EachIn coordsList
		If slowmo And c Mod (2) = 0
			SetBlend alphablend
			Local csurmax# = c/maxImages
			SetAlpha(1-csurmax)
			SetColor (100,100,100)
			SetScale scale,scale
			DrawImage image, coord.a, coord.b,frame 'on affiche une fois sur deux et seulement en slow mode
			SetScale 1,1
		EndIf
		c:+1
		If c=maxImages Then ListRemove(coordsList,coord)'
	Next
	SetAlpha 1
End Function


Function background()		
	Local Player:TPlayer = TPlayer(PlayerList.Last()) 
	SetColor 205,205,205
	If slowmo Then SetColor 150+Sin(mapY)*50,150+Sin(mapY)*50,150+Sin(mapY)*50'SetColor 0,0,155
	If pause Then SetColor 130,130,130
	TileImage(BG1[currentLevel-1],leftEdge,mapY/2)
	SetAlpha 0.5
	TileImage BG2[currentLevel-1],leftEdge+mapx-Player.x/5,mapY/2-player.y/5
	SetAlpha 1
	SetScale 1,1
	SetBlend alphablend
	SetColor 255,255,255
End Function



Type TAnimation
	Field x#,y#
	Field image:TImage
	Field frame#
	Field maxFrames#
	Field link:TLink
	Field speed#
	Field dec#
	
	Function make:TAnimation(imagePath$,x#,y#,width#,height#,maxFrames#,speed#=1,dec#=1)
		Local anim:TAnimation = New TAnimation
		anim.image = LoadAnimImage(imagePath,width,height,0,maxFrames,mipmappedimage)
		anim.frame = 0
		anim.maxFrames = maxFrames
		anim.x = x
		anim.y = y
		anim.speed = speed
		anim.link = animations.addLast(anim)
		Return anim
	End Function
	
	Function update()
		Local Player:TPlayer = TPlayer(PlayerList.Last()) 
		For Local anim:TAnimation = EachIn animations			
			anim.frame:+1
			If TLaserAnimation(anim)
				anim.x=player.x+anim.dec
				anim.y=player.y-50
				If KeyDown(KEY_LALT) Then SetColor 255,255,255;DrawImage anim.image,anim.x,anim.y,anim.frame*anim.speed
				If anim.frame = anim.maxFrames Then anim.frame = 0
				'TLaserAnimation.make(bulletTrebleBasePath,anim.x,anim.y,100,100,14,0.5,anim.dec)
			EndIf 			
			If anim.frame = anim.maxFrames Then animations.remove(anim)
		Next
	End Function
	
	Method move(newx#,newy#) 'a pas l'air de marcher
		x=newx
		y=newy
	End Method

End Type


Type TLaserAnimation Extends TAnimation
	Function make:TLaserAnimation(imagePath$,x#,y#,width#,height#,maxFrames#,speed#=1,dec#=0)
		Local anim:TLaserAnimation = New TLaserAnimation
		anim.image = LoadAnimImage(imagePath,width,height,0,maxFrames,mipmappedimage)
		anim.frame = 0
		anim.maxFrames = maxFrames
		anim.x = x
		anim.y = y
		anim.dec = dec
		anim.speed = speed
		anim.link = animations.addLast(anim)
		Return anim
	End Function
End Type




