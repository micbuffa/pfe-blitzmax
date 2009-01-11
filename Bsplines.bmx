Type TBSplines
	Field curKubSplineX:appKubSpline =New appKubSpline
	Field curKubSplineY:appKubSpline =New appKubSpline
	Field rCurve:Int =Rand(0, 255)
	Field gCurve:Int =Rand(0, 255)
	Field bCurve:Int =255 -rCurve
	Field curvStep:Float =.05
	
	Field tPos:Float =1
	Field lastTChange:Int =MilliSecs()
	Field setNewCurve:Int =False
		
	Function Create:TBSplines(newDataT:Int[], newDataX:Int[], newDataY:Int[])
		Local splines:TBSplines = New TBSplines
		splines.curKubSplineX.GetDataInt(newDataT, newDataX)
		splines.curKubSplineY.GetDataInt(newDataT, newDataY)
		Return splines
	End Function
	
	Method update:Int[](speed:Float)
		'tPos :+.002 *Float(curKubSplineX.dataCount)
		tPos :+speed *Float(curKubSplineX.dataCount)
		Return [curKubSplineX.ValueInt(tPos), curKubSplineY.ValueInt(tPos)]
	End Method


End Type


Type appKubSpline
  Field dataX:Float[]
  Field dataY:Float[]
  Field dataCount:Int =0
  Field koeffB:Float[]
  Field koeffC:Float[]
  Field koeffD:Float[]
  '------------------------------------------------------------------------------------------------------------
  ' gets data as FLOAT and calculates the cubic splines
  ' if x-, y-arrays size is different, only the smaller count is taken
  ' data must be sorted uprising for x
  Method GetData(x:Float[], y:Float[])

    Local count:Int =Min(x.Length, y.Length)
    dataX =x[..]
    dataX =x[..count]
    dataY =y[..]
    dataY =y[..count]
    koeffB =koeffB[..count]
    koeffC =koeffC[..count]
    koeffD =koeffD[..count]

    Local m:Int =count -2
    Local s:Float
    Local r:Float
    For Local i:Int =0 To m
      koeffD[i] =dataX[i +1] -dataX[i]
      r =(dataY[i +1] -dataY[i]) /koeffD[i]
      koeffC[i] =r -s
      s =r 
    Next    
    s =0
    r =0
    koeffC[0] =0
    koeffC[count -1] =0
    For Local i:Int =1 To m
      koeffC[i] =koeffC[i] +r *koeffC[i -1]
      koeffB[i] =(dataX[i -1] -dataX[i +1]) *2 -r *s
      s =koeffD[i]
      r =s /koeffB[i]
    Next
    For Local i:Int =m To 1 Step -1
      koeffC[i] =(koeffD[i] *koeffC[i +1] -koeffC[i]) /koeffB[i]
    Next
    For Local i:Int =0 To m
      s =koeffD[i]
      r =koeffC[i +1] -koeffC[i]
      koeffD[i] =r /s
      koeffC[i] =koeffC[i] *3
      koeffB[i] =(dataY[i +1] -dataY[i]) /s -(koeffC[i] +r) *s
    Next

    dataCount =count

  End Method
  '------------------------------------------------------------------------------------------------------------
  ' gets data as INT and calculates the cubic splines
  ' if x-, y-arrays size is different, only the smaller count is taken
  ' data must be sorted uprising for x
  Method GetDataInt(x:Int[], y:Int[])

    Local count:Int =Min(x.Length, y.Length)
    
    dataX =dataX[..count]
    For Local z:Int =1 To count
	  dataX[z -1] =Float(x[z -1])
    Next
    dataY =dataY[..count]
    For Local z:Int =1 To count
      dataY[z -1] =Float(y[z -1])
    Next
    koeffB =koeffB[..count]
    koeffC =koeffC[..count]
    koeffD =koeffD[..count]

    Local m:Int =count -2
    Local s:Float
    Local r:Float
    For Local i:Int =0 To m
      koeffD[i] =dataX[i +1] -dataX[i]
      r =(dataY[i +1] -dataY[i]) /koeffD[i]
      koeffC[i] =r -s
      s =r 
    Next    
    s =0
    r =0
    koeffC[0] =0
    koeffC[count -1] =0
    For Local i:Int =1 To m
      koeffC[i] =koeffC[i] +r *koeffC[i -1]
      koeffB[i] =(dataX[i -1] -dataX[i +1]) *2 -r *s
      s =koeffD[i]
      r =s /koeffB[i]
    Next
    For Local i:Int =m To 1 Step -1
      koeffC[i] =(koeffD[i] *koeffC[i +1] -koeffC[i]) /koeffB[i]
    Next
    For Local i:Int =0 To m
      s =koeffD[i]
      r =koeffC[i +1] -koeffC[i]
      koeffD[i] =r /s
      koeffC[i] =koeffC[i] *3
      koeffB[i] =(dataY[i +1] -dataY[i]) /s -(koeffC[i] +r) *s
    Next

    dataCount =count

  End Method
  '------------------------------------------------------------------------------------------------------------
  ' returns kubic splines value as FLOAT at given x -position 
   'or always 0 if currently no data is loaded
  Method Value:Float(x:Float)

    If dataCount =0 Then Return 0

    If x <dataX[0] Then 
      Repeat
        x :+dataX[dataCount -1] -dataX[0]
      Until x =>dataX[0]
    ElseIf x >dataX[dataCount -1] Then
      Repeat
        x :-dataX[dataCount -1] -dataX[0]
      Until x <=dataX[dataCount -1]
    End If

    Local q:Float =Sgn(dataX[dataCount -1] -dataX[0])
    Local k:Int =-1
    Local i:Int
    Repeat
      i =k
      k :+1
    Until (q *x <q *dataX[k]) Or k =dataCount -1

    q =x - dataX[i]
    Return ((koeffD[i] *q +koeffC[i]) *q +koeffB[i]) *q +dataY[i]

  End Method
  '------------------------------------------------------------------------------------------------------------
  ' returns kubic splines value as rounded INT at given x -position 
   'or always 0 if currently no data is loaded
  Method ValueInt:Int(x:Float)

    If dataCount =0 Then Return 0

    If x <dataX[0] Then 
      Repeat
        x :+dataX[dataCount -1] -dataX[0]
      Until x =>dataX[0]
    ElseIf x >dataX[dataCount -1] Then
      Repeat
        x :-dataX[dataCount -1] -dataX[0]
      Until x <=dataX[dataCount -1]
    End If

    Local q:Float =Sgn(dataX[dataCount -1] -dataX[0])
    Local k:Int =-1
    Local i:Int
    Repeat
      i =k
      k :+1
    Until (q *x <q *dataX[k]) Or k =dataCount -1

    q =x - dataX[i]
    Local tmpResult:Float =((koeffD[i] *q +koeffC[i]) *q +koeffB[i]) *q +dataY[i]
    If tmpResult -Floor(tmpResult) <=.5 Then
      Return Floor(tmpResult)
    Else
      Return Floor(tmpResult) +1
    End If

  End Method
  '------------------------------------------------------------------------------------------------------------

End Type
'------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
