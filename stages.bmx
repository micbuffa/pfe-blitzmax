Include "Bsplines.bmx"

Type TStages
	Field xml
	Field nodeStages:xmlNode
	Field rootStages:xmlNode
	Field XMLStages:xmlDocument
	Field nextWave
	Field block:xmlNode
	Field testEnd
	Field endStage 'différent de testEnd ?
	
	Function Create()
		Local Stage:TStages = New TStages

		Stage.XMLStages = xmlDocument.Create("niveaux.xml")
		Stage.rootStages = Stage.XMLStages.Root()
		Stage.testEnd = 0
		Stage.endStage = 0
		
		Stage.nodeStages = Stage.rootStages.FirstChild()
		Stage.block = Stage.nodeStages.FirstChild()
		Stage.nextWave = Stage.block.Attribute("time").Value.ToInt()
		StagesList.AddLast(Stage) 
	End Function
	
	Function createFromFile(file$)
		Local Stage:TStages = New TStages

		Stage.XMLStages = xmlDocument.Create(file)
		Stage.rootStages = Stage.XMLStages.Root()
		Stage.testEnd = 0
		Stage.endStage = 0
		
		Stage.nodeStages = Stage.rootStages.FirstChild()
		Stage.block = Stage.nodeStages.FirstChild()
		Stage.nextWave = Stage.block.Attribute("time").Value.ToInt()
		StagesList.AddLast(Stage) 
	End Function 
	
	Function Update%(mapY)
		Local Stage:TStages = TStages(StagesList.First())
		
		
		If mapY >= Stage.nextWave
			Local enemyName$
			Local ennemi:xmlNode
			Local ptsBez:xmlNode
						
			If Stage.testEnd = 0
				ennemi = Stage.block.FirstChild()
				While ennemi <> Null
					Local newDataX:Int[], newDataY:Int[], newDataT:Int[]
					newDataT =newDataT[..0]
					newDataX =newDataX[..0]
					newDataY =newDataY[..0]
					
					ptsBez = ennemi.FirstChild()
					While ptsBez <> Null
						newDataT =newDataT[..newDataT.Length +1]
				    	newDataX =newDataX[..newDataT.Length]
				    	newDataY =newDataY[..newDataT.Length]
						newDataT[newDataT.Length -1] =newDataT.Length
						newDataX[newDataT.Length -1] =ptsBez.attribute("posX").Value.ToInt()
						newDataY[newDataT.Length -1] =ptsBez.attribute("posY").Value.ToInt()

						ptsBez = ptsBez.NextSibling()
					Wend
					
					Local traj:TBSplines = TBSplines.Create(newDataT, newDataX, newDataY)

					enemyName = ennemi.attribute("name").Value
					If(enemyName = "red1")
						If traj.curKubSplineY.ValueInt(1)<0
							TEnemyRed1.SpawnDefault(traj)	
						Else 'pour l'instant ceux qui apparaissent pas en dehors de l'écran sont vachement plus forts
							TEnemy.Spawn(traj, 2,HIGH_FREQ,30000)	
						EndIf
					Else If enemyName = "blue1"
						If traj.curKubSplineY.ValueInt(1)<0
							TEnemyBlue1.SpawnDefault(traj)	
						Else 
							TEnemy.Spawn(traj, 2,LOW_FREQ,45000)	
						EndIf
					Else If enemyName = "red2"
						TEnemyRed2.spawnDefault(traj) 'nouvelle version des spawns
					Else If enemyName = "blue2"
						TEnemyBlue2.spawnDefault(traj) 'nouvelle version des spawns
					Else If enemyName = "blue2reverse"
						TEnemyBlue2.spawnDefault(traj,1) 'nouvelle version des spawns	
						Else If enemyName = "blue3"
						TEnemyBlue3.spawnDefault(traj) 'nouvelle version des spawns
					Else If enemyName = "boss1"
						TBoss1.spawnDefault(traj)					
					EndIf						
					ennemi = ennemi.NextSibling()
				Wend
				
				Stage.block = Stage.block.NextSibling()
				Stage.nextWave = Stage.block.Attribute("time").Value.ToInt()
				If(Stage.block.Attribute("num").Value = "end")
					Stage.testEnd = 1
				EndIf
			Else
				Stage.endStage = 1
			EndIf
		EndIf
		Return Stage.endStage
	End Function	
End Type


' l'attribut time correspond en fait à mapY




