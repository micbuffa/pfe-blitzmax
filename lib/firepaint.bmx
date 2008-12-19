Include "color.bmx"

Const GRAVITY#=.15

Global sparks:TList=New TList

Type TEntity

	Field link:TLink

	Method remove()
		link.remove
	End Method

	Method AddLast( list:TList )
		link=list.AddLast( Self )
	End Method

	Method Update() Abstract

End Type

Type TSpark Extends TEntity

	Field x#,y#,xs#,ys#
	Field color[3],rot#,rots#
	Field image:TImage

	Method Update()

		ys:+GRAVITY
		x:+xs
		y:+ys

		If x<0 Or x>=GraphicsWidth() Or y>=GraphicsHeight()
			remove
			Return
		EndIf

		rot=rot+rots
		SetHandle 8,8
		SetRotation rot#
		'SetAlpha 1-y/GraphicsHeight()
		SetColor color[0],color[1],color[2]
		'DrawRect x,y,17,17
		'SetBlend lightblend
		DrawImage image,x,y
		SetHandle 0,0
		'SetBlend alphablend
		SetRotation 0
		SetAlpha 1
	End Method

	Function CreateSpark:TSpark( x#,y#,color[],image:TImage )
		Local spark:TSpark=New TSpark
		Local an#=Rnd(360),sp#=Rnd(3,5)
		spark.x=x
		spark.y=y
		spark.xs=Cos(an)*sp
		spark.ys=Sin(an)*sp
		spark.rots=Rnd(-15,15)
		spark.color=color
		spark.image = image
		spark.AddLast sparks
		Return spark
	End Function

End Type

Function UpdateEntities( list:TList )
	For Local entity:TEntity=EachIn list
		entity.Update
	Next
End Function

Function firepaint(centerX,centerY,image:TImage, sparksNumber = 3)

	Local show_debug',color_rot# ' à sortir d'ici si on veut avoir autre chose que du rouge
	
	SetBlend MASKBLEND

	'color_rot:+1.5
	Local color_rot = loopsCount*10 Mod 360
	Local color:TRGBColor=HSVColor( color_rot,1,1 ).RGBColor()
	Local rgb[]=[Int(color.Red()*255),Int(color.Green()*255),Int(color.Blue()*255)]
	
	For Local k=1 To sparksNumber
		TSpark.CreateSpark centerX,centerY,rgb,image
	Next

	'SetBlend LIGHTBLEND
	
	'SetAlpha 1
	'SetRotation 0
	'SetColor 255,255,255
	
	SetBlend alphablend

End Function


Type TFocusSpark Extends TEntity

	Field x#,y#,xs#,ys#
	Field color[3],rot#,rots#
	Field image:TImage


	Field focused:TGameObject

	Method update()
		'ys:+GRAVITY
		xs :+ 0.03
		ys :+ 0.03
		x:+ (focused.x - x)*Exp(xs) / 50
		y:+ (focused.y - y)*Exp(ys) / 50

		If (Abs(focused.x-x)<10 And Abs(focused.y-y)<10)
			remove
			Return
		EndIf

		SetColor color[0],color[1],color[2]
		'DrawRect x,y,17,17
		'SetBlend lightblend
		SetScale 0.15,0.15
		DrawImage image,x,y
		
		SetRotation 360-ATan2(Abs(focused.y - y),Abs(focused.x - x))
		SetScale 0.1,0.1
		DrawImage image,x,y
		'DrawRect x,y,5,1
		SetHandle 0,0
		'SetBlend alphablend
		SetRotation 0
		SetAlpha 1
		SetScale 1,1
	End Method

	Function createSpark:TFocusSpark( x#,y#,color[],image:TImage,focused:TGameObject )
		Local spark:TFocusSpark=New TFocusSpark
		spark.x=x
		spark.y=y
		spark.xs=0
		spark.ys=0
		'spark.rots=Rnd(-15,15)
		spark.color=color
		spark.image = image
		spark.focused = focused
		spark.AddLast sparks
		Return spark

	End Function

End Type

Type TRevFocusSpark Extends TEntity

	Field x#,y#,xs#,ys#
	Field color[3],rot#,rots#
	Field image:TImage
	Field focused:TGameObject

	Method update()
		xs :+ 0.03
		ys :+ 0.03
		x:- (focused.x - x)*Exp(xs) / 50
		y:- (focused.y - y)*Exp(ys) / 50

		If (Abs(focused.x-x)>300 And Abs(focused.y-y)>300)
			remove
			Return
		EndIf

		SetColor color[0],color[1],color[2]
		'SetBlend lightblend
		SetScale 0.3,0.3
		DrawImage image,x,y
		SetRotation 360-ATan2(Abs(focused.y - y),Abs(focused.x - x))
		SetScale 0.1,0.1
		DrawImage image,x,y
		SetHandle 0,0
		'SetBlend alphablend
		SetRotation 0
		SetAlpha 1
		SetScale 1,1
	End Method

	Function createSpark:TRevFocusSpark( x#,y#,color[],image:TImage,focused:TGameObject )
		Local spark:TRevFocusSpark=New TRevFocusSpark
		spark.x=x
		spark.y=y
		spark.xs=0
		spark.ys=0
		spark.color=color
		spark.image = image
		spark.focused = focused
		spark.AddLast sparks
		Return spark

	End Function

EndType 


Function focusFire(image:TImage, focused:TGameObject, mSparks, freq, radius, colors[])
	Local fx = focused.x
	Local fy = focused.y
	Local maxSparks = mSparks
	If loopsCount Mod freq = 0
		For Local k=0 To maxSparks
			TFocusSpark.CreateSpark fx+Cos(k*360/maxSparks)*radius+Rand(-50,50),fy+Sin(k*360/maxSparks)*radius+Rand(-50,50),colors,image, focused
		Next
	EndIf
End Function

Function reverseFocusFire(image:TImage, focused:TGameObject, mSparks, freq, radius, colors[])
	Local fx = focused.x
	Local fy = focused.y
	Local maxSparks = mSparks
	If loopsCount Mod freq = 0
		For Local k=0 To maxSparks
			TRevFocusSpark.CreateSpark fx+Rand(-50,50),fy+Rand(-50,50),colors,image, focused
		Next
	EndIf
End Function


