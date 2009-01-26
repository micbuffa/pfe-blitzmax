AutoMidHandle(True)

Incbin "images/enemyRed1.png"
Incbin "images/enemyRed2.png"
Incbin "images/enemyRed3.png"
Incbin "images/enemyRed4.png"
Incbin "images/enemyRed3bis.png"
Incbin "images/losangeDouble.png"
Incbin "images/enemyBlue2.png"
Incbin "images/enemyBlue3.png"
Incbin "images/enemyBlue4.png"
Incbin "images/bossBlue1.png"
Incbin "images/boss1tribal.png"
Incbin "images/bossMultiCenterRed.png"
Incbin "images/bossMultiCloseLeftRed.png"
Incbin "images/bossMultiCloseRightRed.png"
Incbin "images/bossMultiFarLeftBlue.png"
Incbin "images/bossMultiFarRightBlue.png"
Incbin "images/enemyBlue5.png"


Global EnemyRed1:TImage = LoadImage("incbin::images/enemyRed1.png")
Global EnemyRed2:TImage = LoadImage("incbin::images/enemyRed2.png")
Global EnemyRed3:TImage = LoadImage("incbin::images/enemyRed3.png")
Global EnemyRed4:TImage = LoadImage("incbin::images/enemyRed3bis.png")
Global EnemyRed5:TImage = LoadImage("incbin::images/enemyRed4.png")

Global EnemyBlue1:TImage = LoadImage("incbin::images/losangeDouble.png")
Global EnemyBlue2:TImage = LoadImage("incbin::images/enemyBlue2.png")
Global EnemyBlue3:TImage = LoadImage("incbin::images/enemyBlue3.png")
Global EnemyBlue4:TImage = LoadImage("incbin::images/enemyBlue4.png")
Global EnemyBlue5:TImage = LoadImage("incbin::images/enemyBlue5.png")

Global Boss1:TImage = LoadImage("incbin::images/bossBlue1.png")
Global Boss2:TImage = LoadImage("incbin::images/boss1tribal.png")
Global BossMultiC:TImage = LoadImage("incbin::images/bossMultiCenterRed.png")
Global BossMultiCL:TImage = LoadImage("incbin::images/bossMultiCloseLeftRed.png")
Global BossMultiCR:TImage = LoadImage("incbin::images/bossMultiCloseRightRed.png")
Global BossMultiFL:TImage = LoadImage("incbin::images/bossMultiFarLeftBlue.png")
Global BossMultiFR:TImage = LoadImage("incbin::images/bossMultiFarRightBlue.png")


Type TEnemyBlue1 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue1(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue1 = New TEnemyBlue1
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 1.5
		Enemy.shipType = LOW_FREQ
		If Rand(30) = 2 Then Enemy.bonus = New TBonusSlowMo ' provisoire
		Enemy.image = EnemyBlue1
		Enemy.shoot = New TShootCircle
		Enemy.shoot.setFreq(150)
		Enemy.hitpoints = 200
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue2 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue2(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue2 = New TEnemyBlue2
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 0.5
		Enemy.hSpeed = 3
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusOneUp ' toujours un bonus de vie ?
		Enemy.image = EnemyBlue2
		Enemy.shoot = New TShootSimple5
		Enemy.shoot.setFreq(50)
		Enemy.hitpoints = 10000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue3 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue3(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue3 = New TEnemyBlue3
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 2
		Enemy.hSpeed = 2
		Enemy.shipType = LOW_FREQ
		'Enemy.bonus = New TBonusBomb ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue3
		Enemy.shoot = New TShootCross 
		Enemy.shoot.setFreq(2)
		Enemy.hitpoints = 20000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue4 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue4(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue4 = New TEnemyBlue4
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 2
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusBomb ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue4
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

Type TEnemyBlue5 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue5(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyBlue5= New TEnemyBlue5
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 7
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusBomb ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue5
		Enemy.shoot = New TShootSimple4
		Enemy.shoot.setFreq(50)
		Enemy.shootSequence = New TShootSeqCloud 
		Enemy.hitpoints = 2000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyRed1 Extends TEnemy

' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed1(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed1 = New TEnemyRed1
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
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyRed2 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed2(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed2 = New TEnemyRed2
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 3
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.image = EnemyRed2
		Enemy.shoot = New TShootArroz4
		Enemy.shoot.setFreq(30) 
		Enemy.shootSequence = New TShootSeqLaser1 
		Enemy.hitpoints = 500
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed3 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed3(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed3 = New TEnemyRed3
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 3
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.image = EnemyRed3
		Enemy.shoot = New TshootSimple0
		Enemy.shoot.setFreq(30) 
		Enemy.hitpoints = 1000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed4 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed4(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed4 = New TEnemyRed4
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
		Enemy.hitpoints = 50000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed5 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed5(traj:TBSplines, dir = 0)
		Local Enemy:TEnemyRed5 = New TEnemyRed5
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
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
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type


Type TBoss Extends TEnemy

Function bossUpdate(enemy:TEnemy) Abstract 

End Type

Type TBoss1 Extends TBoss

Function spawnDefault:TBoss1(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBoss1 = New TBoss1
		Enemy.traj = traj
		Enemy.x = 400'traj.curKubSplineX.ValueInt(1)
		Enemy.y = -200'traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = Boss1
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

Type TBoss2 Extends TBoss

Function spawnDefault:TBoss2(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBoss2 = New TBoss2
		Enemy.traj = traj
		Enemy.x = 400'traj.curKubSplineX.ValueInt(1)
		Enemy.y = -200'traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 3
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = Boss2
		Enemy.shoot = New TShootCross
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
		boss.shoot = New TShootArroz4
		boss.speed = 5
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
		TEnemyRed3.spawnDefault(traj)
	EndIf

End Function


End Type



Type TBossMultiC Extends TBoss

Function spawnDefault:TBossMultiC(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiC = New TBossMultiC
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = BossMultiC
		Enemy.shoot = New TShootSimple2
		Enemy.shoot.setFreq(20) 
		Enemy.shootSequence = New TShootSeqSpirale
		Enemy.hitpoints = 1000000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		' Spawn des adds
		TBossMultiCL.spawnDefault(traj)
		TBossMultiCR.spawnDefault(traj)
		TBossMultiFL.spawnDefault(traj)
		TBossMultiFR.spawnDefault(traj)
		
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
		Local traj:TBSplines = TBSplines.Create([1,2,3,4,5],[currentX,200,450,550,currentX], [currentY,200,100,200,currentY])
		boss.traj = traj
		boss.shoot = New TShootCross
		boss.speed = 5
		boss.shoot.setFreq(40)
		channelsRate = 1.2 ' on augmente la vitesse de la musique
	EndIf
	'2ème transformation
	If boss.hitpoints < 600000 And boss.speed = 5
		boss.shoot = New TShootArroz4
		boss.shoot.setFreq(30)
		boss.speed = 7
		channelsRate = 1.5 ' on augmente la vitesse de la musique
	EndIf

End Function

End Type

Type TBossMultiCL Extends TBoss

Function spawnDefault:TBossMultiCL(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiCL = New TBossMultiCL
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusBomb ' bonus de puissance
		Enemy.image = BossMultiCL
		Enemy.shoot = New TShootArroz4
		Enemy.shoot.setFreq(80) 
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
	boss.x = Int(newpos[0] - 100 - 10 * Cos(mapY) + Rand (-5,5))
	boss.y = Int(newpos[1] - 50 - 10 * Sin(mapY) + Rand (-5,5))	
End Function

End Type

Type TBossMultiCR Extends TBoss

Function spawnDefault:TBossMultiCR(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiCR = New TBossMultiCR
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusBomb ' bonus de puissance
		Enemy.image = BossMultiCR
		Enemy.shoot = New TShootArroz4
		Enemy.shoot.setFreq(80) 
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
	boss.x = Int(newpos[0] + 100 + 10 * Cos(mapY) + Rand (-5,5))
	boss.y = Int(newpos[1] - 50 - 10 * Sin(mapY) + Rand (-5,5))
End Function

End Type

Type TBossMultiFL Extends TBoss

Function spawnDefault:TBossMultiFL(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiFL = New TBossMultiFL
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusOneUp ' bonus de puissance
		Enemy.image = BossMultiFL
		Enemy.shoot = New TShootSimple3
		Enemy.shoot.setFreq(40) 
		Enemy.shootSequence = New TShootSeqLaser3
		Enemy.hitpoints = 100000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)		
		Return Enemy
End Function

Function bossUpdate(boss:TEnemy) 
	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)	
	boss.x = Int(newpos[0] - 220 * Cos (mapY/2))
	boss.y = Int(newpos[1] - 120 - 10 * Sin (mapY))
End Function

End Type

Type TBossMultiFR Extends TBoss

Function spawnDefault:TBossMultiFR(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBossMultiFR = New TBossMultiFR
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusOneUp ' bonus de puissance
		Enemy.image = BossMultiFR
		Enemy.shoot = New TShootSimple3
		Enemy.shoot.setFreq(40) 
		Enemy.shootSequence = New TShootSeqLaser3
		Enemy.hitpoints = 100000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)		
		Return Enemy
End Function

Function bossUpdate(boss:TEnemy) 
	Local realSpeed:Float = boss.speed/1000
	Local newpos:Int[] = boss.traj.update(realSpeed)
	boss.x = Int(newpos[0] + 220 * Cos (mapY/2))	
	boss.y = Int(newpos[1] - 120 - 10 * Sin (mapY))
End Function

End Type






