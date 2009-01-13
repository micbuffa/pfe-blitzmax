AutoMidHandle(True)

Incbin "images/triangle.png"
Incbin "images/enemy3.png"
Incbin "images/enemyRed3.png"
Incbin "images/losangeDouble.png"
Incbin "images/enemyBlue2.png"
Incbin "images/enemyBlue3.png"
Incbin "images/enemyBlue4.png"
Incbin "images/bossBlue1.png"
Incbin "images/boss1tribal.png"


Global EnemyRed1:TImage = LoadImage("incbin::images/triangle.png")
Global EnemyRed2:TImage = LoadImage("incbin::images/enemy3.png")
Global EnemyRed3:TImage = LoadImage("incbin::images/enemyRed3.png")

Global EnemyBlue1:TImage = LoadImage("incbin::images/losangeDouble.png")
Global EnemyBlue2:TImage = LoadImage("incbin::images/enemyBlue2.png")
Global EnemyBlue3:TImage = LoadImage("incbin::images/enemyBlue3.png")
Global EnemyBlue4:TImage = LoadImage("incbin::images/enemyBlue4.png")

Global Boss1:TImage = LoadImage("incbin::images/bossBlue1.png")
Global Boss2:TImage = LoadImage("incbin::images/boss1tribal.png")

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
		Enemy.shoot.setFreq(20)
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
		Enemy.shoot = New TShootSimple3
		Enemy.shoot.setFreq(50)
		'Enemy.shootSequence = New TShootSeqHalfCircle 
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
		Enemy.hSpeed = 4
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = EnemyRed2
		Enemy.shoot = New TShootArroz4
		Enemy.shoot.setFreq(30) 
		Enemy.hitpoints = 5000
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
		Enemy.speed = 2
		Enemy.hSpeed = 4
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = EnemyRed3
		Enemy.shoot = New TShootArroz1
		Enemy.shoot.setFreq(30) 
		Enemy.hitpoints = 45000
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
		Local Enemy:TBoss1 = New TBoss1
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
		Enemy.speed = 1
		Enemy.hSpeed = 0
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = Boss1
		Enemy.shoot = New TShootCross
		Enemy.shoot.setFreq(60) 
		Enemy.hitpoints = 1000000
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

Function bossUpdate(boss:TEnemy) 
	'1ère transformation
	If boss.hitpoints < 600000 And boss.speed = 1
		Local currentX% = boss.x ; Local currentY% = boss.y
		Local traj:TBSplines = TBSplines.Create([1,2,3,4,5],[currentX,200,450,550,currentX], [currentY,150,50,150,currentY])
		boss.traj = traj
		boss.shoot = New TShootArroz4
		boss.speed = 3
		boss.shoot.setFreq(10)
	EndIf
	'2ème transformation
	If boss.hitpoints < 300000 And boss.speed = 3
		boss.shoot = New TShootCircle
		boss.shoot.setFreq(15)
		boss.speed = 8
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
		Local Enemy:TBoss2 = New TBoss2
		Enemy.traj = traj
		Enemy.x = traj.curKubSplineX.ValueInt(1)
		Enemy.y = traj.curKubSplineY.ValueInt(1)
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
	'1ère transformation
	If boss.hitpoints < 1200000 And boss.speed = 3
		Local currentX% = boss.x ; Local currentY% = boss.y
		Local traj:TBSplines = TBSplines.Create([1,2,3,4,5],[currentX,200,450,550,currentX], [currentY,400,100,400,currentY])
		boss.traj = traj
		boss.shoot = New TShootArroz4
		boss.speed = 5
		boss.shoot.setFreq(40)
	EndIf
	'2ème transformation
	If boss.hitpoints < 600000 And boss.speed = 5
		boss.shoot = New TShootCircle
		boss.shoot.setFreq(60)
		boss.speed = 7
	EndIf
	
	'Tir d'ennemis sur le joueur
	If loopsCount Mod boss.shoot.freq * 1000 = 0
		Local player:TPlayer = TPlayer.getPlayer()
		Local currentX% = boss.x ; Local currentY% = boss.y
		Local targetX% = player.x ; Local targetY% = player.y 
		Local traj:TBSplines = TBSplines.Create([1,2,3],[currentX,targetX,400], [currentY,targetY,700])
		TEnemyRed1.spawnDefault(traj)
	EndIf

End Function


End Type



