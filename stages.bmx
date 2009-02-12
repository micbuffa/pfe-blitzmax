Include "Bsplines.bmx"

Type TStages
	Field xml
	Field nodeStages:xmlNode
	Field rootStages:xmlNode
	Field XMLStages:xmlDocument
	Field nextWave
	Field block:xmlNode
	Field testEnd
	Field endStage
	Field numWave:Int
	Field nextNumWave:Int
	Field lateTimeWave:Int
	
	Function Create()
		Local Stage:TStages = New TStages

		Stage.XMLStages = xmlDocument.Create("niveaux.xml")
		Stage.rootStages = Stage.XMLStages.Root()
		Stage.testEnd = 0
		Stage.endStage = 0
		Stage.numWave = 1
		Stage.nextNumWave = 1
		Stage.lateTimeWave = 0
				
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
		Stage.numWave = 1
		Stage.nextNumWave = 1
		Stage.lateTimeWave = 0
				
		Stage.nodeStages = Stage.rootStages.FirstChild()
		Stage.block = Stage.nodeStages.FirstChild()
		Stage.nextWave = Stage.block.Attribute("time").Value.ToInt() 
		Stage.numWave = Stage.block.Attribute("wave").Value.ToInt()
		StagesList.AddLast(Stage) 
	End Function 
	
	Function Update%(mapY, nbEnemy)
		Local Stage:TStages = TStages(StagesList.First())
			
		If mapY >= (Stage.nextWave + Stage.lateTimeWave) And (nbEnemy = 0 Or Stage.numWave = Stage.nextNumWave)
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
						TEnemyRed1.SpawnDefault(traj)	
					Else If enemyName = "blue1"
						TEnemyBlue1.SpawnDefault(traj)	
					Else If enemyName = "red2"
						TEnemyRed2.spawnDefault(traj) 'nouvelle version des spawns
					Else If enemyName = "red3"
						TEnemyRed3.spawnDefault(traj) 'nouvelle version des spawns
					Else If enemyName = "red4"
						TEnemyRed4.spawnDefault(traj) 'nouvelle version des spawns
					Else If enemyName = "red5"
						TEnemyRed5.spawnDefault(traj) 'nouvelle version des spawns
					Else If enemyName = "blue2"
						TEnemyBlue2.spawnDefault(traj) 'nouvelle version des spawns
					Else If enemyName = "blue2reverse"
						TEnemyBlue2.spawnDefault(traj,1) 'nouvelle version des spawns	
					Else If enemyName = "blue3"
						TEnemyBlue3.spawnDefault(traj) 'nouvelle version des spawns
					Else If enemyName = "blue4"
						TEnemyBlue4.spawnDefault(traj) 'nouvelle version des spawns	
					Else If enemyName = "blue5"					
						TEnemyBlue5.spawnDefault(traj) 'nouvelle version des spawns	
					Else If enemyName = "boss1"
						TBoss1.spawnDefault(traj)
					Else If enemyName = "boss2"
						TBoss2.spawnDefault(traj)
					Else If enemyName = "bossMulti"
						TBossMultiC.spawnDefault(traj)							
					EndIf						
					ennemi = ennemi.NextSibling()
				Wend
								
				Stage.block = Stage.block.NextSibling() 
				Stage.lateTimeWave = mapY - Stage.nextWave
				Stage.nextWave = Stage.block.Attribute("time").Value.ToInt()
				Stage.numWave = Stage.nextNumWave
				Stage.nextNumWave = Stage.block.Attribute("wave").Value.ToInt()
				If(Stage.block.Attribute("wave").Value = "end")
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




