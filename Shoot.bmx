

Type TShoot 

	Field freq
	
	Function fire(x,y,shootangle,decalage,freqType)
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

Type TShootSimple1 Extends TShoot
	
	Function  fire(x,y,shootangle,decalage=0,freqType)
		TBullet.EnemyShoot(x,y,shootAngle,freqType)
	End Function 
	
End Type

Type TShootSimple2 Extends TShoot
	
	Function fire(x,y,shootangle,decalage=0,freqType)
		TBullet.EnemyShoot(x,y,shootAngle+5,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-5,freqType)
	End Function 
	
End Type

Type TShootSimple3 Extends TShoot
	
	Function  fire(x,y,shootangle,decalage=0,freqType)
		TBullet.EnemyShoot(x,y,shootAngle+10,freqType)
		TBullet.EnemyShoot(x,y,shootAngle,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-10,freqType)
	End Function 
	
End Type

Type TShootSimple4 Extends TShoot
	
	Function fire(x,y,shootangle,decalage=0,freqType)
		TBullet.EnemyShoot(x,y,shootAngle+5,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-5,freqType)
		TBullet.EnemyShoot(x,y,shootAngle+15,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-15,freqType)
	End Function 
	
End Type

Type TShootSimple5 Extends TShoot
	
	Function  fire(x,y,shootangle,decalage=0,freqType)
		TBullet.EnemyShoot(x,y,shootAngle+20,freqType)
		TBullet.EnemyShoot(x,y,shootAngle+10,freqType)
		TBullet.EnemyShoot(x,y,shootAngle,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-10,freqType)
		TBullet.EnemyShoot(x,y,shootAngle-20,freqType)
	End Function 
	
End Type


Type TShootCircle Extends TShoot
	
	Function fire(x,y,shootangle,decalage=0,freqType)
		For Local k=0 To 359 Step 36
			TBullet.EnemyShoot(x,y,k,freqType)
		Next
	End Function 
	
End Type

Type TShootArroz1 Extends TShoot
	
	Function fire(x,y,shootangle,decalage,freqType)
		TBullet.EnemyShoot(x,y,decalage,freqType)
	End Function 
	
End Type

Type TShootArroz2 Extends TShoot
	
	Function fire(x,y,shootangle,decalage,freqType)
		For Local k=0 To 359 Step 180
			TBullet.EnemyShoot(x,y,k+decalage,freqType)
		Next
	End Function 
	
End Type

Type TShootArroz3 Extends TShoot
	
	Function fire(x,y,shootangle,decalage,freqType)
		For Local k=0 To 359 Step 90
			TBullet.EnemyShoot(x,y,k+decalage,freqType)
		Next
	End Function 
	
End Type

Type TShootArroz4 Extends TShoot
	
	Function fire(x,y,shootangle,decalage,freqType)
		For Local k=0 To 359 Step 45
			TBullet.EnemyShoot(x,y,k+decalage,freqType)
		Next
	End Function 
	
End Type