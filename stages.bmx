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
			Local posx, posy
			Local enemyName$
			Local ennemi:xmlNode
			
			If Stage.testEnd = 0
				ennemi = Stage.block.FirstChild()
				While ennemi <> Null
					posx = ennemi.FindChild("posX").Value.ToInt()
					posy = ennemi.FindChild("posY").Value.ToInt()
					enemyName = ennemi.FindChild("name").Value
					If(enemyName =  "red1")
						If posy<0
							TEnemyRed1.SpawnDefault(posx, posy)	
						Else 'pour l'instant ceux qui apparaissent pas en dehors de l'écran sont vachement plus forts
							'TEnemy.Spawn(posx, posy, 0,HIGH_FREQ,30000)	
							TEnemyRed3.SpawnDefault(posx,posy)
						EndIf
					Else If enemyName = "blue1"
						If posy<0
							TEnemyBlue1.SpawnDefault(posx, posy)	
						Else 
							'TEnemy.Spawn(posx, posy, 0,LOW_FREQ,45000)	
							TEnemyBlue4.SpawnDefault(posx,posy)
						EndIf
					Else If enemyName = "red2"
						TEnemyRed2.spawnDefault(posx,posy) 'nouvelle version des spawns
					Else If enemyName = "blue2"
						TEnemyBlue2.spawnDefault(posx,posy) 'nouvelle version des spawns
					Else If enemyName = "blue2reverse"
						TEnemyBlue2.spawnDefault(posx,posy,1) 'nouvelle version des spawns	
						Else If enemyName = "blue3"
						TEnemyBlue3.spawnDefault(posx,posy) 'nouvelle version des spawns
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




