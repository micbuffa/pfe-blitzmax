AutoMidHandle(True)

Incbin "images/enemyRed1.png"
Incbin "images/enemyRed2.png"
Incbin "images/enemyRed3.png"
Incbin "images/enemyRed4.png"
Incbin "images/enemyRed7.png"
Incbin "images/enemyRed6.png"
Incbin "images/enemyRed8.png"
Incbin "images/enemyBlue1.png"

Incbin "images/enemyRed3boss.png"
Incbin "images/losangeDouble.png"
Incbin "images/enemyBlue2.png"
Incbin "images/enemyBlue3.png"
Incbin "images/enemyBlue4.png"
Incbin "images/enemyBlue6.png"
Incbin "images/enemyBlue7.png"


Incbin "images/bossBlue1.png"
Incbin "images/boss1tribal.png"
Incbin "images/bossMultiCenterRed.png"
Incbin "images/bossMultiCloseLeftRed.png"
Incbin "images/bossMultiCloseRightRed.png"
Incbin "images/bossMultiFarLeftBlue.png"
Incbin "images/bossMultiFarRightBlue.png"
Incbin "images/enemyBlue5.png"



Global EnemyRed21:TImage = LoadImage("incbin::images/enemyRed8.png")
Global EnemyRed22:TImage = LoadImage("incbin::images/enemyRed1.png")
Global EnemyRed23:TImage = LoadImage("incbin::images/enemyRed6.png")
Global EnemyRed24:TImage = LoadImage("incbin::images/enemyRed3boss.png")
Global EnemyRed25:TImage = LoadImage("incbin::images/enemyRed4.png")
Global EnemyRed27:TImage = LoadImage("incbin::images/enemyRed7.png")

Global EnemyBlue21:TImage = LoadImage("incbin::images/enemyBlue1.png")
Global EnemyBlue22:TImage = LoadImage("incbin::images/enemyBlue6.png")
Global EnemyBlue23:TImage = LoadImage("incbin::images/enemyBlue2.png")
Global EnemyBlue24:TImage = LoadImage("incbin::images/enemyBlue4.png")
Global EnemyBlue25:TImage = LoadImage("incbin::images/enemyBlue5.png")
Global EnemyBlue27:TImage = LoadImage("incbin::images/enemyBlue7.png")
Global EnemyBlue26:TImage = LoadImage("incbin::images/enemyBlue3.png")


Global Boss21:TImage = LoadImage("incbin::images/bossBlue1.png")
Global Boss22:TImage = LoadImage("incbin::images/boss1tribal.png")
Global BossMultiC2:TImage = LoadImage("incbin::images/bossMultiCenterRed.png")
Global BossMultiCL2:TImage = LoadImage("incbin::images/bossMultiCloseLeftRed.png")
Global BossMultiCR2:TImage = LoadImage("incbin::images/bossMultiCloseRightRed.png")
Global BossMultiFL2:TImage = LoadImage("incbin::images/bossMultiFarLeftBlue.png")
Global BossMultiFR2:TImage = LoadImage("incbin::images/bossMultiFarRightBlue.png")


Type TEnemyBlue21 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue21(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue21 = New TEnemyBlue21
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		If Rand(30) = 2 Then Enemy.bonus = New TBonusSlowMo ' provisoire
		Enemy.image = EnemyBlue21
		Enemy.shoot = New TShootSimple3
		Enemy.shoot.setFreq(50)
		Enemy.hitpoints = 200
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue22 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue22(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue22 = New TEnemyBlue22
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusOneUp ' toujours un bonus de vie ?
		Enemy.image = EnemyBlue22
		Enemy.shoot = New TShootSimple5
		If Enemy.x < GraphicsWidth()/2 
			Enemy.shootSequence = New TShootSeqRafaleD 
		Else 
			Enemy.shootSequence = New TShootSeqRafaleG	 
		EndIf
		Enemy.shoot.setFreq(20)
		Enemy.hitpoints = 10000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue23 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue23(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue23 = New TEnemyBlue23
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 2
		Enemy.shipType = LOW_FREQ
		'Enemy.bonus = New TBonusBomb ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue27
		Enemy.shoot = New TShootArroz4 
		Enemy.shoot.setFreq(3)
		Enemy.hitpoints = 1000
		'Enemy.shootSequence = New TShootSeqLaser1
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue24 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue24(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue24 = New TEnemyBlue24
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 2
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusBomb ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue24
		Enemy.shoot = New TShootSimple4
		Enemy.shoot.setFreq(50)
		Enemy.hitpoints = 30000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue25 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue25(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue25= New TEnemyBlue25
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.image = EnemyBlue25
		Enemy.shoot = New TShootCross 
		Enemy.shoot.setFreq(40)
		Enemy.hitpoints = 1000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue26 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue26(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue26= New TEnemyBlue26
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 0.15
		Enemy.shipType = LOW_FREQ
		Enemy.image = EnemyBlue26
		Enemy.shoot = New TShootCross2
		Enemy.shoot.setFreq(2)
		Enemy.hitpoints = 5000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type


Type TEnemyRed21 Extends TEnemy

' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed21(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed21 = New TEnemyRed21
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		'If Rand(30) = 1 Then Enemy.bonus = New TBonusWidth ' provisoire
		If Rand(30) = 2 Then Enemy.bonus = New TBonusSlowMo ' provisoire
		'If Rand(30) = 3 Then Enemy.bonus = New TBonusOneUp ' provisoire
		'If Rand(30) = 4 Then Enemy.bonus = New TBonusBomb ' provisoire
		Enemy.image = EnemyRed21
		Enemy.shoot = New TShootSimple2
		Enemy.shoot.setFreq(50)
		Enemy.hitpoints = 200
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyRed22 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed22(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed22 = New TEnemyRed22
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 3
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.image = EnemyRed22
		Enemy.shoot = New TShootArroz4
		Enemy.shoot.setFreq(30) 
		Enemy.shootSequence = New TShootSeqCloud 
		Enemy.hitpoints = 500
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed23 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed23(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed23 = New TEnemyRed23
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 15
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.image = EnemyRed23
		Enemy.shoot = New TshootSimple0
		Enemy.shoot.setFreq(1) 
		Enemy.hitpoints = 1000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed24 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed24(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed24 = New TEnemyRed24
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 8
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = EnemyRed24
		Enemy.shoot = New TshootSimple0
		Enemy.shoot.setFreq(10) 
		Enemy.shootSequence = New TshootSeqLaser1

		Enemy.hitpoints = 20000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed25 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed25(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed25 = New TEnemyRed25
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		'Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = EnemyRed27
		Enemy.shoot = New TshootSimple0
		Enemy.shoot.setFreq(30) 
		Enemy.shootSequence = New TshootSeqPyramid
		Enemy.hitpoints = 10000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type



Type TBoss21 Extends TBoss

Function spawnDefault:TBoss21(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBoss21 = New TBoss21
		Enemy.traj = traj
		Enemy.x = 400'traj.curKubSplineX.ValueInt(1)
		Enemy.y = -200'traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = Boss21
		Enemy.shoot = New TShootCross
		Enemy.shoot.setFreq(60) 
		Enemy.hitpoints = 400000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

Function bossUpdate(boss:TEnemy) 

	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)	
	boss.y = newpos[1]
	boss.x = newpos[0]
	
	'1ère transformation
	If boss.hitpoints < 300000 And boss.speed = 1
		Local currentX% = boss.x ; Local currentY% = boss.y
		Local traj:TBSplines = TBSplines.Create([1,2,3,4,5],[currentX,200,450,550,currentX], [currentY,150,50,150,currentY])
		boss.traj = traj
		boss.shoot = New TShootArroz4
		boss.speed = 3
		boss.shoot.setFreq(10)
		channelsRate = 1.2 ' on augmente la vitesse de la musique
		TBonusWidth.spawn(boss.x,boss.y) ' on donne un bonus de puissance
	EndIf
	'2ème transformation
	If boss.hitpoints < 80000 And boss.speed = 3
		boss.shoot = New TShootCircle
		boss.shoot.setFreq(15)
		boss.speed = 8
		channelsRate = 1.5 ' on augmente la vitesse de la musique
	EndIf
	

	'Tir d'ennemis sur le joueur
	Rem 
	If mapY Mod boss.shoot.freq * 1500 = 0
		Local player:TPlayer = TPlayer.getPlayer()
		Local currentX% = boss.x ; Local currentY% = boss.y
		Local targetX% = player.x ; Local targetY% = player.y 
		Local traj:TBSplines = TBSplines.Create([1,2,3],[currentX,targetX,400], [currentY,targetY,700])
		TEnemyRed1.spawnDefault(traj)
	EndIf
	EndRem
End Function


End Type

Type TBoss22 Extends TBoss

Function spawnDefault:TBoss22(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBoss22 = New TBoss22
		Enemy.traj = traj
		Enemy.x = 400'traj.curKubSplineX.ValueInt(1)
		Enemy.y = -200'traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 3
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = Boss22
		Enemy.shoot = New TShootSimple0
		Enemy.shoot.setFreq(20) 
		Enemy.hitpoints = 2000000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
End Function

Function bossUpdate(boss:TEnemy) 

	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)	
	boss.y = newpos[1]
	boss.x = newpos[0]
	
	'1ère transformation
	If boss.hitpoints < 1200000 And boss.speed = 3
		Local currentX% = boss.x ; Local currentY% = boss.y
		Local traj:TBSplines = TBSplines.Create([1,2,3,4,5],[currentX,200,450,550,currentX], [currentY,400,100,400,currentY])
		boss.traj = traj
		boss.shoot = New TShootSimple0
		boss.shootSequence = New TShootSeqBalaiG2 
		boss.speed = 4
		boss.shoot.setFreq(40)
		channelsRate = 1.2 ' on augmente la vitesse de la musique
	EndIf
	'2ème transformation
	If boss.hitpoints < 600000 And boss.speed = 5
		boss.shoot = New TShootCircle
		boss.shoot.setFreq(60)
		boss.speed = 7
		channelsRate = 1.5 ' on augmente la vitesse de la musique
	EndIf
	
	'Tir d'ennemis sur le joueur
	If loopsCount Mod boss.shoot.freq * 1000 = 0
		Local player:TPlayer = TPlayer.getPlayer()
		Local currentX% = boss.x ; Local currentY% = boss.y
		Local targetX% = player.x ; Local targetY% = player.y 
		Local traj:TBSplines = TBSplines.Create([1,2,3],[currentX,targetX,400], [currentY,targetY,700])
		TEnemyRed23.spawnDefault(traj)
	EndIf

End Function


End Type



Type TBossMultiC2 Extends TBoss

Function spawnDefault:TBossMultiC2(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiC2= New TBossMultiC2
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = BossMultiC2
		Enemy.shoot = New TShootSimple0
		Enemy.shoot.setFreq(30) 
		Enemy.shootSequence = New TShootSeqCloud
		Enemy.hitpoints = 1500000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		' Spawn des adds
		TBossMultiCL2.spawnDefault(traj)
		TBossMultiCR2.spawnDefault(traj)
		TBossMultiFL2.spawnDefault(traj)
		TBossMultiFR2.spawnDefault(traj)
		
		Return Enemy
End Function

Function bossUpdate(boss:TEnemy) 

	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)	
	boss.y = newpos[1]
	boss.x = newpos[0]
	
	'1ère transformation
	If boss.hitpoints < 1300000 And boss.speed = 1
		boss.shoot = New TShootSimple0
		boss.shootSequence = New TShootSeqMegaCloud
		boss.speed = 5
		boss.shoot.setFreq(40)
		channelsRate = 1.2 ' on augmente la vitesse de la musique
	EndIf
	'2ème transformation
	If boss.hitpoints < 600000 And boss.speed = 5
		boss.shootSequence = New TShootSeqTornado
		boss.shoot.setFreq(5)
		boss.speed = 7
		channelsRate = 1.5 ' on augmente la vitesse de la musique
	EndIf

End Function

End Type

Type TBossMultiCL2 Extends TBoss

Function spawnDefault:TBossMultiCL2 (traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiCL2 = New TBossMultiCL2 
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusBomb ' bonus de puissance
		Enemy.image = BossMultiCL2
		Enemy.shoot = New TShootSimple0
		Enemy.shoot.setFreq(15) 
		Enemy.shootSequence = New TShootSeqBalaiD2 
		Enemy.hitpoints = 500000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)		
		Return Enemy
End Function

Function bossUpdate(boss:TEnemy) 

	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)
	boss.x = Int(newpos[0] - 190 )
	boss.y = Int(newpos[1] - 40 )	
	
		'1ère transformation
	If boss.hitpoints < 400000 And boss.speed = 1
		boss.shoot = New TShootSimple0
		boss.speed = 5
		boss.shootSequence = New TShootSeqHalfCircle
		boss.shoot.setFreq(30)
		boss.x = Int(newpos[0] + 90 )	
		boss.y = Int(newpos[1] - 120 + Cos(mapy)*10)
		channelsRate = 1.2 ' on augmente la vitesse de la musique
	EndIf
	'2ème transformation
	If boss.hitpoints < 200000 And boss.speed = 5
		boss.shoot = New TShootArroz4
		boss.shoot.setFreq(10)
		boss.speed = 7
		channelsRate = 1.5 ' on augmente la vitesse de la musique
	EndIf
	
End Function

End Type

Type TBossMultiCR2 Extends TBoss

Function spawnDefault:TBossMultiCR2 (traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiCR2 = New TBossMultiCR2 
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusBomb ' bonus de puissance
		Enemy.image = BossMultiCR2
		Enemy.shoot = New TShootSimple0
		Enemy.shoot.setFreq(15) 
		Enemy.shootSequence = New TShootSeqBalaiG2 
		Enemy.hitpoints = 500000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)		
		Return Enemy
End Function

Function bossUpdate(boss:TEnemy) 
	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)	
	boss.x = Int(newpos[0] + 190 )
	boss.y = Int(newpos[1] - 40 )
	
		'1ère transformation
	If boss.hitpoints < 400000 And boss.speed = 1
		boss.shoot = New TShootSimple0
		boss.speed = 5
		boss.shootSequence = New TShootSeqHalfCircle
		boss.shoot.setFreq(30)
		boss.x = Int(newpos[0] + 90 )	
		boss.y = Int(newpos[1] - 120 + Cos(mapy)*10)
		channelsRate = 1.2 ' on augmente la vitesse de la musique
	EndIf
	'2ème transformation
	If boss.hitpoints < 200000 And boss.speed = 5
		boss.shoot = New TShootArroz4
		boss.shoot.setFreq(10)
		boss.speed = 7
		boss.x = Int(newpos[0] + 90 )	
		boss.y = Int(newpos[1] - 120 + Cos(mapy)*10)
		channelsRate = 1.5 ' on augmente la vitesse de la musique
	EndIf
	
End Function

End Type

Type TBossMultiFL2 Extends TBoss

Function spawnDefault:TBossMultiFL2 (traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiFL2 = New TBossMultiFL2 
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusOneUp ' bonus de puissance
		Enemy.image = BossMultiFL2
		Enemy.shoot = New TShootSimple0
		Enemy.ShootSequence = New TShootSeqLaser2
		Enemy.shoot.setFreq(40) 
		'Enemy.shootSequence = New TShootSeqMegaCloud 
		Enemy.hitpoints = 600000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)		
		Return Enemy
End Function

Function bossUpdate(boss:TEnemy) 
	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)	
	boss.x = Int(newpos[0] - 90 )
	boss.y = Int(newpos[1] - 120 + Cos(mapy)*10 )

		'1ère transformation
	If boss.hitpoints < 400000 And boss.speed = 1
		boss.shoot = New TShootSimple0
		boss.speed = 5
		boss.shoot.setFreq(40)
		boss.ShootSequence = New TShootSeqLaser2
		channelsRate = 1.2 ' on augmente la vitesse de la musique
	EndIf
	'2ème transformation
	If boss.hitpoints < 200000 And boss.speed = 5
		'boss.shoot = New TShootArroz4
		boss.shoot.setFreq(30)
		boss.speed = 7
		boss.shootSequence = New TShootSeqPyramid
		boss.x = Int(newpos[0] + 90 )	
		boss.y = Int(newpos[1] - 120 + Cos(mapy)*10)
		channelsRate = 1.5 ' on augmente la vitesse de la musique
	EndIf
	
End Function

End Type

Type TBossMultiFR2 Extends TBoss

Function spawnDefault:TBossMultiFR2 (traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiFR2 = New TBossMultiFR2 
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusOneUp ' bonus de puissance
		Enemy.image = BossMultiFR2
		Enemy.shoot = New TShootSimple0
		Enemy.shoot.setFreq(40) 
		Enemy.ShootSequence = New TShootSeqLaser2
		'Enemy.shootSequence = New TShootSeqMegaCloud 
		Enemy.hitpoints = 600000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)		
		Return Enemy
End Function

Function bossUpdate(boss:TEnemy) 
	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)
	boss.x = Int(newpos[0] + 90 )	
	boss.y = Int(newpos[1] - 120 + Cos(mapy)*10)

		'1ère transformation
	If boss.hitpoints < 600000 And boss.speed = 1
		boss.speed = 5
		boss.shoot.setFreq(40)
		boss.shootSequence = New TShootSeqLaser2
		channelsRate = 1.2 ' on augmente la vitesse de la musique
	EndIf
	'2ème transformation
	If boss.hitpoints < 200000 And boss.speed = 5
		'boss.shoot = New TShootArroz4
		boss.shoot.setFreq(30)
		boss.speed = 7
		boss.shootSequence = New TShootSeqPyramid
		boss.x = Int(newpos[0] + 90 )	
		boss.y = Int(newpos[1] - 120 + Cos(mapy)*10)
		channelsRate = 1.5 ' on augmente la vitesse de la musique
	EndIf
	
End Function

End Type







