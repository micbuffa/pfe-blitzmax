
Type TGameObject
	Field x#,y#,xv,yv
End Type

Type TShip Extends TGameObject
	Field image:TImage
	Field lastCoords:TList = CreateList() 'les dernières coordonnées (utiles pour le motionblur)

End Type

Type TPlayer Extends TShip 

	Field InvincibleTimer ' timer d'invincibilité
	Field powerLevel% = 1 ' le niveau de puissance du vaisseau
	Field frame# = 0 ' la frame courante de l'animation du vaisseau
	Field scale# = 1.2 ' l'échelle de l'image du vaisseau
	Field bombs = 1 'on récupère une bombe quand on meurt/apparaît
	Field shootFreq = HIGH_FREQ 'par défaut on tire en haute fréquence
	Field slowMoStock = 50 ' on commence avec un tout petit peu de stock de ralenti
			
	Function Spawn(spawnx# = 400, spawny# = 400)
		Local Player:TPlayer = New TPlayer  'Create a new TPlayer Object
		Player.InvincibleTimer=MilliSecs()+3000 '3 Seconds
		If debugMode Then Player.InvincibleTimer = MilliSecs()+100000000000
		Player.x = spawnx'400 'center
		Player.y = spawny'400 'bottom
		Player.image = PlayerImage
		Player.xv = ImageWidth(Player.image)/5'width // pour l'instant le masque de collision est trop grand et il est fonction de ça donc on le divise
		Player.yv = ImageHeight(Player.image)/5 'height
		'Add the player with info above into the player list
   		Local coord:Coordinate = New Coordinate
		coord.a=Player.x ; coord.b = Player.y ' on garde une trace des derniers mouvements, pour le motionblur
		Player.lastCoords.addLast(coord)
		PlayerList.AddFirst(Player)  
	End Function
	
	Function getPlayer:TPlayer()
		Return TPlayer(PlayerList.Last()) 
	EndFunction
	
	Function hit(px#,py#) ' le joueur est touché
		'TExplosion.Make(px,py,100)
		Lives:-1
		If lives >1  
			SetChannelVolume channelMusic,0.4+lives/20 'la musique baisse avec les vies ...
		Else 'gameover
			
		EndIf 
		If Not soundOff Then PlaySound(soundExplosion,channelExplosion)			
		TPlayer.Spawn(px,py)
		For Local Ally:TAlly = EachIn AllyList
			Ally.mothership = TPlayer(PlayerList.Last()) 
		Next
	End Function
	
	
	Function Update()
		'This grabs the last object in the list, which happens to be the the player object
		'that was created.  That's you!
		Local Player:TPlayer = TPlayer.getPlayer()
                
		' Ralenti
		If KeyDown(KEY_LSHIFT) And Player.slowMoStock > 0
			player.slowMoStock:-1
			slowMo = True
			SetGameChannelsRate (0.5)
			SetAlpha 0.2
			SetColor 255,255,255
			DrawRect player.x - player.slowMoStock/20, player.y+5, player.slowMoStock/10,10
			TSprite.init_sprite(Player.x,Player.y+15,255,255,255,player.slowMoStock/10)
			'TSprite.update_sprite(1,Player.x,Player.y+15)
			SetAlpha 1
		Else
			slowMo = False
			setGameChannelsRate(1)
		EndIf
		
		
		'Animation de changement de fréquence de tir
		If Player.frame < 5 And player.shootFreq = LOW_FREQ 
			Player.frame:+(0.5) 
			SetColor 255,255,255
			SetBlend lightblend
			SetScale player.frame/2,player.frame/2
			DrawImage enemyBulletimageBF,player.x,player.y
			SetScale 1,1
			SetBlend alphablend
		EndIf 
		If Player.frame > 0 And player.shootFreq = HIGH_FREQ 
			Player.frame:-(0.5)
			SetColor 255,255,255
			SetBlend lightblend
			SetScale player.frame/2,player.frame/2
			DrawImage enemyBulletimageHF,player.x,player.y
			SetScale 1,1
			SetBlend alphablend
		EndIf
		
		'Tir basse fréquence
		If KeyDown(KEY_LCONTROL) And MilliSecs() > BulletTimer And player.shootFreq = LOW_FREQ
			TBulletBass.PlayerShoot(Player.x,Player.y)
		EndIf
		
		If KeyDown(KEY_LCONTROL) And player.shootFreq = LOW_FREQ
			'If Player.frame < 5 Then Player.frame:+(0.5) 
			SetChannelVolume channelBass,0.8
		Else 
			SetChannelVolume channelBass,0
		EndIf
		
		If KeyDown(KEY_LCONTROL) And player.shootFreq = HIGH_FREQ' And MilliSecs() > BulletTimer
			'PlaySound(soundTreble,channelTreble) 
			'TBulletTreble.PlayerShoot(Player.x,Player.y-4)
			
			'If Player.frame >0 Then Player.frame:-(0.5)
			
			If Player.powerLevel = 1
				TBulletTreble.PlayerLaser(2,0.4)'x,scale
			Else If Player.powerLevel = 2
				TBulletTreble.PlayerLaser(2,0.7)
			Else If Player.powerLevel = 3
				TBulletTreble.PlayerLaser(-15,0.4)
				TBulletTreble.PlayerLaser(19,0.4)
			Else If Player.powerLevel = 4
				TBulletTreble.PlayerLaser(-18,0.7)
				TBulletTreble.PlayerLaser(22,0.7)
			Else If Player.powerLevel = 5
				TBulletTreble.PlayerLaser(-21,0.4)
				TBulletTreble.PlayerLaser(25,0.4)
				TBulletTreble.PlayerLaser(4,1.2)
			EndIf

		EndIf
		
		'Tirs haute fréquence
		If KeyDown(KEY_LCONTROL) And player.shootFreq = HIGH_FREQ 
			SetChannelVolume channelTreble,0.4
		Else 
			SetChannelVolume channelTreble,0
		EndIf
		
		' Changement de fréquence de tir
		If KeyDown(KEY_LALT) And MilliSecs() > freqTimer
			player.shootFreq = 1 - player.shootFreq
			If player.shootFreq = HIGH_FREQ And Not soundOff Then PlaySound soundToHF
			If player.shootFreq = LOW_FREQ And Not soundOff Then PlaySound soundToBF
			freqTimer = MilliSecs()+400
			bulletTimer = MilliSecs()
		EndIf
		
		'Tir de bombe
		If KeyDown(KEY_SPACE) And Not TBomb.bombing And player.bombs > 0
			TBomb.playerShoot(player.x,player.y)
			If Not soundOff Then PlaySound soundBomb1
			player.bombs:-1
			player.invincibleTimer = MilliSecs() + 3000
		EndIf 

		'Déplacement du vaisseau
		If (KeyDown(KEY_LEFT) And Not (Player.x - ImageWidth(Player.image)/2 < leftedge)) 
			Player.x:-7
		EndIf
		If (KeyDown(KEY_RIGHT) And Not (Player.x + ImageWidth(Player.image)/2 > rightedge)) 
			Player.x:+7
		EndIf
		If (KeyDown(KEY_UP) And Not (Player.y - ImageHeight(Player.image)/2 < 0)) 
			Player.y:-5
		EndIf
		If (KeyDown(KEY_DOWN) And Not (Player.y + ImageHeight(Player.image)/2 > GraphicsHeight())) 
			Player.y:+5
		EndIf

		
		'Now lets draw the player
		motionBlur(Player.lastCoords,Player.image,Player.scale,Player.frame)
		SetAlpha 1
		SetColor 255,255,255 
		If MilliSecs() < Player.InvincibleTimer ' then he's still invincible
			Local appColor# = (player.invincibleTimer-MilliSecs()) * 255/3000
			SetScale 0.5,0.5
			SetColor appColor,appColor,appColor
			DrawImage shieldImage,Player.x,Player.y
			If MilliSecs() < Player.invincibletimer - 2500 Then firepaint(player.x,player.y,noteImage);mapx:+Rand(-20,20)
			SetColor 255 - appColor,255 - appColor,255 - appColor  'dégradé vers le blanc pour réapparaitre
		End If
		SetScale player.scale,player.scale
		DrawImage Player.image,Player.x,Player.y,Player.frame
		DrawImage Player.image,Player.x,Player.y,Player.frame
		SetScale 1,1
		'DrawRect player.x-player.xv/3,player.y-5,player.xv/1.5,11
		Local coord:Coordinate = New Coordinate
		coord.a=Player.x ; coord.b = Player.y ' on garde une trace des derniers mouvements, pour le motionblur
		Player.lastCoords.addFirst(coord)
	End Function
End Type

Type TAlly Extends TShip


	Field motherShip:TShip
	Field xDec%
	Field yDec%
	Field allyBulletTimer% = 0

	Function Spawn(spawnx% = 50, spawny% = -5)
		'For Local a% = 0 To 1
		Local Ally:TAlly = New TAlly
		Ally.motherShip = TPlayer(PlayerList.Last())
		Ally.xDec = spawnx '+ spawnx * (-2*a)
		Ally.yDec = spawny
		Ally.x = Ally.mothership.x + Ally.xDec 
		Ally.y = Ally.mothership.y + Ally.yDec
		Ally.xv = 10
		Ally.yv = 10
		Ally.image = ship2B
		AllyList.AddLast(Ally)
		'Next
	End Function
	
	Function Update()
		If kills >= 100/3 And CountList(allylist) < 1 Then TAlly.spawn(30,20);SetChannelVolume channelAlly1,0.5
		If kills >= 200/3 And CountList(allylist) < 2 Then TAlly.spawn(-30,20);SetChannelVolume channelAlly3,0.2
		If kills >= 300/3 And CountList(allylist) < 3 Then TAlly.spawn(-20,-5);SetChannelVolume channelAlly2,0.1
		If kills >= 400/3 And CountList(allylist) < 4 Then TAlly.spawn(-10,-30);SetChannelVolume channelAlly4,0.1
		If kills >= 500/3 And CountList(allylist) < 5 Then TAlly.spawn(10,-30)
		If kills >= 600/3 And CountList(allylist) < 6 Then TAlly.spawn(20,-5)
		
		Local player:TPlayer = TPlayer.getPlayer()
		For Local Ally:TAlly = EachIn AllyList
			'Ally.x = Ally.mothership.x + Ally.xDec + Sin(loopsCount*10)*4
			Ally.x = Ally.mothership.x + Sin(loopsCount*3 + Ally.xDec*2)*50
			Ally.y = Ally.mothership.y + Ally.yDec
			If MilliSecs() > Ally.allyBulletTimer 'tir allié
				If (KeyDown(KEY_LEFT) And Ally.xdec < 0) Or (KeyDown(KEY_RIGHT) And Ally.xdec > 0) 
					TBulletMid.AllyShoot(Ally.x,Ally.y,Ally.xdec) ' tir en diagonale dans le sens du mouvement
				Else 
					TBulletMid.AllyShoot(Ally.x,Ally.y,0) 'tir droit
				EndIf
				Ally.allyBulletTimer = MilliSecs()+500 'mise à jour du timer
			EndIf
			SetColor 255,255,255
			'SetScale 0.5,0.5
			If (Sin(loopsCount*3 + Ally.xDec*2) < Sin((loopsCount+1)*3 + Ally.xDec*2))
				Local scale# = 0.5 + (50 - Abs(player.x - ally.x))/120
				SetScale scale,scale
			Else 
				Local scale# = 0.5 - (50 - Abs(player.x-ally.x))/120
				SetScale scale,scale
			EndIf
			DrawImage Ally.image,Ally.x,Ally.y
			SetScale 1,1
			'DrawRect Ally.x,Ally.y,Ally.xv,Ally.yv
		Next
	End Function

End Type

Type TEnemy Extends TShip
	Field hitpoints
	'Field wave
	'Field startx
	Field speed#
	Field hSpeed#
	Field shipType '0 = rouge/haute fréquence, 1 = bleu/basse fréquence
	Field dir '0 = gauche, 1 = droite
	Field bonus:TBonus
	Field shoot:TShoot
	Field shootSequence:TShootSequence
	Field shootNumber = 0
	Field traj:TBSplines

	
	Function CreateEnemy:TEnemy(traj:TBSplines, speed, shipType, hitpoints, dir)
		Local Enemy:TEnemy = New TEnemy
		Enemy.traj = traj
		Enemy.speed = speed
		Enemy.hSpeed = 3-Enemy.speed
		Enemy.shipType = shipType
		If Rand(30) = 1 Then Enemy.bonus = New TBonusWidth ' provisoire
		If Rand(30) = 2 Then Enemy.bonus = New TBonusSlowMo ' provisoire
		If Rand(30) = 3 Then Enemy.bonus = New TBonusOneUp ' provisoire
		If Rand(30) = 4 Then Enemy.bonus = New TBonusBomb ' provisoire
		Enemy.hitpoints = hitpoints
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Return Enemy
	End Function 
	
	Function Spawn(traj:TBSplines, speed, shipType = LOW_FREQ, hitpoints = 1500, dir = 1)
		Local Enemy:TEnemy = TEnemy.CreateEnemy(traj,speed,shipType,hitpoints,dir)
		EnemyList.AddLast(Enemy)
	End Function
	
	Function SpecificSpawn(traj:TBSplines,speed,shipType,hitpoints,dir,bonus:TBonus,shoot:TShoot)
		Local Enemy:TEnemy = CreateEnemy(traj,speed,shipType,hitpoints,dir)
		Enemy.bonus = bonus
		Enemy.shoot = shoot
		EnemyList.AddLast(Enemy)
	End Function
	
	Function bossUpdate(enemy:TEnemy) 'présente pour les boss ... obligé de la mettre là aussi 
	End Function
	
	Function Update()
		For Local Enemy:TEnemy = EachIn EnemyList
			Local shootAngle=0
			
			If TBoss(enemy) Then enemy.bossUpdate(enemy)
			
			If loopsCount Mod (enemy.shoot.freq*2/Difficulty) = 0
           	If enemy.shootSequence = Null
					enemy.shoot.fire(Enemy.x,Enemy.y,shootAngle,0,Enemy.shipType,Enemy.shootNumber)
				Else
					enemy.shootSequence.fire(Enemy.x,Enemy.y,shootAngle,0,Enemy.shipType,Enemy.shootNumber)
					Enemy.shootNumber :+ 1
				End If

			EndIf 
			
			If enemy.hspeed > 0
				If enemy.dir = 0
					SetRotation -mapY
				Else 
					SetRotation mapY
				EndIf
			EndIf 				
				
			If slowmo 'slow down the ship if in slow mode
				Enemy.speed=Enemy.speed/2
				Enemy.hspeed=Enemy.hspeed/2
			EndIf
			
			Local realSpeed:Float = Enemy.speed/1000
			Local newpos:Int[] = Enemy.traj.update(realSpeed)		
									
			SetColor 255,255,255
			SetAlpha 0.5
			DrawImage Enemy.image,Enemy.x,Enemy.y
			'Enemy.wave:+5	
			Enemy.y = newpos[1]
			Enemy.x = newpos[0]
			If Enemy.dir = 0
				If slowmo 'motionblur version allégée pour les ennemis
					SetAlpha 0.2
					DrawImage Enemy.image,Enemy.x+9*Enemy.hSpeed,Enemy.y-9*Enemy.speed
					SetAlpha 0.3
					DrawImage Enemy.image,Enemy.x+6*Enemy.hSpeed,Enemy.y-6*Enemy.speed 
					SetAlpha 0.4
					DrawImage Enemy.image,Enemy.x+3*Enemy.hSpeed,Enemy.y-3*Enemy.speed
				End If
			EndIf
			If Enemy.dir = 1
				If slowmo 'motionblur version allégée pour les ennemis
					SetAlpha 0.2
					DrawImage Enemy.image,Enemy.x-9*Enemy.hSpeed,Enemy.y-9*Enemy.speed
					SetAlpha 0.3
					DrawImage Enemy.image,Enemy.x-6*Enemy.hSpeed,Enemy.y -6*Enemy.speed
					SetAlpha 0.4
					DrawImage Enemy.image,Enemy.x-3*Enemy.hSpeed,Enemy.y-3*Enemy.speed
				EndIf
			EndIf
			
			SetAlpha 1
			'DrawOval Enemy.x-32,Enemy.y-16,64,32
			'SetColor 255,Enemy.hitpoints,Enemy.hitpoints
			DrawImage(Enemy.image,Enemy.x,Enemy.y)
			If slowmo 'set the speed back
				Enemy.speed:*2
				Enemy.hspeed:*2
			EndIf
			If Enemy.x < leftedge Then Enemy.dir = 1-Enemy.dir '; Enemy.x = GraphicsHeight() + 64 
			If Enemy.x > rightedge Then Enemy.dir = 1-Enemy.dir 'Enemy.x = -70 ; 
			If Enemy.y > GraphicsHeight() + 60 Then EnemyList.remove(enemy)		
			If Enemy.y < -60 Then EnemyList.remove(enemy)
			If Enemy.hitpoints < 1 Then Enemy.explode
			Local player:TPlayer = TPlayer.getPlayer()
			
			'Test de collision entre le joueur et les ennemis
			If MilliSecs() > Player.InvincibleTimer ' then he's not invincible
				If enemy.x > Player.x-Player.xv/3 And enemy.x < Player.x+Player.xv/3 And enemy.y > Player.y-5 And enemy.y < Player.y+6
					Local px#=player.x; Local py#=player.y ; Local pw = player.powerLevel
					For Local pwup% = 1 To pw
						TBonusWidth.spawn(px-pwup*3,py-pwup*20)
					Next
					PlayerList.Remove(Player)
					TPlayer.hit(px,py) ' des fois le player spawn pas au bon endroit, c'est peut etre a cause de l'ordre des appels ici
				EndIf
			EndIf
			
			SetRotation 0
		Next
	End Function
	
	Method explode()
		kills:+1
		TPlayer.getPlayer().slowMoStock:+10
		TEnemyExplosion.Make(Self.x,Self.y)
		Rem For Local explosions = 1 To 10
			TExplosion.Make(Self.x+Rand(-32,32),Self.y+Rand(-16,16),Rand(10,50))
		Next 
		End Rem 
		If Not Self.Bonus = Null
			Self.Bonus.x = x  'That's carried over 
			Self.Bonus.y = y ' Also carried over
			Self.Bonus.xv = 20
			Self.Bonus.yv = 20
			Self.Bonus.dir = Rand(0,1)
			BonusList.AddLast(Bonus)
		EndIf
		EnemyList.Remove(Self)
	End Method
	
End Type

Type TExplosion Extends TGameObject
	Field Radius#
	Field MaxRadius#
	Field growSpeed
	Field image:TImage
	Field frame# = 0
	
	Function Make (x,y,MaxRadius# = 10, growSpeed = 1)
		Local Explosion:TExplosion = New TExplosion
		explosion.x = x
		explosion.y = y
		explosion.growSpeed = growSpeed
		explosion.MaxRadius = MaxRadius
		explosion.image = explosionImage
		explosionlist.AddLast (explosion)		
	End Function
	                         
	Function Update()
		For Local explosion:TExplosion = EachIn explosionlist
			If TenemyExplosion(explosion)
				DrawImage explosion.image,explosion.x,explosion.y, explosion.frame
				explosion.frame:+0.3
				If explosion.frame >11 Then explosionList.remove(explosion)
			Else
				explosion.Radius:+ explosion.growSpeed
				If explosion.Radius >= explosion.MaxRadius 
	           	explosionlist.Remove(explosion)
	           EndIf
				SetBlend lightblend
				SetColor 255,Rnd(255),0
				'DrawOval explosion.x-explosion.Radius/2,explosion.y-explosion.Radius/2,explosion.Radius,explosion.Radius
				SetScale explosion.radius/130,explosion.radius/130
				SetRotation Rand(360)
				DrawImage explosion.image,explosion.x,explosion.y
				SetScale 1,1
				SetRotation 0
				SetBlend alphablend
			EndIf
		Next
	End Function
End Type

Type TEnemyExplosion Extends TExplosion

	Function Make(x,y,MaxRadius# = 10, growSpeed = 1)
		Local Explosion:TEnemyExplosion = New TEnemyExplosion
		explosion.x = x
		explosion.y = y+60 ' à cause de l'image de l'explosion qui apparaît un peu haut apparemment
		If Rand (1,2) = 1 
			explosion.image = explosionAnimImage
		Else 
			explosion.image = explosionAnimImage2
		EndIf
		explosionlist.AddLast (explosion)		
	End Function

End Type 


Type TBullet Extends TGameObject
	Field Owner ' specify who shot the bullet
	Field image:TImage 'image du projectile
	'Field animation:TAnimation
	Field scale# ' échelle de l'image
	Field angle% = 0
	Field bouncing = False ' est-ce que les projectiles rebondissent ?
	Field maxY=0
	Field dec
	Field shoot:TShoot
	Field freqType
	Field speed# = 4
	Field lastCoords:TList = CreateList() ' dernières coordonnées pour le motionblur
	
	Function EnemyShoot(x,y,angle#=0,freqType)
       Local Bullet:TBullet = New TBullet
       Bullet.x = x  'Carried over from the function call, which was enemy.x
       bullet.y = y  'Also carried over, but adjusted to be below the firing enemy
       bullet.angle=angle
		bullet.scale = 0.4
       Bullet.Owner = Enemy 'The bullet collision detection will know whose is whose
		bullet.freqtype = freqType
		If freqType = LOW_FREQ
			bullet.image = EnemyBulletImageBF
		Else 
			bullet.image = EnemyBulletImageHF
		EndIf
		Local coord:Coordinate = New Coordinate
		coord.a=bullet.x ; coord.b = bullet.y ' on garde une trace des derniers mouvements, pour le motionblur
		bullet.lastCoords.addFirst(coord)
       EnemyBulletList.AddLast(Bullet)
		
'                Local shoot:TshootSimple = New TshootSimple
'                bullet.shoot=shoot         
    End Function

	
	Function computeAngle(bullet:TBullet,coeffX#=1,coeffY#=1)
		If bullet.bouncing
			If bullet.x <= leftedge Then bullet.angle = 360-bullet.angle  
			If bullet.x >= rightedge Then bullet.angle = 360-bullet.angle
		EndIf
		bullet.x :+ Sin(bullet.angle)*coeffX
		bullet.y :+ Cos(bullet.angle)*coeffY
		SetRotation bullet.angle
	End Function

	Function Update()
	
		Local Player:TPlayer = TPlayer(PlayerList.Last()) 
		' Gestion de l'angle de tir
		
		TBomb.Update() 'l'update des bombes se fait dans sa classe
		For Local Bullet:TBullet = EachIn PlayerBulletList			
			
			  
			If tbulletbass(bullet) ' tir par vagues bleues
				bullet.y:-bullet.speed
				computeAngle(bullet)
				SetColor 255,255,255
				bullet.scale:+ 0.005*(Player.powerLevel-1)
				SetScale bullet.scale,1
				DrawImage bullet.image,bullet.x,bullet.y
				SetScale 1,1
			Else If tbullettreble(bullet) ' tir laser rouge
				computeAngle(bullet)
				bullet.x = Player.x + bullet.dec
				bullet.y:-bullet.speed
				SetBlend alphablend
				SetScale bullet.scale,1
				SetColor 255,255,255
				If KeyDown(key_down) Then bullet.y:+5 'pour coller au joueur, sinon ça fait des trous dans le laser
				If KeyDown(key_up) Then bullet.y:-5 'pour coller au joueur, sinon ça fait des patés dans le laser
				DrawImage bullet.image,bullet.x,bullet.y,(mapY/24 Mod 14)
				Local laserColor = Sin(bullet.y+mapY*5)*255
				SetColor laserColor,laserColor,laserColor
				SetScale 1,1
			Else If tbulletmid(bullet)
				'computeAngle(bullet,15,1)
				computeAngle(bullet,bullet.speed,-bullet.speed)
				'bullet.y :- bullet.speed
				If bullet.speed < 10 
					bullet.speed :+ Exp(bullet.speed)/300
				Else If bullet.speed > 10
					bullet.speed = 10
				EndIf
				SetColor 255,0,0
				SetScale 0.08,0.5
				DrawImage bulletbassImage,bullet.x,bullet.y
				SetScale 1,1
			EndIf
			
			If bullet.y < -12 Then PlayerBulletList.Remove(Bullet) 'si le projectile sort de l'écran on le supprime
			For Local Enemy:TEnemy = EachIn EnemyList
				
				'Local enemy.xv = ImageWidth(Enemy.image)/2
				'Local enemy.yv = ImageHeight(Enemy.image)/2
				If tbulletbass(bullet)
					Local bulletW# = ImageWidth(bullet.image)/2*bullet.scale
					Local bulletH# = ImageHeight(bullet.image)/2*bullet.scale
					If bullet.x + bulletW > Enemy.x-enemy.xv And bullet.x - bulletW < Enemy.x+enemy.xv And bullet.y > Enemy.y-enemy.yv And bullet.y < Enemy.y+enemy.yv
						If enemy.shipType = HIGH_FREQ
							Enemy.hitpoints:-Player.powerLevel*5
						Else If enemy.shipType = LOW_FREQ
							Enemy.hitpoints:-Player.powerLevel*20+60
						EndIf
						
						'PlayerBulletList.Remove(bullet)
						'TExplosion.Make(bullet.x,bullet.y,5)
						reverseFocusFire(ligthPartBlueImg,bullet,2,5,30,[0,0,255])
					EndIf
				Else If tbulletmid(bullet)
					If bullet.x > Enemy.x-enemy.xv And bullet.x < Enemy.x+enemy.xv And bullet.y > Enemy.y-enemy.yv And bullet.y < Enemy.y+enemy.yv
						Enemy.hitpoints:-100
						PlayerBulletList.Remove(bullet)
						TExplosion.Make(bullet.x,bullet.y,30)
					EndIf
				Else If tbullettreble(bullet)
					'If bullet.x > Enemy.x-enemy.xv And bullet.x < Enemy.x+enemy.xv And bullet.y > Enemy.y-16 And bullet.y < Enemy.y+16
					If bullet.x > Enemy.x-enemy.xv And bullet.x < Enemy.x+enemy.xv And bullet.y > Enemy.y-enemy.yv*2 And bullet.y < Enemy.y+enemy.yv*2
						If enemy.shipType = HIGH_FREQ
							Enemy.hitpoints:-Player.powerLevel*10+15
						Else If enemy.shipType = LOW_FREQ
							Enemy.hitpoints:-Player.powerLevel
						EndIf
						'TExplosion.Make(bullet.x-1,bullet.y-7,10)
						focusFire(ligthPartPurpleImg,bullet,4,10,30,[255,Rand(0,255),0])
						PlayerBulletList.Remove(bullet)
						
						
					EndIf
				Else If tBomb(bullet)
					If bullet.y < enemy.y Then enemy.hitpoints:-1000
				EndIf
			Next
		Next
		

		For Local Bullet:TBullet = EachIn EnemyBulletList			
			Local coord:Coordinate = New Coordinate
			coord.a=bullet.x ; coord.b = bullet.y ' on garde une trace des derniers mouvements, pour le motionblur
			bullet.lastCoords.addFirst(coord)
			If Not slowmo
				computeAngle(bullet,-bullet.speed,bullet.speed)
			Else 
				computeAngle(bullet,-bullet.speed/2,bullet.speed/2)
				motionBlur(bullet.lastCoords,bullet.image,bullet.scale,0,5)
			EndIf
			SetColor 255,255,255
			SetScale bullet.scale,bullet.scale
           DrawImage bullet.image,bullet.x,bullet.y
			SetScale 1,1

			SetBlend alphablend
			If bullet.y > GraphicsHeight() + 10 Or bullet.y < 0 Then EnemyBulletList.Remove(Bullet)
			If bullet.x < leftedge Or bullet.x > rightedge Then EnemyBulletList.Remove(Bullet)  
			
         	If MilliSecs() > Player.InvincibleTimer ' then he's not invincible
				If bullet.x > Player.x-Player.xv/3 And bullet.x < Player.x+Player.xv/3 And bullet.y > Player.y-5 And bullet.y < Player.y+6
					EnemyBulletList.Remove(bullet)
					
					Local px=player.x; Local py=player.y
					Local pw = player.powerLevel
					For Local pwup% = 1 To pw-1
						TBonusWidth.spawn(px-pwup*3,py-pwup*3)
					Next
					PlayerList.Remove(Player)
					TPlayer.hit(px,py)
				EndIf
			EndIf
		Next
		
	SetRotation 0
	End Function
End Type


Type TBulletBass Extends TBullet
	
	Function PlayerShoot(x,y)	
		Local Bullet:TBulletBass = New TBulletBass
		Bullet.x = x  'That's carried over from the function call, was player.x
		Bullet.y = y - 34 ' Also carried over, but adjusted to be above the player
		Bullet.Owner = Player 'The bullet collision detection will know whose is whose
		Bullet.image = BulletBassImage
		Bullet.scale = 0.3
		Bullet.speed = 8
		PlayerBulletList.AddLast(Bullet)
		BulletTimer = MilliSecs()+400
	End Function
	
	Function AllyShoot(x,y,angle#=0)
		'PlaySound(soundBass,channelBass) 
		Local Bullet:TBulletBass = New TBulletBass
		Bullet.x = x  'That's carried over from the function call, was player.x
		Bullet.y = y - 10 ' Also carried over, but adjusted to be above the player
		Bullet.Owner = Ally 'The bullet collision detection will know whose is whose
		Bullet.angle = angle
		PlayerBulletList.AddLast(Bullet)
		'AllyBulletTimer = MilliSecs()+200
	End Function

End Type

Type TBulletTreble Extends TBullet
	
	Function PlayerLaser(dec#,scale#)
		Local Player:TPlayer = TPlayer(PlayerList.Last()) 'récupération du joueur
		SetScale scale,0.8 'l'échelle du laser
		SetColor 255,255,255 'sa couleur
		DrawImage BulletTrebleBaseImage,Player.x+dec+(scale*2),Player.y-56,(mapY/24 Mod 14) ' à virer
		'Local laserColor = Cos(mapY*5)*255 'la couleur de la deuxième image du laser
		'SetColor laserColor,laserColor,laserColor
		'SetBlend lightblend
		'DrawImage BulletTrebleBaseImage2,Player.x+dec,Player.y-20
		'SetColor 255,255,255
		'SetBlend alphablend
		SetScale 1,1
		TBulletTreble.PlayerShoot(Player.x,Player.y-23,0,dec,scale)
		TBulletTreble.PlayerShoot(Player.x,Player.y-38,0,dec,scale)
		TBulletTreble.PlayerShoot(Player.x,Player.y-53,0,dec,scale) 
	EndFunction

	Function PlayerShoot(x,y,angle#=0, dec#=0, scale#=1)	
		Local Bullet:TBulletTreble = New TBulletTreble
		Bullet.x = x  'That's carried over from the function call, was player.x
		Bullet.y = y - 33 ' Also carried over, but adjusted to be above the player
		Bullet.Owner = Player 'The bullet collision detection will know whose is whose
		Bullet.image = bulletTrebleImage
		'Bullet.animation = TAnimation.make()
		Bullet.angle = angle
		Bullet.dec = dec
		Bullet.speed = 46
		Bullet.scale = scale
		PlayerBulletList.AddLast(Bullet)
		BulletTimer = MilliSecs()+400
	End Function
	
	
	Function AllyShoot(x,y,angle#=0, dec#=0)
		'If Not ChannelPlaying(channelTreble) Then  PlaySound(soundTreble,channelTreble) 
		Local Bullet:TBulletTreble = New TBulletTreble
		Bullet.x = x  'That's carried over from the function call, was player.x
		Bullet.y = y - 10 ' Also carried over, but adjusted to be above the player
		Bullet.Owner = Ally 'The bullet collision detection will know whose is whose
		Bullet.angle = angle
		Bullet.dec = dec
		Bullet.image = bulletTrebleImage
		PlayerBulletList.AddLast(Bullet)
		'AllyBulletTimer = MilliSecs()+50
	End Function
	
End Type

Type TBulletMid Extends TBullet
	Function PlayerShoot(x,y)	
		Local Bullet:TBulletMid = New TBulletMid
		Bullet.x = x  'That's carried over from the function call, was player.x
		Bullet.y = y - 34 ' Also carried over, but adjusted to be above the player
		Bullet.Owner = Player 'The bullet collision detection will know whose is whose
		
		PlayerBulletList.AddLast(Bullet)
		BulletTimer = MilliSecs()+200
	End Function
	
	Function AllyShoot(x,y,angle#=0, dec#=0)
		'PlaySound(soundTreble,channelMid) 
		Local Bullet:TBulletMid = New TBulletMid
		Bullet.x = x  'That's carried over from the function call, was player.x
		Bullet.y = y - 10 ' Also carried over, but adjusted to be above the player
		Bullet.Owner = Ally 'The bullet collision detection will know whose is whose
		Bullet.angle = angle
		Bullet.speed = 1
		Bullet.dec = dec
		Bullet.bouncing = True
		PlayerBulletList.AddLast(Bullet)
		'AllyBulletTimer = MilliSecs()+200
	End Function

End Type


Type TBonus Extends TGameObject
	Field xv = 30 'override
	Field yv = 30 'override
	Field speed# = 1
	Field dir%  '0 = gauche, 1 = droite
	Field lifeTime% = 500 'tours de boucle
	
	Function spawn(x%,y%) 'Abstract
	End Function
	
	Function update()
		TBonusSlowMo.update()
		TBonusOneUp.update()
		TBonusWidth.update()
		TBonusBomb.update()
		Local Player:TPlayer = TPlayer.getPlayer()
		For Local bonus:TBonus = EachIn bonusList
			If slowmo Then bonus.speed :/ 2
			
			Rem
			bonus.y:+bonus.speed
			If bonus.dir = 0 Then bonus.x:-bonus.speed
			If bonus.dir = 1 Then bonus.x:+bonus.speed
			If bonus.x < leftedge Then bonus.dir = 1-bonus.dir ; bonus.x = leftEdge '; Enemy.x = GraphicsHeight() + 64 
			If bonus.x > rightedge Then bonus.dir = 1-bonus.dir ; bonus.x = rightEdge 'Enemy.x = -70 ; 
			If bonus.y > GraphicsHeight() + 60 Then bonus.y = -60	
			End Rem
			Local xdiff# = player.x - bonus.x; Local ydiff# = player.y-bonus.y
			If Abs(xdiff) > 3 Then bonus.x :+ 2/(Abs(xdiff)+Abs(ydiff)) * xdiff*bonus.speed'*bonus.speed/50
			If Abs(ydiff) > 3 Then bonus.y :+ 2/(Abs(xdiff)+Abs(ydiff)) * ydiff*bonus.speed'*bonus.speed/50	
			If slowmo Then bonus.speed :* 2
			bonus.lifeTime:-1
			If bonus.lifeTime <= 0 Then bonusList.remove(bonus)
		Next
	End Function	
	
End Type

Type TBonusSlowMo Extends TBonus
	
	Function spawn(x% = 200, y%=200)
			Local Bonus:TBonusSlowMo = New TBonusSlowMo
			Bonus.x = x + Rand(0,200)  'That's carried over 
			Bonus.y = y ' Also carried over
			'Bonus.xv = 20
			'Bonus.yv = 20
			Bonus.dir = Rand(0,1)
			BonusList.AddLast(Bonus)
	End Function 
	
	Function update()
		'If MilliSecs() > slowMoTimer 
		'	slowMo = False
			
		'EndIf
		Local Player:TPlayer = TPlayer(PlayerList.Last()) 
		Local bonusCount% = 0
		For Local bonus:TBonusSlowMo = EachIn BonusList
			Local c# = bonus.lifeTime*255/500
			SetColor c,c,c
			Local bonusFrame# = mapy/(mapSpeed*3) Mod 15
			If bonusFrame >7 Then bonusFrame = 15 - bonusFrame
			DrawImage (bonusSlowImage,bonus.x,bonus.y,bonusFrame)  
			If bonus.x > Player.x-Player.xv*2 And bonus.x < Player.x+Player.xv*2 And bonus.y > Player.y-player.yv*2 And bonus.y < Player.y+player.yv*2
				BonusList.Remove(bonus)
				player.slowMoStock:+100
			EndIf 
			bonuscount:+1
		Next
		'If Kills Mod 15 = 1 And bonusCount = 0 Then TBonusSlowMo.spawn()
	End Function
	
End Type

Type TBonusOneUp Extends TBonus
	
	Function spawn(x% = 200, y%=200)
			Local Bonus:TBonusOneUp = New TBonusOneUp
			Bonus.x = x + Rand(0,200)  'That's carried over 
			Bonus.y = y ' Also carried over
			'Bonus.xv = 20
			'Bonus.yv = 20
			Bonus.dir = Rand(0,1)
			BonusList.AddLast(Bonus)
	End Function 
	
	Function update()
		
		Local Player:TPlayer = TPlayer(PlayerList.Last()) 
		Local bonusCount% = 0
		For Local bonus:TBonusOneUp = EachIn BonusList
			Local c# =bonus.lifeTime*255/500
			SetColor c,c,c
			Local bonusFrame# = mapy/(mapSpeed*3) Mod 15
			If bonusFrame >7 Then bonusFrame = 15 - bonusFrame
			DrawImage (bonusLifeImage,bonus.x,bonus.y,bonusFrame)
			If bonus.x > Player.x-Player.xv*2 And bonus.x < Player.x+Player.xv*2 And bonus.y > Player.y-player.yv*2 And bonus.y < Player.y+player.yv*2
				BonusList.Remove(bonus)
				If Lives < 5 Then lives:+1
			EndIf 
			bonuscount:+1
		Next
		'If Kills Mod 25 = 24 And bonusCount = 0 Then TBonusOneUp.spawn()
	End Function
	
End Type

Type TBonusWidth Extends TBonus

	Function spawn(x% = 200, y%=200)
			Local Bonus:TBonusWidth = New TBonusWidth
			Bonus.x = x + Rand(0,200)  'That's carried over 
			Bonus.y = y ' Also carried over
			'Bonus.xv = 20
			'Bonus.yv = 20
			Bonus.dir = Rand(0,1)
			BonusList.AddLast(Bonus)
	End Function 
	
	Function update()
		
		Local Player:TPlayer = TPlayer.getPlayer()
		Local bonusCount% = 0
		For Local bonus:TBonusWidth = EachIn BonusList
			Local c# = bonus.lifeTime*255/500
			SetColor c,c,c
			Local bonusFrame# = mapy/(mapSpeed*3) Mod 15
			If bonusFrame >7 Then bonusFrame = 15 - bonusFrame
			DrawImage (bonusWidthImage,bonus.x,bonus.y,bonusFrame)  
			'DrawRect Bonus.x,Bonus.y,Bonus.xv,Bonus.yv
			If bonus.x > Player.x-Player.xv*2 And bonus.x < Player.x+Player.xv*2 And bonus.y > Player.y-player.yv*2 And bonus.y < Player.y+player.yv*2
				BonusList.Remove(bonus)
				If Player.powerLevel < maxPowerLevel 
					Player.powerLevel:+1
					reverseFocusFire(ligthPartBlueImg,player,5,1,30,[0,0,255]);
					reverseFocusFire(ligthPartPurpleImg,player,5,1,30,[255,0,0])
				EndIf
			EndIf 
			bonuscount:+1
		Next
		'If Kills Mod 20 = 10  And bonusCount = 0 Then TBonusWidth.spawn()
	End Function

End Type


Type TBonusBomb Extends TBonus

	Function spawn(x% = 200, y%=200)
			Local Bonus:TBonusBomb = New TBonusBomb
			Bonus.x = x + Rand(0,200)  'That's carried over 
			Bonus.y = y ' Also carried over
			'Bonus.xv = 20
			'Bonus.yv = 20
			Bonus.dir = Rand(0,1)
			BonusList.AddLast(Bonus)
	End Function 
	
	Function update()
		
		Local Player:TPlayer = TPlayer.getPlayer()
		Local bonusCount% = 0
		For Local bonus:TBonusBomb= EachIn BonusList
			Local c# = bonus.lifeTime*255/500
			SetColor c,c,c
			Local bonusFrame# = mapy/(mapSpeed*3) Mod 15
			If bonusFrame >7 Then bonusFrame = 15 - bonusFrame
			DrawImage (bonusBombImage,bonus.x,bonus.y,bonusFrame)  
			If bonus.x > Player.x-Player.xv*2 And bonus.x < Player.x+Player.xv*2 And bonus.y > Player.y-player.yv*2 And bonus.y < Player.y+player.yv*2
				BonusList.Remove(bonus)
				If Player.bombs < maxBombs Then Player.bombs:+1
			EndIf 
			bonuscount:+1
		Next
		'If Kills Mod 30 = 3  And bonusCount = 0 Then TBonusBomb.spawn()
	End Function

End Type


Type TBomb Extends TBullet
	Global bombing = False

	Function playerShoot(x,y)
		Local bomb:TBomb = New TBomb
		bomb.x = x
		bomb.y = y
		bomb.speed = 9
		PlayerBulletList.addLast(bomb)
		TBomb.bombing=True
	End Function

	Function update() 'décalage de la gestion de la bomb dans sa propre classe, peut-être bien à faire pour toutes les bullets
		For Local bomb:TBomb = EachIn PlayerBulletList		
			bomb.y:-bomb.speed
			firepaint(bomb.x,bomb.y-50,cleDeSolImage,1)
			firepaint(bomb.x+20,bomb.y,cleDeFaImage,1)
			firepaint(bomb.x-20,bomb.y,cleDutImage,1)
			If bomb.y<-1 Then playerbulletlist.remove(bomb); TBomb.bombing = False
			For Local Bullet:TBullet = EachIn EnemyBulletList
				If bomb.y < bullet.y Then enemyBulletList.remove(bullet)
			Next
		Next
	End Function

End Type





'todo : régler la duplication de code des bonus (voir l'utilisation de super) // fait à moitié
'faire les collisions avec collideimage parce que les tests ont l'air un peu foireux // pour l'instant ça va en fait
'mettre les bonus dans les ennemis et pas aléatoirement // fait à moitié


'vérifier si y a le test pour les balles qui partent vers le haut

'prochaine étape :  les différents types d'ennemis // m'a l'air ok

'on voit pas bien la jauge de ralenti : en rajouter une petite qui suit le joueur ? - fait, à voir si c'est mieux ou pas
'motionblur pour les tirs ennemis marche plus ? // ok
'toujours ce bug à la con une fois sur dix : quand on meurt, on réapparaît pas au bon endroit ... aucune idée d'où ça vient
'j'ai essayé de mettre des floats partout au lieu de int pour ça, on va voir si ça le refait ou pas
