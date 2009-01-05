

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

Type TShootCross Extends TShoot
	
	Function fire(x,y,shootangle,decalage,freqType,shootNum)
		TBullet.EnemyShoot(x,y,shootangle,freqType)
		TBullet.EnemyShoot(x,y,shootangle+90,freqType)
		TBullet.EnemyShoot(x,y,shootangle+180,freqType)
		TBullet.EnemyShoot(x,y,shootangle+270,freqType)
	End Function 
	
End Type

Type TShootSimple2Choice Extends TShoot
	
	Function  fire(x,y,shootangle,decalage,freqType,shootNum)
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


Type TShootSeqRafaleG Extends TShootSequence
	Field shoot_Array:TShoot[4]

	Method New()            
	   	shoot_Array[0] = New TShootSimple3
		shoot_Array[1] = New TShootSimple3
		shoot_Array[2] = New TShootSimple3
		shoot_Array[3] = New TShootSimple3
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			shoot_Array[shootNum].fire(x,y,shootangle+20+ShootNum*2,decalage,freqType,shootNum)
		EndIf
	End Method 

End Type

Type TShootSeqRafaleD Extends TShootSequence
	Field shoot_Array:TShoot[4]

	Method New()            
	   	shoot_Array[0] = New TShootSimple3
		shoot_Array[1] = New TShootSimple3
		shoot_Array[2] = New TShootSimple3
		shoot_Array[3] = New TShootSimple3
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			shoot_Array[shootNum].fire(x,y,shootangle-20-ShootNum*2,decalage,freqType,shootNum)
		EndIf
	End Method 

End Type

Type TShootSeqLaser1 Extends TShootSequence
	Field shoot_Array:TShoot[6]

	Method New()            
	   	shoot_Array[0] = New TShootSimple1
		shoot_Array[1] = New TShootSimple1
		shoot_Array[2] = New TShootSimple1
		shoot_Array[3] = New TShootSimple1
		shoot_Array[4] = New TShootSimple1
		shoot_Array[5] = New TShootSimple1
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			shoot_Array[shootNum].fire(x,y,shootangle,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+5,shootangle,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+10,shootangle,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+15,shootangle,decalage,freqType,shootNum)
		EndIf
	End Method 

End Type

Type TShootSeqLaser2 Extends TShootSequence
	Field shoot_Array:TShoot[6]

	Method New()            
	   	shoot_Array[0] = New TShootSimple1
		shoot_Array[1] = New TShootSimple1
		shoot_Array[2] = New TShootSimple1
		shoot_Array[3] = New TShootSimple1
		shoot_Array[4] = New TShootSimple1
		shoot_Array[5] = New TShootSimple1
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			shoot_Array[shootNum].fire(x,y,shootangle-5,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+5,shootangle-5,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+10,shootangle-5,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+15,shootangle-5,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y,shootangle+5,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+5,shootangle+5,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+10,shootangle+5,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+15,shootangle+5,decalage,freqType,shootNum)
		EndIf
	End Method 

End Type


Type TShootSeqLaser3 Extends TShootSequence
	Field shoot_Array:TShoot[6]

	Method New()            
	   	shoot_Array[0] = New TShootSimple1
		shoot_Array[1] = New TShootSimple1
		shoot_Array[2] = New TShootSimple1
		shoot_Array[3] = New TShootSimple1
		shoot_Array[4] = New TShootSimple1
		shoot_Array[5] = New TShootSimple1
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			shoot_Array[shootNum].fire(x,y,shootangle-10,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+5,shootangle-10,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+10,shootangle-10,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+15,shootangle-10,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y,shootangle+10,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+5,shootangle+10,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+10,shootangle+10,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+15,shootangle+10,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y,shootangle,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+5,shootangle,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+10,shootangle,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x,y+15,shootangle,decalage,freqType,shootNum)
		EndIf
	End Method 

End Type




Type TShootSeqCloud Extends TShootSequence
	Field shoot_Array:TShoot[4]

	Method New()            
	   	shoot_Array[0] = New TShootSimple1
		shoot_Array[1] = New TShootSimple1
		shoot_Array[2] = New TShootSimple1
		shoot_Array[3] = New TShootSimple1
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			shoot_Array[shootNum].fire(x+RndDouble!()*5,y+RndDouble!()*5,shootangle+Rand(1,10),decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x+RndDouble!()*5,y+RndDouble!()*5,shootangle-Rand(1,10),decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x+RndDouble!()*5,y+RndDouble!()*5,shootangle+Rand(1,10),decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x+RndDouble!()*5,y+RndDouble!()*5,shootangle-Rand(1,10),decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x+RndDouble!()*5,y+RndDouble!()*5,shootangle+Rand(1,10),decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x+RndDouble!()*5,y+RndDouble!()*5,shootangle-Rand(1,10),decalage,freqType,shootNum)
		End If
	End Method
	
End Type

Type TShootSeqBalaiG Extends TShootSequence
	Field shoot_Array:TShoot[10]

	Method New()            
	   	shoot_Array[0] = New TShootSimple1
		shoot_Array[1] = New TShootSimple1
		shoot_Array[2] = New TShootSimple1
		shoot_Array[3] = New TShootSimple1
		shoot_Array[4] = New TShootSimple1
		shoot_Array[5] = New TShootSimple1
		shoot_Array[6] = New TShootSimple1
		shoot_Array[7] = New TShootSimple1
		shoot_Array[8] = New TShootSimple1
		shoot_Array[9] = New TShootSimple1
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			shoot_Array[shootNum].fire(x,y,shootangle+ShootNum*10,decalage,freqType,shootNum)
		EndIf
	End Method
	
End Type

Type TShootSeqBalaiD Extends TShootSequence
	Field shoot_Array:TShoot[10]

	Method New()            
	   	shoot_Array[0] = New TShootSimple1
		shoot_Array[1] = New TShootSimple1
		shoot_Array[2] = New TShootSimple1
		shoot_Array[3] = New TShootSimple1
		shoot_Array[4] = New TShootSimple1
		shoot_Array[5] = New TShootSimple1
		shoot_Array[6] = New TShootSimple1
		shoot_Array[7] = New TShootSimple1
		shoot_Array[8] = New TShootSimple1
		shoot_Array[9] = New TShootSimple1
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			shoot_Array[shootNum].fire(x,y,shootangle-ShootNum*10,decalage,freqType,shootNum)
		EndIf
	End Method
	
End Type

Type TShootSeqBalaiG2 Extends TShootSequence
	Field shoot_Array:TShoot[20]

	Method New()            
	   	shoot_Array[0] = New TShootSimple1
		shoot_Array[1] = New TShootSimple1
		shoot_Array[2] = New TShootSimple1
		shoot_Array[3] = New TShootSimple1
		shoot_Array[4] = New TShootSimple1
		shoot_Array[5] = New TShootSimple1
		shoot_Array[6] = New TShootSimple1
		shoot_Array[7] = New TShootSimple1
		shoot_Array[8] = New TShootSimple1
		shoot_Array[9] = New TShootSimple1
		shoot_Array[10] = New TShootSimple1
		shoot_Array[11] = New TShootSimple1
		shoot_Array[12] = New TShootSimple1
		shoot_Array[13] = New TShootSimple1
		shoot_Array[14] = New TShootSimple1
		shoot_Array[15] = New TShootSimple1
		shoot_Array[16] = New TShootSimple1
		shoot_Array[17] = New TShootSimple1
		shoot_Array[18] = New TShootSimple1
		shoot_Array[19] = New TShootSimple1
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			If shootNum <10
				shoot_Array[shootNum].fire(x,y,shootangle+ShootNum*10,decalage,freqType,shootNum)
			Else 
				shoot_Array[shootNum].fire(x,y,shootangle+100-(ShootNum-10)*10,decalage,freqType,shootNum)
			End If
		EndIf
	End Method
End Type

Type TShootSeqBalaiD2 Extends TShootSequence
	Field shoot_Array:TShoot[20]

	Method New()            
	   	shoot_Array[0] = New TShootSimple1
		shoot_Array[1] = New TShootSimple1
		shoot_Array[2] = New TShootSimple1
		shoot_Array[3] = New TShootSimple1
		shoot_Array[4] = New TShootSimple1
		shoot_Array[5] = New TShootSimple1
		shoot_Array[6] = New TShootSimple1
		shoot_Array[7] = New TShootSimple1
		shoot_Array[8] = New TShootSimple1
		shoot_Array[9] = New TShootSimple1
		shoot_Array[10] = New TShootSimple1
		shoot_Array[11] = New TShootSimple1
		shoot_Array[12] = New TShootSimple1
		shoot_Array[13] = New TShootSimple1
		shoot_Array[14] = New TShootSimple1
		shoot_Array[15] = New TShootSimple1
		shoot_Array[16] = New TShootSimple1
		shoot_Array[17] = New TShootSimple1
		shoot_Array[18] = New TShootSimple1
		shoot_Array[19] = New TShootSimple1
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			If shootNum <10
				shoot_Array[shootNum].fire(x,y,shootangle-ShootNum*10,decalage,freqType,shootNum)
			Else 
				shoot_Array[shootNum].fire(x,y,shootangle-100+(ShootNum-10)*10,decalage,freqType,shootNum)
			End If
		EndIf
	End Method
	
End Type

Type TShootSeqPyramid Extends TShootSequence
	Field shoot_Array:TShoot[5]

	Method New()            
	   	shoot_Array[0] = New TShootSimple1
		shoot_Array[1] = New TShootSimple2
		shoot_Array[2] = New TShootSimple3
		shoot_Array[3] = New TShootSimple4
		shoot_Array[4] = New TShootSimple5
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			shoot_Array[shootNum].fire(x,y,shootangle,decalage,freqType,shootNum)
		EndIf
	End Method 

End Type

Type TShootSeqInvert Extends TShootSequence
	Field shoot_Array:TShoot[5]
	
	Method New()            
	   	shoot_Array[0] = New TShootSimple2Choice 
		shoot_Array[1] = New TShootSimple2Choice 
		shoot_Array[2] = New TShootSimple2Choice 
		shoot_Array[3] = New TShootSimple2Choice 
		shoot_Array[4] = New TShootSimple2Choice 
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
				shoot_Array[shootNum].fire(x+10,y,shootangle+5,decalage,freqType,shootNum)
				shoot_Array[shootNum].fire(x+20,y,shootangle+10,decalage,freqType,shootNum)
				shoot_Array[shootNum].fire(x-10,y,shootangle-5,decalage,freqType,shootNum)
				shoot_Array[shootNum].fire(x-20,y,shootangle-10,decalage,freqType,shootNum)
		End If
	End Method
	
End Type

Type TShootSeqCross Extends TShootSequence
	Field shoot_Array:TShoot[5]
	
	Method New()            
	   	shoot_Array[0] = New TShootSimple2Choice 
		shoot_Array[1] = New TShootSimple2Choice 
		shoot_Array[2] = New TShootSimple2Choice 
		shoot_Array[3] = New TShootSimple2Choice 
		shoot_Array[4] = New TShootSimple2Choice 
    End Method

	Method fire(x,y,shootangle,decalage,freqType,shootNum)
		If shootNum < shoot_Array.length 
			shoot_Array[shootNum].fire(x+10,y,shootangle+90,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x+20,y,shootangle+180,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x-10,y,shootangle+270,decalage,freqType,shootNum)
			shoot_Array[shootNum].fire(x-20,y,shootangle,decalage,freqType,shootNum)
		EndIf
	End Method
	
End Type


