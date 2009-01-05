AutoMidHandle(True)

Global EnemyRed1:TImage = LoadImage("images/triangle.png")
Global EnemyRed2:TImage = LoadImage("images/enemy3.png")
Global EnemyRed3:TImage = LoadImage("images/enemyRed3.png")

Global EnemyBlue1:TImage = LoadImage("images/losangeDouble.png")
Global EnemyBlue2:TImage = LoadImage("images/enemyBlue2.png")
Global EnemyBlue3:TImage = LoadImage("images/enemyBlue3.png")
Global EnemyBlue4:TImage = LoadImage("images/enemyBlue4.png")

Type TEnemyBlue1 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue1(posx,posy, dir = 0)
		Local Enemy:TEnemyBlue1 = New TEnemyBlue1
		Enemy.speed = 2
		Enemy.hSpeed = 1.5
		Enemy.shipType = LOW_FREQ
		If Rand(30) = 2 Then Enemy.bonus = New TBonusSlowMo ' provisoire
		Enemy.image = EnemyBlue1
		Enemy.shoot = New TShootCircle
		Enemy.shoot.setFreq(40)
		Enemy.hitpoints = 200
		Enemy.x = posx
		Enemy.y = posy
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue2 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue2(posx,posy, dir = 0)
		Local Enemy:TEnemyBlue2 = New TEnemyBlue2
		Enemy.speed = 0.5
		Enemy.hSpeed = 3
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusOneUp ' toujours un bonus de vie ?
		Enemy.image = EnemyBlue2
		Enemy.shoot = New TShootSimple5
		Enemy.shoot.setFreq(50)
		Enemy.hitpoints = 10000
		Enemy.x = posx
		Enemy.y = posy
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue3 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue3(posx,posy, dir = 0)
		Local Enemy:TEnemyBlue3 = New TEnemyBlue3
		Enemy.speed = 0
		Enemy.hSpeed = 2
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusBomb ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue3
		Enemy.shoot = New TShootArroz4
		Enemy.shoot.setFreq(20)
		Enemy.hitpoints = 20000
		Enemy.x = posx
		Enemy.y = posy
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyBlue4 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyBlue4(posx,posy, dir = 0)
		Local Enemy:TEnemyBlue4 = New TEnemyBlue4
		Enemy.speed = 0
		Enemy.hSpeed = 2
		Enemy.shipType = LOW_FREQ
		Enemy.bonus = New TBonusBomb ' toujours un bonus de bombe ?
		Enemy.image = EnemyBlue4
		Enemy.shoot = New TShootSimple4
		Enemy.shoot.setFreq(50)
		Enemy.hitpoints = 30000
		Enemy.x = posx
		Enemy.y = posy
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyRed1 Extends TEnemy

' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed1(posx,posy, dir = 0)
		Local Enemy:TEnemyRed1 = New TEnemyRed1
		Enemy.speed = 2
		Enemy.hSpeed = 0
		Enemy.shipType = HIGH_FREQ
		'If Rand(30) = 1 Then Enemy.bonus = New TBonusWidth ' provisoire
		If Rand(30) = 2 Then Enemy.bonus = New TBonusSlowMo ' provisoire
		'If Rand(30) = 3 Then Enemy.bonus = New TBonusOneUp ' provisoire
		'If Rand(30) = 4 Then Enemy.bonus = New TBonusBomb ' provisoire
		Enemy.image = EnemyRed1
		Enemy.shoot = New TShootSimple3
		Enemy.shoot.setFreq(10)
		Enemy.shootSequence = New TShootSeqHalfCircle 
		Enemy.hitpoints = 200
		Enemy.x = posx
		Enemy.y = posy
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function
End Type

Type TEnemyRed2 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed2(posx,posy, dir = 0)
		Local Enemy:TEnemyRed2 = New TEnemyRed2
		Enemy.speed = 3
		Enemy.hSpeed = 4
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = EnemyRed2
		Enemy.shoot = New TShootArroz4
		Enemy.shoot.setFreq(30) 
		Enemy.hitpoints = 5000
		Enemy.x = posx
		Enemy.y = posy
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type

Type TEnemyRed3 Extends TEnemy

	' spawn spécifique à la classe avec attributs prédéfinis
	Function spawnDefault:TEnemyRed3(posx,posy, dir = 0)
		Local Enemy:TEnemyRed3 = New TEnemyRed3
		Enemy.speed = 0
		Enemy.hSpeed = 4
		Enemy.shipType = HIGH_FREQ
		Enemy.bonus = New TBonusWidth ' bonus de puissance
		Enemy.image = EnemyRed3
		Enemy.shoot = New TShootArroz1
		Enemy.shoot.setFreq(30) 
		Enemy.hitpoints = 45000
		Enemy.x = posx
		Enemy.y = posy
		Enemy.xv = ImageWidth(Enemy.image)/2
		Enemy.yv = ImageHeight(Enemy.image)/2
		Enemy.dir = dir
		enemyList.addLast(Enemy)
		Return Enemy
	End Function

End Type
