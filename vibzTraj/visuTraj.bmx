' gives you a user defined type at hand for easy generating of curves or pathes with cubic splines
Strict

Graphics 1024,768,0, 60
SetClsColor 77, 77, 77

Include "Bsplines.bmx"

Local rCurve:Int =Rand(0, 255)
Local gCurve:Int =Rand(0, 255)
Local bCurve:Int =255 -rCurve
Local curvStep:Float =.05

Local newDataT:Int[]
Local newDataX:Int[]
Local newDataY:Int[]

Local setEditCurve:Int = False
Local pixelPerSecond:Float = 200
Local radius:Int = 10
Local modif:Int = 0
Local setNewCurve:Int = False
Local speed:Float = 0.001

Local initDataT:Int[] = [1, 2, 3]
Local initDataX:Int[] = [230, 400, 900]
Local initDataY:Int[] = [100, 400, 100]

Local traj:TBSplines = TBSplines.Create(initDataT , initDataX , initDataY) 
traj.update(speed)

' Main loop
Repeat
	Cls
	SetColor 0, 0, 0
	DrawRect 262, 84, 500, 600 
	SetColor 50, 50, 50
	DrawRect 112, 84, 150, 600 
	DrawRect 762 , 84 , 150 , 600
	SetColor 200 , 200 , 200
	DrawLine 202, 24, 820, 24
	DrawLine 820, 24, 820, 744
	DrawLine 202, 744, 820, 744
	DrawLine 202, 24, 202, 744
	If KeyHit(KEY_SPACE)
		setNewCurve =Not(setNewCurve)
		newDataT = newDataT[..0]
		newDataX = newDataX[..0]
		newDataY = newDataY[..0]
	EndIf
	
	If KeyHit(KEY_E)
		setEditCurve=Not(setEditCurve)
	EndIf
	
	If KeyHit(KEY_U) 
		speed = speed * 2
	EndIf
		
	If KeyHit(KEY_D) 
		speed = speed / 2
	EndIf
	
	If setNewCurve Then
		setEditCurve = False
		If MouseHit(1) Then
			newDataT = newDataT[..newDataT.Length +1]
			newDataX = newDataX[..newDataT.Length]
			newDataY = newDataY[..newDataT.Length]
			newDataT[newDataT.Length -1] =newDataT.Length
			newDataX[newDataT.Length -1] =MouseX()
			newDataY[newDataT.Length -1] =MouseY()
		End If
	
	  	SetColor 200, 200, 0
		For Local curT:Float =1 To newDataT.Length
			DrawOval newDataX[curT -1] - radius, newDataY[curT -1] - radius, 2*radius, 2*radius
		Next
		If KeyHit(KEY_RETURN)
			If newDataT.Length > 0 Then
				initDataT = newDataT
				initDataX = newDataX
				initDataY = newDataY
				traj.updatePoints(newDataT , newDataX , newDataY) 
				traj.update(0.002)
				
				rCurve =Rand(0, 255)
				gCurve =Rand(0, 255)
				bCurve =255 -rCurve
			EndIf
			setNewCurve =False
	  	EndIf
	EndIf 

	If setEditCurve Then
		If MouseDown(1)
			For Local i:Int = EachIn initDataT
				If (MouseX() < (initDataX[i - 1] + radius) ) And (MouseX() > (initDataX[i - 1] - radius) ) And (MouseY() < (initDataY[i - 1] + radius) ) And (MouseY() > (initDataY[i - 1] - radius) And (modif = 0 Or modif = i))
					modif = i
				EndIf
				If modif <> 0
					initDataX[modif-1] = MouseX() 
					initDataY[modif-1] = MouseY() 
					traj.updatePoints(initDataT , initDataX , initDataY) 
					'traj.update(0.002)
				EndIf
			Next
		Else
			modif = 0
		EndIf
	EndIf
	Local t:String = ""
	' draw the given points
	SetColor 0, 200, 0
	For Local curT:Float = traj.getCurKubSplineX().getDataX()[0] To traj.getCurKubSplineX().getDataX()[traj.getCurKubSplineX().getDataCount() - 1]
		t = "(" + (traj.getCurKubSplineX().ValueInt(curT) - 112) + "," + (traj.getCurKubSplineY().ValueInt(curT) - 84) + ")"
		If setEditCurve And modif = curT
			SetColor 255, 160, 0
			DrawText t , 950 , 600 + 10 * curT
			DrawOval traj.getCurKubSplineX().ValueInt(curT) - radius , traj.getCurKubSplineY().ValueInt(curT) - radius , 2*radius, 2*radius
			SetColor 0 , 200 , 0
		Else
			DrawText t , 950 , 600 + 10 * curT
			DrawOval traj.getCurKubSplineX().ValueInt(curT) - radius, traj.getCurKubSplineY().ValueInt(curT) - radius, 2*radius, 2*radius
		EndIf
	Next
	
	If Not(setNewCurve) Then
		SetColor 255, 255, 255
		t= "Space - Start new curve (set points with left mouse clicks)"
		DrawText t, 10, 10
	Else
		SetColor 200, 200, 0
		t ="Return -finish New curve"
		DrawText t, 10, 10
	End If  
	If Not(setEditCurve ) Then
		SetColor 255, 255, 255
		t ="e -change to edit the curve"
		DrawText t, 750, 10
	Else
		SetColor 255, 160, 0
		t ="e -change to stop edit the curve"
		DrawText t, 750, 10
	End If
	
	
	traj.update(speed)
	
	Flip

Until KeyHit(KEY_ESCAPE)

End
