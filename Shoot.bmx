

Type TShoot 

	Field freq
	
	Function fire(x,y,shootangle,decalage,freqType,shootNum)
	End Function
	
	Method setFreq(value)
		freq = value
	End Method 
	
	Function update(bullet:TBullet)
		If bullet.bouncing
			If bullet.x <= leftedge Then bullet.angle = 360-bullet.angle  
			If bullet.x >= rightedge Then bullet.angle = 360-bullet.angle
		EndIf
		bullet.x:+ Sin(bullet.angle)'*coeffX
		bullet.y:+ Cos(bullet.angle)'*coeffY
		SetRotation bullet.angle
	End Function
	
EndType 

Type TShootSequence
	
	Field shoot_Array:TShoot[]
	Field freq
	
	Method setFreq(value)
		freq = value
	End Method 
	
	Method getArray:TShoot[]()
		Return shoot_Array
	End Method  
	 
	Method fire(x,y,shootangle,decalage,freqType,shootNum)
	End Method 
	
End Type

Type TShootSimple1 Extends TShoot
	
	Function  fire(x,y,shootangle,decalage=0,freqType,shootNumber)
		TBullet.EnemyShoot(x,y,shootAngle,freqType)
	End Function 
	
End Type

Type TShootSimple2 Extends TShoot
	
	Function fire(x,y,shootangle,decalage=0,freqType,shootNumber)
		TBullet.EnemyShoot(x,y,shootAngle+5,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-5,freqType)
	End Function 
	
End Type

Type TShootSimple3 Extends TShoot
	
	Function  fire(x,y,shootangle,decalage=0,freqType,shootNumber)
		TBullet.EnemyShoot(x,y,shootAngle+10,freqType)
		TBullet.EnemyShoot(x,y,shootAngle,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-10,freqType)
	End Function 
	
End Type

Type TShootSimple4 Extends TShoot
	
	Function fire(x,y,shootangle,decalage=0,freqType,shootNumber)
		TBullet.EnemyShoot(x,y,shootAngle+5,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-5,freqType)
		TBullet.EnemyShoot(x,y,shootAngle+15,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-15,freqType)
	End Function 
	
End Type

Type TShootSimple5 Extends TShoot
	
	Function  fire(x,y,shootangle,decalage=0,freqType,shootNumber)
		TBullet.EnemyShoot(x,y,shootAngle+20,freqType)
		TBullet.EnemyShoot(x,y,shootAngle+10,freqType)
		TBullet.EnemyShoot(x,y,shootAngle,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-10,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-20,freqType)
	End Function 
	
End Type


Type TShootCircle Extends TShoot
	
	Function fire(x,y,shootangle,decalage=0,freqType,shootNumber)
		For Local k=0 To 359 Step 36
			TBullet.EnemyShoot(x,y,k,freqType)
		Next
	End Function 
	
End Type

Type TShootArroz1 Extends TShoot
	
	Function fire(x,y,shootangle,decalage,freqType,shootNum)
		TBullet.EnemyShoot(x,y,decalage,freqType)
	End Function 
	
End Type

Type TShootArroz2 Extends TShoot
	
	Function fire(x,y,shootangle,decalage,freqType,shootNum)
		For Local k=0 To 359 Step 180
			TBullet.EnemyShoot(x,y,k+decalage,freqType)
		Next
	End Function 
	
End Type

Type TShootArroz3 Extends TShoot
	
	Function fire(x,y,shootangle,decalage,freqType,shootNum)
		For Local k=0 To 359 Step 90
			TBullet.EnemyShoot(x,y,k+decalage,freqType)
		Next
	End Function 
	
End Type

Type TShootArroz4 Extends TShoot
	
	Function fire(x,y,shootangle,decalage,freqType,shootNum)
		For Local k=0 To 359 Step 45
			TBullet.EnemyShoot(x,y,k+decalage,freqType)
		Next
	End Function 
	
End Type

Type TShootSimple2Choice Extends TShoot
	
	Function  fire(x,y,shootangle,decalage,freqType,shootNum)
		Print shootangle
		TBullet.EnemyShoot(x,y,shootAngle,freqType)
	End Function 
	
End Type

Type TShootSeqHalfCircle Extends TShootSequence
	
	Field shoot_Array:TShoot[12]
	Field decalage = 0
	
	Method New()            
	   	shoot_Array[0] = New TShootSimple2Choice
		shoot_Array[1] = New TShootSimple2Choice 
		shoot_Array[2] = New TShootSimple2Choice 
		shoot_Array[3] = New TShootSimple2Choice 
		shoot_Array[4] = New TShootSimple2Choice
		shoot_Array[5] = New TShootSimple2Choice 
		shoot_Array[6] = New TShootSimple2Choice 
		shoot_Array[7] = New TShootSimple2Choice 
		shoot_Array[8] = New TShootSimple2Choice
		shoot_Array[9] = New TShootSimple2Choice 
		shoot_Array[10] = New TShootSimple2Choice 
		shoot_Array[11] = New TShootSimple2Choice 
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			shoot_Array[shootNum].fire(x,y,shootangle+ShootNum*5,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y,shootangle-ShootNum*5,decalage,freqType,shootNum)
		EndIf
	End Method 

End Type