AutoMidHandle(True)

'Incbin "images/enemyRed1.png"
Incbin "images/enemyBlue31.png"
Incbin "images/enemyBlue32.png"
Incbin "images/enemyBlue33.png"
Incbin "images/enemyBlue34.png"
Incbin "images/enemyRed31.png"
Incbin "images/enemyRed32.png"
Incbin "images/enemyRed33.png"
Incbin "images/enemyRed34.png"

Incbin "images/boss32.png"
Incbin "images/boss32bis.png"
Incbin "images/boss32bisblue.png"
Incbin "images/boss32Close.png"
Incbin "images/boss32Far.png"



Global EnemyBlue31:TImage = LoadImage("incbin::images/enemyBlue31.png")
Global EnemyBlue32:TImage = LoadImage("incbin::images/enemyBlue32.png")
Global EnemyBlue33:TImage = LoadImage("incbin::images/enemyBlue33.png")
Global EnemyBlue34:TImage = LoadImage("incbin::images/enemyBlue34.png")
Global EnemyRed31:TImage = LoadImage("incbin::images/enemyRed31.png")
Global EnemyRed32:TImage = LoadImage("incbin::images/enemyRed32.png")
Global EnemyRed33:TImage = LoadImage("incbin::images/enemyRed33.png")
Global EnemyRed34:TImage = LoadImage("incbin::images/enemyRed34.png")


Global Boss32:TImage = LoadImage("incbin::images/boss32.png")
Global Boss32bis:TImage = LoadImage("incbin::images/boss32bis.png")
Global Boss32bisBlue:TImage = LoadImage("incbin::images/boss32bisblue.png")
Global Boss32Close:TImage = LoadImage("incbin::images/boss32Close.png")
Global Boss32Far:TImage = LoadImage("incbin::images/boss32Far.png")

Global Boss31:TImage =LoadImage("incbin::images/bossBlue1.png")

Type TEnemyBlue31 Extends TEnemy

	Function spawnDefault:TEnemyBlue31(traj:TBSplines, dir = 0)
			Local Enemy:TEnemyBlue31 = New TEnemyBlue31
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 0.2
			Enemy.hSpeed = 0
			Enemy.shipType = LOW_FREQ
			Enemy.bonus = New TBonusBomb
			Enemy.image = EnemyBlue31
			Enemy.shoot = New TShootCircle
			Enemy.shootSequence = New TShootSeqTornado
			Enemy.shoot.setFreq(15)
			Enemy.hitpoints = 20000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
			Return Enemy
	End Function

End Type

Type TEnemyBlue32 Extends TEnemy

	Function spawnDefault:TEnemyBlue32(traj:TBSplines, dir = 0)
			Local Enemy:TEnemyBlue32 = New TEnemyBlue32
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 2.5
			Enemy.hSpeed = 0
			Enemy.shipType = LOW_FREQ
			If Rand(30) = 2 Then Enemy.bonus = New TBonusSlowMo ' provisoire
			Enemy.image = EnemyBlue32
			Enemy.shoot = New TShootSimple3
			Enemy.shoot.setFreq(50)
			Enemy.hitpoints = 1000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
			Return Enemy
	End Function

End Type

Type TEnemyBlue33 Extends TEnemy

	Function spawnDefault:TEnemyBlue33(traj:TBSplines, dir = 0)
			Local Enemy:TEnemyBlue33 = New TEnemyBlue33
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 2.5
			Enemy.hSpeed = 0
			Enemy.shoot = New TShootSimple3
			Enemy.shipType = LOW_FREQ
			If Rand(30) = 2 Then Enemy.bonus = New TBonusSlowMo ' provisoire
			Enemy.image = EnemyBlue33
			If Enemy.x < GraphicsWidth()/2 
				Enemy.shootSequence = New TShootSeqRafaleD 
			Else 
				Enemy.shootSequence = New TShootSeqRafaleG	 
			EndIf
			Enemy.shoot.setFreq(50)
			Enemy.hitpoints = 1000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
			Return Enemy
	End Function

End Type

Type TEnemyBlue34 Extends TEnemy

	Function spawnDefault:TEnemyBlue34(traj:TBSplines, dir = 0)
			Local Enemy:TEnemyBlue34 = New TEnemyBlue34
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 0.5
			Enemy.hSpeed = 1
			Enemy.shipType = LOW_FREQ
			Enemy.bonus = New TBonusSlowMo
			Enemy.image = EnemyBlue34
			Enemy.shoot = New TShootSimple3
			Enemy.shootSequence = New TShootSeqCross
			Enemy.shoot.setFreq(20)
			Enemy.hitpoints = 12000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
			Return Enemy
	End Function

End Type

Type TEnemyRed31 Extends TEnemy

	Function spawnDefault:TEnemyRed31(traj:TBSplines, dir = 0)
			Local Enemy:TEnemyRed31 = New TEnemyRed31
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 0.5
			Enemy.hSpeed = 1
			Enemy.shipType = HIGH_FREQ
			Enemy.bonus = New TBonusWidth
			Enemy.image = EnemyRed31
			Enemy.shoot = New TShootSimple1
			Enemy.shootSequence = New TShootSeqInvert
			Enemy.shoot.setFreq(40)
			Enemy.hitpoints = 30000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
			Return Enemy
	End Function

End Type

Type TEnemyRed32 Extends TEnemy

	Function spawnDefault:TEnemyRed32(traj:TBSplines, dir = 0)
			Local Enemy:TEnemyRed32 = New TEnemyRed32
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 1.8
			Enemy.hSpeed = 0
			Enemy.shipType = HIGH_FREQ
			If Rand(30) = 2 Then Enemy.bonus = New TBonusSlowMo ' provisoire
			Enemy.image = EnemyRed32
			Enemy.shoot = New TShootSimple1
			If Enemy.x < GraphicsWidth()/2 
				Enemy.shootSequence = New TShootSeqRafaleD 
			Else 
				Enemy.shootSequence = New TShootSeqRafaleG	 
			EndIf
			Enemy.shoot.setFreq(80)
			Enemy.hitpoints = 1000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
			Return Enemy
	End Function

End Type

Type TEnemyRed33 Extends TEnemy

	Function spawnDefault:TEnemyRed33(traj:TBSplines, dir = 0)
			Local Enemy:TEnemyRed33 = New TEnemyRed33
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 1.8
			Enemy.hSpeed = 0
			Enemy.shipType = HIGH_FREQ
			Enemy.bonus = New TBonusOneUp ' provisoire
			Enemy.image = EnemyRed33
			Enemy.shoot = New TShootCircle
			Enemy.shoot.setFreq(100)
			Enemy.hitpoints = 15000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
			Return Enemy
	End Function

End Type

Type TEnemyRed34 Extends TEnemy

	Function spawnDefault:TEnemyRed34(traj:TBSplines, dir = 0)
			Local Enemy:TEnemyRed34 = New TEnemyRed34
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 4
			Enemy.hSpeed = 4
			Enemy.shipType = HIGH_FREQ
			If Rand(30) = 2 Then Enemy.bonus = New TBonusSlowMo
			Enemy.image = EnemyRed34
			Enemy.shoot = New TShootArroz3
			Enemy.shoot.setFreq(30)
			Enemy.hitpoints = 1000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)
			Return Enemy
	End Function

End Type



Type TBoss31 Extends TBoss

	Function spawnDefault:TBoss31(traj:TBSplines, dir = 0)
		channelsRate = 1.1 ' on augmente la vitesse de la musique
		Local Enemy:TBoss31 = New TBoss31
		Enemy.traj = traj
		Enemy.x = 400'traj.curKubSplineX.ValueInt(1)
		Enemy.y = -50'traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 0.2
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
   		Enemy.image = Boss31
		Enemy.shootSequence = New TShootSeqLaser2
		Enemy.shoot = New TShootSimple2Choice
		Enemy.shoot.setFreq(15) 
		Enemy.hitpoints = 500000
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
		If boss.hitpoints < 400000 And boss.speed = 0.2
			Local currentX% = boss.x ; Local currentY% = boss.y
			Local traj:TBSplines = TBSplines.Create([1,2,3,4,5],[currentX,200,450,550,currentX], [currentY,150,50,150,currentY])
			boss.shootSequence = New TShootSeqLaser3
			boss.traj = traj
			boss.speed = 2
			boss.shoot.setFreq(5)
			TBonusWidth.spawn(boss.x,boss.y) ' on donne un bonus de puissance
		EndIf
		
		'2ème transformation
		If boss.hitpoints < 150000 And boss.speed = 2
			boss.shootSequence = New TShootSeqSpirale
			boss.shoot.setFreq(5)
			boss.speed = 5
		EndIf
	
	End Function

End Type


Type TBoss32 Extends TBoss

	Function spawnDefault:TBoss32(traj:TBSplines, dir = 0)
		channelsRate = 1.2 ' on augmente la vitesse de la musique
		Local Enemy:TBoss32 = New TBoss32
		Enemy.traj = traj
		Enemy.x = 400'traj.curKubSplineX.ValueInt(1)
		Enemy.y = -50'traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 0.2
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = Boss32
		Enemy.shoot = New TShootSimple5
		Enemy.shoot.setFreq(15) 
		Enemy.hitpoints = 2500000
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
		If boss.hitpoints < 2200000 And boss.speed = 0.2
			boss.speed = 2
			channelsRate = 1.4
			Local currentX% = boss.x ; Local currentY% = boss.y
			Local traj:TBSplines = TBSplines.Create([1,2,3,4,5],[currentX,260,450,540,currentX], [currentY,150,50,150,currentY])
			boss.shootSequence = New TShootSeqCloud
			boss.traj = traj
			boss.shoot.setFreq(10)
			TBonusOneUp.spawn(boss.x,boss.y) ' on donne un bonus de vie
			TBoss32CL.spawnDefault(traj)
			TBoss32CR.spawnDefault(traj) 
			
			TExplosion.make(boss.x, boss.y, 400, 10)
			
		EndIf
		
		'2ème transformation
		If boss.hitpoints < 1600000 And boss.speed = 2
			boss.speed = 4
			channelsRate = 1.6
			boss.shootSequence = New TShootSeqSpirale
			boss.shoot.setFreq(25)
			'For Local i = 0 To 10
			'	TExplosion.make(boss.x+Rand(-20,20), boss.y+Rand(-40,40), 40 + i*5)
			'Next
			TExplosion.make(boss.x, boss.y, 400, 10)
		EndIf
		
		'3ème transformation
		If boss.hitpoints < 1000000 And boss.speed = 4
			boss.speed = 6
			boss.image = Boss32bis
			channelsRate = 1.8
			boss.shootSequence = New TShootSeqSpirale
			boss.shoot.setFreq(15)
			Local currentX% = boss.x ; Local currentY% = boss.y
			Local traj:TBSplines = TBSplines.Create([1,2,3,4,5],[currentX,260,450,540,currentX], [currentY,350,50,350,currentY])
			boss.traj = traj
			TBoss32FL.spawnDefault(traj)
			TBoss32FR.spawnDefault(traj)
			'For Local i = 0 To 10
			'	TExplosion.make(boss.x+Rand(-20,20), boss.y+Rand(-40,40), 40 + i*5)
			'Next
			TExplosion.make(boss.x, boss.y, 400, 10)
		EndIf
		
		'Tir de vaisseaux sur le joueur
		If boss.hitpoints < 1300000 And loopsCount Mod 100 = 0
			Local player:TPlayer = TPlayer.getPlayer()
			Local currentX% = boss.x ; Local currentY% = boss.y
			Local targetX% = player.x ; Local targetY% = player.y 
			Local traj:TBSplines = TBSplines.Create([1,2,3],[currentX,targetX,400], [currentY,targetY,700])
			TEnemyRed23.spawnDefault(traj)
		EndIf
		
		If boss.hitpoints < 800000 And loopsCount Mod 1500 = 0
			boss.shipType = 1 - boss.shipType ' le boss change de fréquence !
			If boss.shipType = HIGH_FREQ 
				boss.image = Boss32bis
				boss.shootSequence = New TShootSeqSpirale
				boss.shoot.setFreq(10)
			Else
				boss.image = Boss32bisBlue
				boss.shootSequence = New TShootSeqTornado
				boss.shoot.setFreq(15)
			EndIf 
		EndIf
	
	End Function

End Type


Type TBoss32CL Extends TBoss

	Function spawnDefault:TBoss32CL(traj:TBSplines, dir = 0)
			channelsRate = 1.1 ' on augmente la vitesse de la musique
			Local Enemy:TBoss32CL = New TBoss32CL
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 1
			Enemy.hSpeed = 0
			Enemy.shipType = HIGH_FREQ
			Enemy.bonus = New TBonusBomb ' bonus de puissance
			Enemy.image = Boss32Close
			Enemy.shoot = New TShootArroz4
			Enemy.shoot.setFreq(50) 
			Enemy.hitpoints = 400000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)		
			Return Enemy
	End Function
	
	Function bossUpdate(boss:TEnemy) 
	
		Local realSpeed:Float = boss.speed/1000
		Local newpos:Int[] = boss.traj.update(realSpeed)
		boss.x = Int(newpos[0] - 100 - 10 * Cos(mapY) + Rand (-5,5))
		boss.y = Int(newpos[1] - 50 - 10 * Sin(mapY) + Rand (-5,5))	
	End Function

End Type

Type TBoss32CR Extends TBoss

	Function spawnDefault:TBoss32CR(traj:TBSplines, dir = 0)
			channelsRate = 1.1 ' on augmente la vitesse de la musique
			Local Enemy:TBoss32CR = New TBoss32CR
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 1
			Enemy.hSpeed = 0
			Enemy.shipType = HIGH_FREQ
			Enemy.bonus = New TBonusBomb ' bonus de puissance
			Enemy.image = Boss32Close
			Enemy.shoot = New TShootArroz4
			Enemy.shoot.setFreq(50) 
			Enemy.hitpoints = 400000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)		
			Return Enemy
	End Function
	
	Function bossUpdate(boss:TEnemy) 
		Local realSpeed:Float = boss.speed/1000
		Local newpos:Int[] = boss.traj.update(realSpeed)	
		boss.x = Int(newpos[0] + 100 + 10 * Cos(mapY) + Rand (-5,5))
		boss.y = Int(newpos[1] - 50 - 10 * Sin(mapY) + Rand (-5,5))
	End Function

End Type

Type TBoss32FL Extends TBoss

	Function spawnDefault:TBoss32FL(traj:TBSplines, dir = 0)
			channelsRate = 1.1 ' on augmente la vitesse de la musique
			Local Enemy:TBoss32FL = New TBoss32FL
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 1
			Enemy.hSpeed = 1
			Enemy.shipType = LOW_FREQ
			Enemy.bonus = New TBonusOneUp ' bonus de puissance
			Enemy.image = Boss32Far
			Enemy.shoot = New TShootCircle
			Enemy.shoot.setFreq(150) 
			Enemy.hitpoints = 200000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)		
			Return Enemy
	End Function
	
	Function bossUpdate(boss:TEnemy) 
		Local realSpeed:Float = boss.speed/1000
		Local newpos:Int[] = boss.traj.update(realSpeed)	
		boss.x = Int(newpos[0] - 70 * Cos (mapY/2))
		boss.y = Int(newpos[1] - 10 * Sin (mapY))
	End Function

End Type

Type TBoss32FR Extends TBoss

	Function spawnDefault:TBoss32FR(traj:TBSplines, dir = 0)
			channelsRate = 1.1 ' on augmente la vitesse de la musique
			Local Enemy:TBoss32FR = New TBoss32FR
			Enemy.traj = traj
			Enemy.x = traj.curKubSplineX.ValueInt(1)
			Enemy.y = traj.curKubSplineY.ValueInt(1)
			Enemy.speed = 1
			Enemy.hSpeed = 2
			Enemy.shipType = LOW_FREQ
			Enemy.bonus = New TBonusOneUp ' bonus de puissance
			Enemy.image = Boss32Far
			Enemy.shoot = New TShootArroz2
			Enemy.shoot.setFreq(20) 
			'Enemy.shootSequence = New TShootSeqRafaleG
			Enemy.hitpoints = 200000
			Enemy.xv = ImageWidth(Enemy.image)/2
			Enemy.yv = ImageHeight(Enemy.image)/2
			Enemy.dir = dir
			Enemy.score=Enemy.hitpoints;enemyList.addLast(Enemy)		
			Return Enemy
	End Function
	
	Function bossUpdate(boss:TEnemy) 
		Local realSpeed:Float = boss.speed/1000
		Local newpos:Int[] = boss.traj.update(realSpeed)
		boss.x = Int(newpos[0] + 70 * Cos (mapY/2))	
		boss.y = Int(newpos[1] - 10 * Sin (mapY))
	End Function

End Type


