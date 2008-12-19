' Gestion des images
AutoMidHandle(True)
Global Enemy3R:TImage = LoadImage("images/triangle.png")
Global Enemy2R:TImage = LoadImage("images/losangeDouble.png")
'Global PlayerImage:TImage = LoadImage("images/vaisseau1.png")
Global PlayerImage:TImage = LoadAnimImage("images/vaisseaumatricelittle.png",70,50,0,6)
Global Ship2B:Timage = LoadImage("images/carre.png")
Global BulletBassImage:Timage = LoadImage("images/tirBF.png")
'Global BulletTrebleImage:Timage = LoadImage("images/tirHF.png")
Global BulletTrebleImage2:Timage = LoadImage("images/tirHF2.png")
Global BulletTrebleBaseImage:TImage = LoadAnimImage("images/TIRHFMatrice.png",100,100,0,14,mipmappedimage)
Global BulletTrebleImage:TImage = LoadAnimImage("images/TIRHFLaserMatrice.png",50,15,0,14,mipmappedimage)
'Global BulletTrebleImage:TImage = LoadAnimImage("images/TIRHFLaserMatrice.png",64,19,0,14,mipmappedimage)
Global BulletTrebleImageLight:TImage = LoadAnimImage("images/TIRHFLaserMatriceLight.png",50,15,0,14,mipmappedimage)
Global bulletTrebleBasePath$ = "images/TIRHFMatrice.png"
Global BulletTrebleBaseImage2:TImage = LoadImage("images/tirHFbase2.png")
Global EnemyBulletImageBF:TImage = LoadImage("images/enemyBullet1.png")
Global EnemyBulletImageHF:TImage = LoadImage("images/enemyBullet2.png")
Global ExplosionImage:TImage = LoadImage("images/light.png")
Global ExplosionAnimImage:TImage = LoadAnimImage("images/explosion.png",200,250,0,12)

Global ShieldImage:TImage = LoadImage("images/lightbase.png")
Global FocusImage:TImage = LoadImage("images/lightrect.png")
Global spriteInit = True 'est-ce que les sprites sont initialisés (effet de flammes derrière le vaisseau)

Global noteImage:TImage = LoadImage("images/noteLittle.png")
Global cleDeSolImage:TImage = LoadImage("images/cledesol.png")
Global cleDeFaImage:TImage = LoadImage("images/cledefa.png")
Global cleDUtImage:TImage = LoadImage("images/cledut.png")

Global bonusWidthImage:TImage = LoadAnimImage("images/bonusPower.png",50,50,0,8)
Global bonusSlowImage:TImage = LoadAnimImage("images/bonusSlow.png",50,50,0,8)
Global bonusBombImage:TImage = LoadAnimImage("images/bonusBombe.png",50,50,0,8)
Global bonusLifeImage:TImage = LoadAnimImage("images/bonusLife.png",50,50,0,8)

Global bg1:TImage = LoadImage("images/fondVibzGrunge.png")
Global bg2:TImage = LoadImage("images/fondVibzGrungeBig.png")
Global leftImage:TImage = LoadImage("images/bordgauche.png")
Global rightImage:TImage = LoadImage("images/borddroit.png")
Global jaugeImage:TImage = LoadImage("images/jauge.png",mipmappedimage)

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
	
	Function init_sprite(x%,y%)
		
		For Local i=0 To 3
			Local sp:Tsprite=New Tsprite
			sp.x#=x+Rnd(-15,15)
			sp.y#=y+Rnd(-15,5)
			sp.origineX = sp.x
			sp.origineY = sp.y
			sp.speed#=Rnd(0,1)/100
			'sp.colR=Rnd(0,155)
			'sp.colG = 0
			'sp.colB=Rnd(0,255)
			ListAddLast sprites,sp
		Next
	End Function
	
	Function update_sprite(flag%,x%,y%) ' si flag = 0 : on affiche pas, sinon oui
		For Local sp:Tsprite = EachIn sprites
			sp.y#=sp.y#+sp.speed#
			sp.speed:+0.008
			If sp.y#>GraphicsHeight() Or sp.y>sp.origineY+ 15 + Rnd(5)
				sprites.remove(sp)
			EndIf
			'SetBlend lightblend
			SetAlpha 0.1
			SetColor 50,0,150
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
		If slowmo And c Mod (maxImages/10) = 0
			SetBlend alphablend
			Local csurmax# = c/maxImages
			SetAlpha(1-csurmax)
			'SetColor(0,255-255*csurdix,255-255*csurdix)
			SetColor (0,100,100)
			SetScale scale,scale
			 DrawImage image, coord.a, coord.b,frame 'on affiche une fois sur deux et seulement en slow mode
			SetScale 1,1
			'DrawText "ça devrait marcher", coord.a, coord.b
		EndIf
		c:+1
		If c=maxImages Then ListRemove(coordsList,coord)'; Print "test"
	Next
	SetAlpha 1
End Function


Function background()		
	Local Player:TPlayer = TPlayer(PlayerList.Last()) 
	SetColor 205,205,205
	If slowmo Then SetColor 150+Sin(mapY)*50,150+Sin(mapY)*50,150+Sin(mapY)*50'SetColor 0,0,155
	If pause Then SetColor 130,130,130
	'SetScale 0.8,0.8
	TileImage(bg1,200+mapx,mapY)
	'SetScale 2,2
	SetAlpha 0.5
	TileImage bg2,200+mapx-Player.x/5,mapY-player.y/5
	'SetScale 4,4
	'SetAlpha 0.3
	'SetBlend lightblend
	'TileImage bg1,mapX+200, mapy*5
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




