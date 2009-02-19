AutoMidHandle(True)

Incbin "images/enemyRed1.png"
Incbin "images/enemyRed2.png"
Incbin "images/enemyRed3.png"
Incbin "images/enemyRed4.png"
Incbin "images/enemyRed3bis.png"
Incbin "images/enemyRed5.png"
Incbin "images/enemyRed6.png"
Incbin "images/enemyRed7.png"
Incbin "images/enemyRed8.png"
Incbin "images/losangeDouble.png"
Incbin "images/enemyBlue2.png"
Incbin "images/enemyBlue3.png"
Incbin "images/enemyBlue4.png"
Incbin "images/enemyBlue5.png"
Incbin "images/enemyBlue6.png"
Incbin "images/enemyBlue7.png"
Incbin "images/boss11.png"
Incbin "images/boss12.png"
Incbin "images/boss12L.png"
Incbin "images/boss12R.png"

Global EnemyRed1:TImage = LoadImage("incbin::images/enemyRed1.png")
Global EnemyRed2:TImage = LoadImage("incbin::images/enemyRed2.png")
Global EnemyRed3:TImage = LoadImage("incbin::images/enemyRed3.png")
Global EnemyRed4:TImage = LoadImage("incbin::images/enemyRed3bis.png")
Global EnemyRed5:TImage = LoadImage("incbin::images/enemyRed4.png")
Global EnemyRed6:TImage = LoadImage("incbin::images/enemyRed6.png")
Global EnemyRed7:TImage = LoadImage("incbin::images/enemyRed7.png")
Global EnemyRed8:TImage = LoadImage("incbin::images/enemyRed8.png")
Global EnemyRed9:TImage = LoadImage("incbin::images/enemyRed5.png")

Global EnemyBlue1:TImage = LoadImage("incbin::images/losangeDouble.png")
Global EnemyBlue2:TImage = LoadImage("incbin::images/enemyBlue2.png")
Global EnemyBlue3:TImage = LoadImage("incbin::images/enemyBlue3.png")
Global EnemyBlue4:TImage = LoadImage("incbin::images/enemyBlue4.png")
Global EnemyBlue5:TImage = LoadImage("incbin::images/enemyBlue5.png")
Global EnemyBlue6:TImage = LoadImage("incbin::images/enemyBlue6.png")
Global EnemyBlue7:TImage = LoadImage("incbin::images/enemyBlue7.png")

Global Boss1:TImage = LoadImage("incbin::images/boss11.png")
Global BossMultiC:TImage = LoadImage("incbin::images/boss12.png")
Global BossMultiCL:TImage = LoadImage("incbin::images/boss12L.png")
Global BossMultiCR:TImage = LoadImage("incbin::images/boss12R.png")

Type TEnemyBlue11 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue11(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue11 = New TEnemyBlue11
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		If Rand(30) = 2 Then Enemy.bonus = New TBonusSlowMo ' provisoire
		Enemy.image = EnemyBlue1
		Enemy.shoot = New TShootSimple1
		Enemy.shoot.setFreq(50)
		Enemy.hitpoints = 200
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue12 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue12(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue12 = New TEnemyBlue12
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 0.5
		Enemy.hSpeed = 3
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusOneUp ' toujours un bonus de vie ?
		Enemy.image = EnemyBlue2
		Enemy.shoot = New TShootArroz3 
		Enemy.shoot.setFreq(15)
		Enemy.hitpoints = 2000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints; enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue13 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue13(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue13 = New TEnemyBlue13
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1.5
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		'Enemy.bonus = New TBonusBomb ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue3
		Enemy.shoot = New TShootSimple2
		Enemy.shoot.setFreq(50)
		Enemy.hitpoints = 500
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue14 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue14(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue14 = New TEnemyBlue14
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1.5
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusBomb ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue4
		Enemy.shoot = New TShootSimple4
		Enemy.shoot.setFreq(100)
		Enemy.hitpoints = 3000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue15 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue15(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue15= New TEnemyBlue15
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusBomb ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue5
		Enemy.shoot = New TShootSimple5
		Enemy.shoot.setFreq(100)
		Enemy.shootSequence = New TShootSeqLaser3
		Enemy.hitpoints = 2000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue16 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue16(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue16= New TEnemyBlue16
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusOneUp ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue6
		Enemy.shoot = New TShootSimple5
		Enemy.shoot.setFreq(30)
		Enemy.shootSequence = New TShootSeqTornado 
		Enemy.hitpoints = 5000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue17 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue17(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue17= New TEnemyBlue17
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 5
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		If Rand(1,5) = 1 Then Enemy.bonus = New TBonusBomb ' toujours un bonus de bombe ?
		If Rand(1,5) = 1 Then Enemy.bonus = New TBonusSlowMo ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue7
		Enemy.shoot = New TShootSimple0
		Enemy.shoot.setFreq(100)
		'Enemy.shootSequence = New TShootSeqLaser3
		Enemy.hitpoints = 500
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type


Type TEnemyRed11 Extends TEnemy
	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed11(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed11 = New TEnemyRed11
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
		Enemy.image = EnemyRed1
		Enemy.shoot = New TShootSimple2
		Enemy.shoot.setFreq(100)
		If Enemy.x < GraphicsWidth()/2 
			Enemy.shootSequence = New TShootSeqRafaleD 
		Else 
			Enemy.shootSequence = New TShootSeqRafaleG	 
		EndIf
		Enemy.hitpoints = 200
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyRed12 Extends TEnemy
	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed12(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed12 = New TEnemyRed12
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 4
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.image = EnemyRed2
		Enemy.shoot = New TShootSimple0
		Enemy.shoot.setFreq(30) 
		'Enemy.shootSequence = New TShootSeqLaser1 
		Enemy.hitpoints = 500
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed13 Extends TEnemy
	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed13(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed13 = New TEnemyRed13
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1.5
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.image = EnemyRed3
		Enemy.shoot = New TShootSimple3
		Enemy.shoot.setFreq(75) 
		Enemy.hitpoints = 1000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed14 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed14(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed14 = New TEnemyRed14
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 3
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = EnemyRed4
		Enemy.shoot = New TshootSimple0
		Enemy.shoot.setFreq(80) 
		Enemy.shootSequence = New TshootSeqCloud
		Enemy.hitpoints = 20000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed15 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed15(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed15 = New TEnemyRed15
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		'Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = EnemyRed5
		Enemy.shoot = New TshootSimple0
		Enemy.shoot.setFreq(30) 
		Enemy.shootSequence = New TshootSeqPyramid
		Enemy.hitpoints = 1500
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed16 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed16(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed16 = New TEnemyRed16
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		If Rand(1,5) = 1 Then Enemy.bonus = New TBonusOneUp ' bonus de puissance
		Enemy.image = EnemyRed6
		Enemy.shoot = New TshootSimple0
		Enemy.shoot.setFreq(50) 
		Enemy.shootSequence = New TShootSeqSpirale 
		Enemy.hitpoints = 2000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed17 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed17(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed17 = New TEnemyRed17
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		'Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = EnemyRed7
		Enemy.shoot = New TshootSimple0
		Enemy.shoot.setFreq(30) 
		Enemy.shootSequence = New TshootSeqPyramid
		Enemy.hitpoints = 10000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed18 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed18(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed18 = New TEnemyRed18
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		'Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = EnemyRed8
		Enemy.shoot = New TshootSimple0
		Enemy.shoot.setFreq(30) 
		Enemy.shootSequence = New TshootSeqPyramid
		Enemy.hitpoints = 1500
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed19 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed19(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed19 = New TEnemyRed19
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 3
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		'Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = EnemyRed9
		Enemy.shoot = New TshootSimple0
		Enemy.shoot.setFreq(10) 
		Enemy.shootSequence = New TShootSeqHalfCircle
		Enemy.hitpoints = 3000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type


Type TBoss11 Extends TBoss

Function spawnDefault:TBoss11(traj:TBSplines, dir = 0)
		'channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBoss11 = New TBoss11
		Enemy.traj = traj
		Enemy.x = 400'traj.curKubSplineX.ValueInt(1)
		Enemy.y = -200'traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.image = Boss1
		Enemy.shoot = New TShootCross
		Enemy.shootSequence = New TShootSeqHalfCircle
		Enemy.shoot.setFreq(20) 
		Enemy.hitpoints = 250000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		Return Enemy
	End Function

Function bossUpdate(boss:TEnemy) 

	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)	
	boss.y = newpos[1]
	boss.x = newpos[0]
	
	'1ère transformation
	If boss.hitpoints < 125000 And boss.speed = 1
		Local currentX% = boss.x ; Local currentY% = boss.y
		Local traj:TBSplines = TBSplines.Create([1,2,3,4,5],[currentX,200,450,550,currentX], [currentY,150,50,150,currentY])
		boss.traj = traj
		boss.shoot = New TShootArroz4
		boss.shootSequence = New TShootSeqCross
		boss.speed = 3
		boss.shoot.setFreq(10)
		'channelsRate = 1.2 ' on augmente la vitesse de la musique
		TBonusWidth.spawn(boss.x,boss.y) ' on donne un bonus de puissance
	EndIf
	'2ème transformation
	If boss.hitpoints < 50000 And boss.speed = 3
		boss.shoot = New TShootCircle
		boss.shootSequence = New TShootSeqSpirale 
		boss.shoot.setFreq(10)
		boss.speed = 8
		'channelsRate = 1.5 ' on augmente la vitesse de la musique
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

Type TBoss12 Extends TBoss

Function spawnDefault:TBoss12(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBoss12 = New TBoss12
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 3
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = BossMultiC
		Enemy.shoot = New TShootSimple2
		Enemy.shoot.setFreq(25) 
		Enemy.shootSequence = New TShootSeqSpirale
		Enemy.hitpoints = 200000
		Enemy.xv = ImageWidth(Enemy.image)/2

		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
		' Spawn des adds
		TBossMultiCL1.spawnDefault(traj)
		TBossMultiCR1.spawnDefault(traj)		
		Return Enemy
End Function

Function bossUpdate(boss:TEnemy) 

	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)	
	boss.y = newpos[1]
	boss.x = newpos[0]
	
	'1ère transformation
	If boss.hitpoints < 100000 And boss.speed = 3
		Local currentX% = boss.x ; Local currentY% = boss.y
		Local traj:TBSplines = TBSplines.Create([1,2,3,4,5],[currentX,200,450,550,currentX], [currentY,200,100,200,currentY])
		boss.traj = traj
		boss.shootSequence = New TShootSeqPyramid 
		boss.speed = 5
		boss.shoot.setFreq(30)
		channelsRate = 1.2 ' on augmente la vitesse de la musique
	EndIf
	'2ème transformation
	If boss.hitpoints < 40000 And boss.speed = 5
		boss.shootSequence = New TShootSeqTornado 
		boss.shoot.setFreq(20)
		boss.speed = 7
		channelsRate = 1.5 ' on augmente la vitesse de la musique
	EndIf

End Function

End Type

Type TBossMultiCL1 Extends TBoss

Function spawnDefault:TBossMultiCL1(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiCL1 = New TBossMultiCL1
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusBomb ' bonus de puissance
		Enemy.image = BossMultiCL
		Enemy.shoot = New TShootArroz3
		Enemy.shootSequence = New TShootSeqBalaiD2
		Enemy.shoot.setFreq(12) 
		Enemy.hitpoints = 50000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)		
		Return Enemy
End Function

Function bossUpdate(boss:TEnemy) 

	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)
	boss.x = Int(newpos[0] - 110 * Cos(mapY*1.2) + Rand (-5,5))
	boss.y = Int(newpos[1] - 50 - 10 * Sin(mapY) + Rand (-5,5))	

End Function

End Type

Type TBossMultiCR1 Extends TBoss

Function spawnDefault:TBossMultiCR1(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiCR1 = New TBossMultiCR1
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusSlowMo ' bonus de puissance
		Enemy.image = BossMultiCR
		Enemy.shoot = New TShootArroz3
		Enemy.shootSequence = New TShootSeqBalaiG2
		Enemy.shoot.setFreq(12) 
		Enemy.hitpoints = 50000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)		
		Return Enemy
End Function

Function bossUpdate(boss:TEnemy) 
	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)	
	boss.x = Int(newpos[0] + 110 * Cos(mapY*1.2) + Rand (-5,5))
	boss.y = Int(newpos[1] - 50 - 10 * Sin(mapY) + Rand (-5,5))

End Function

End Type







