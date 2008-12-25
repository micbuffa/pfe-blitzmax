Import pub.MaXML


Strict
SeedRnd MilliSecs()
Graphics 800,600,0,60

Global Kills       'We're going to store how many kills we get instead of a score on this game.
Global Lives       'This is a variable storing how many lives the player has left.
Global debugMode = False 'mode invincible

Global maxLives% = 3 'vies du joueur au début
Global maxPowerLevel% = 5 'puissance maximale du joueur
Global maxBombs% = 5 'nombre maximum de bombes du joueur
Global maxSlowMo# = 2000 ' temps maximum de slow motion, en tours de boucle
Global BulletTimer 'We'll use this to put a timer on bullets used in the game.
Global FreqTimer 'pour le délai de changement de fréquence de tir
'Global AllyBulletTimer
Const Player = 1  'This is a constant, which will always be the number 1
Const Enemy  = 2  'This is also a constant, which will always be the number 2
Const Ally = 3 
Global PlayerList:TList		= CreateList()  
Global PlayerBulletList:TList	= CreateList()
Global AllyList:TList = CreateList()
Global AllyBulletList:TList = CreateList() 'maybe useless  
Global EnemyList:TList		= CreateList()
Global EnemyBulletList:TList	= CreateList()
Global explosionlist:TList	= CreateList()
Global BonusList:TList = CreateList()
Global StagesList:TList = CreateList()

Global maxShips = 15 ' le nombre de maximum de vaisseaux ennemis à l'écran
Const LOW_FREQ = 1 'le type des vaisseaux
Const HIGH_FREQ = 0

Global slowMo = False 'mode ralenti
Global slowMoTimer% 'le moment où le mode slow s'arrête

Global time% 'pour compter le temps de survie du joueur
Global timeorigine 'le début de la partie

Global play = 0 'état du jeu : 0 -> menu, 1 -> début du jeu, 2 -> jeu
Global pause = False 'pause pendant le jeu
Global windowed = True
Global rightEdge% = 650
Global leftEdge% = 150

Global loopsCount# = 0'compte les tours de boucle, utile pour beaucoup de tests

'polices de caractères, tout inclure ou bien tout mettre en chemin relatif
Global arial16:timagefont = LoadImageFont("C:\WINDOWS\Fonts\arial.ttf",16)
Global blockup:timagefont = LoadImageFont("fonts/BLOCKUP_.ttf",50)
Global chiller:timagefont = LoadImageFont("C:\WINDOWS\Fonts\chiller.ttf",46)
Global harlow:timagefont = LoadImageFont("C:\WINDOWS\Fonts\HarlowSI.ttf",32)

'Global 

'End Function

Function clearLists()
	ClearList AllyList
	ClearList EnemyList
	ClearList PlayerList
	ClearList AllyBulletList
	ClearList PlayerBulletList
	ClearList ExplosionList
	ClearList EnemyBulletList
	ClearList BonusList
	ClearList StagesList
	ClearList Sparks
	tbomb.bombing = False ; 
End Function 

Function clearLevelLists()
	ClearList AllyBulletList
	ClearList PlayerBulletList
	ClearList ExplosionList
	ClearList EnemyBulletList
	ClearList BonusList
	ClearList Sparks
	tbomb.bombing = False ;
End Function

Function printTests()
	If timer < MilliSecs()
		Print "-------"
		Print "enemy " + CountList(enemylist)
		Print "player " + CountList(playerlist)
		Print "enemybullet " + CountList(enemybulletlist)
		Print "stage " + CountList(StagesList)
		Print "playerbullet " + CountList(playerbulletlist)
		'Print "coord " + SizeOf enemylist
		timer = MilliSecs() + 5000
		Local Player:TPlayer = TPlayer(PlayerList.Last()) 
		Print "coords " + CountList(Player.lastcoords)
	EndIf
End Function

'init()

' Inclusions ----------------------------------- l'ordre est important, Classes et Firepaint utilisent des éléments d'Effets et Sound
Include "Sound.bmx"
Include "Effets.bmx"
Include "Classes.bmx"
Include "lib/firepaint.bmx"
AutoMidHandle(False)
Include "background/menu.bmx"
Include "stages.bmx"
Include "Shoot.bmx"

' Main -----------------------------------------

initChannels() 'initialisation des sons

Global timer% = MilliSecs() + 5000 ' sert pour les phases de début et de fin de niveau
' Ajout des niveaux (inutile ?)
TStages.CreateFromFile("niveau0.xml")	
TStages.CreateFromFile("niveau1.xml")
TStages.CreateFromFile("niveau2.xml")
'Local Stage:TStages = TStages(StagesList.First())
Local endStage = TStages.Update(mapY)		

Repeat ' This is the main loop!!!!

	Cls
	
	loopsCount :+1
	If KeyHit(KEY_S) Then soundOff = Not soundOff

	SetAlpha 1
'Menu ------------	

	If play = 0 'Or endStage  = 1
		StagesList.clear() 'suppression du niveau en cours (inutile ?)
		If Not soundOff 
			ResumeChannel channelBG 'mise en route de la musique du menu
		Else
			PauseChannel channelBG
		EndIf
		AutoMidHandle(False) 'pour le menu, les images sont gérées en fonction de leur coin supérieur gauche
		menu() 'la fonction qui affiche le menu 
		SetAlpha 1
		AutoMidHandle(True) 'mais pour le reste, c'est le centre de l'image qui compte
		pauseGameChannels() 'les sons du jeu sont mis en pause
		SetBlend lightBlend 'lightblend pour les particules
		updateentities(sparks) 'mise à jour des particules
		SetBlend alphaBlend
		If KeyHit(KEY_ESCAPE) Then End 'sortie du programme
		If KeyHit(KEY_ENTER) Then play = 1 'début du jeu
		
		If play = 1 ' correspond à l'initialisation du jeu
			Lives = maxLives 'le nombre de vies du joueur
			PauseChannel channelBG 'musique du menu en pause
			clearLists() 'réinitialisation de toutes les listes du jeu
			TPlayer.Spawn() 'création du joueur
			'TStages.Create()	'création du niveau
			TStages.CreateFromFile("niveau0.xml")
			TStages.CreateFromFile("niveau1.xml")	
			TStages.CreateFromFile("niveau2.xml")
			endStage = 0 'le niveau n'est pas fini
			kills = 0 'le score est à 0
			mapY = 0 ' remise à 0 de la variable de scrolling
			resumeGameChannels() ' activation des sons du jeu 
			play = 2 ' correspond à la phase de jeu
			pause = True ' le jeu commence par un compte à rebours, en mode pause
			If Not soundOff Then PlaySound(soundStart) ' les sons de démarrage
			If Not soundOff Then PlaySound(soundStart2)
			timer = MilliSecs() + 3000 'le timer du compte à rebours
			timeorigine = MilliSecs()/1000 ' l'instant du démarrage du jeu
		EndIf

		
		
	End If
 
'Phase de jeu -------

	If play >= 2 'And endStage  = 0
		Local Player:TPlayer = TPlayer.getPlayer()
		If endStage = 1 And play = 2 Then timer = MilliSecs()+5000; play = 4
		If lives <= 0 And play = 2 Then timer = MilliSecs()+5000; play = 3 ; If Not soundOff Then PlaySound(soundGameOver)
			
			If soundOff 
				pauseGameChannels 
			Else 
				resumeGameChannels
			'EndIf
		EndIf
		background()
		
		If Not pause
			time = MilliSecs()/1000-timeorigine
			mapY:+mapSpeed 
			If slowmo Then mapY:-mapSpeed/2
			'affichages principaux
			endStage = TStages.Update(mapY)
			If EnemyList.count() <> 0
				endStage = 0
			EndIf
			'les mises à jour des différents objets du jeu
			TEnemy.Update()
			TBullet.Update() 
			TPlayer.Update()	
			TAlly.Update()
			TExplosion.Update()
			TBonus.Update()
			TAnimation.Update()
			SetBlend lightblend 'lightblend pour les particules
			UpdateEntities(sparks)
			SetBlend alphablend
		EndIf

		'l'interface de jeu sur les côtés
		SetColor 255,255,255
		DrawImage leftImage,75,300
		DrawImage rightImage,rightedge+75,300
		
		
		'dessin du stock de slowMotion

		SetImageHandle jaugeImage,0,0
		Local jaugeScale# = player.slowMoStock/maxSlowMo
		SetScale 1,jaugeScale
		DrawImage jaugeImage,rightEdge+90,50
		SetScale 1,1
		If slowMo
			'SetColor Sin(mapY*6)*255,Sin(mapY)*255,Sin(mapY*3)*200
			SetColor 255,0,0
			TSprite.init_sprite(rightEdge+90+ImageWidth(jaugeImage)/2,ImageHeight(jaugeImage)*jaugeScale+61)
			TSprite.update_sprite(1,rightEdge+90+ImageWidth(jaugeImage)/2,ImageHeight(jaugeImage)*jaugeScale+61)
			'firepaint lightPartBlueImg,
		Else
			TSprite.update_sprite(0,rightEdge+90+ImageWidth(jaugeImage)/2,ImageHeight(jaugeImage)*jaugeScale+61)
			SetColor 155,0,200
		EndIf
		
		' dessin des blocs du niveau de puissance

		'SetBlend ALPHABLEND
		SetAlpha 1
		SetColor 82,85,112
		SetImageFont blockup
		'Local player:TPlayer = TPlayer.getPlayer()
		For Local n = 0 Until player.powerLevel
       		DrawText "-",rightEdge+40,550-(n*40)
		Next
		SetColor 200,0,255
		SetImageFont arial16
		'vies et bombes
		For Local k=1 To Lives
			DrawImage noteImage,23*k,380
		Next 
		For Local k=1 To Player.Bombs
			DrawImage cleDeSolImage,23*k,480
		Next 
		'DrawImage cleDeSolImage
		'DrawText Lives,65,375
		'DrawText player.bombs,65,470
		DrawText kills,65,565
		If KeyHit(key_escape) Then play =0
		
		
		
		If timer > MilliSecs() 
			slowmo = False
			SetImageFont harlow
			If play = 2 'début du jeu
				'attention cinématique de début oulala
				Local appColor# = 255 - (timer-MilliSecs()) * 255/3000
				'SetColor 255 - appColor,255 - appColor,255 - appColor
				
				mapY:+mapSpeed
				SetColor 255,255,255
				SetScale player.scale,player.scale
				player.x = 400
				player.y = 100+(3000+(MilliSecs()-timer))/10
				SetAlpha appColor/255-0.5
				DrawImage player.Image, player.x , player.y
				SetScale 0.5,0.5
				SetColor appColor,appColor,appColor
				DrawImage shieldImage,Player.x,Player.y
				SetScale 1,1
				'compte à rebours			
				DrawText "Début du niveau dans ",300,300 
				DrawText (1+timer-MilliSecs())/1000,400,350
				focusFire(focusImage,Player,36,20,300,[255,255,255])
				UpdateEntities(sparks)
				pause = True
				SetAlpha 1
				time=0
			Else If play = 3 'gameover
			' une sorte de rideau qui descend puis deux qui montent 
			 	Local effectObject1:TGameObject = New TGameObject ; effectObject1.x = GraphicsWidth()/2 ; effectObject1.y = GraphicsHeight()/2
				reverseFocusFire(ligthPartPurpleImg,effectObject1,1,1,30,[115,0,0])
				pause = True
				pauseGameChannels()
				setAllyChannelsVolume(0)
				Local fade# = GraphicsHeight()+(GraphicsHeight()*(MilliSecs()+2000-timer))/4000
				SetColor 0,0,0
				DrawRect leftedge,0,GraphicsWidth()-leftEdge*2,fade
				DrawRect 0,GraphicsHeight(),leftEdge,GraphicsHeight()-fade-500
				DrawRect rightEdge,GraphicsHeight(),leftEdge,GraphicsHeight()-fade-500
			    UpdateEntities(sparks)
				SetColor (timer-MilliSecs())/20,0,0
				SetImageFont chiller
				DrawText "Game Over !", 300,300
				DrawText "Kills :",300,350
				DrawText kills,390,350
				If timer -1000 < MilliSecs()
					play = 0 ; loopsCount = 0
				EndIf 
				
			Else If play = 4 'victoire du niveau
				Local effectObject1:TGameObject = New TGameObject ; effectObject1.x = GraphicsWidth()/2 ; effectObject1.y = GraphicsHeight()/2
				reverseFocusFire(ligthPartBlueImg,effectObject1,1,1,30,[0,255,0])
				pause = True
				pauseGameChannels()
				setAllyChannelsVolume(0)
				Local fade# = GraphicsHeight()+(GraphicsHeight()*(MilliSecs()+2000-timer))/4000
				SetColor 0,0,0
				DrawRect leftedge,0,GraphicsWidth()-leftEdge*2,fade
				DrawRect 0,GraphicsHeight(),leftEdge,GraphicsHeight()-fade-500
				DrawRect rightEdge,GraphicsHeight(),leftEdge,GraphicsHeight()-fade-500
				UpdateEntities(sparks)
				SetColor 0,(timer-MilliSecs())/20,0
				DrawText "Stage completed !", 300,300
				DrawText "Kills :",300,350
				DrawText kills,390,350
				If timer -1000 < MilliSecs()
					StagesList.removeFirst()
					If StagesList.count() = 0  
						play = 0 ; loopsCount = 0
					Else 
						play = 2
						mapY = 0
						endStage = 0
						timer = MilliSecs() + 3000
						ClearLevelLists()
					EndIf
				EndIf 
			EndIf    
		Else If timer > MilliSecs() - 100 
			pause = False
			If play = 2 Then player.invincibleTimer=MilliSecs()+3000 
		EndIf
		
		If pause
			slowmotimer :+  16'le nombre de millisecondes par frame, calculé en fonction du framerate =60
			timeorigine = MilliSecs()/1000 - time
			'todo : faire en sorte que le slowmotimer s'arrête pendant la pause - ok mais sale
			If Not (timer > MilliSecs() )
				SetImageFont harlow
				DrawText "Pouce ! Camp ! Arrêtez d'abord !",200,300
			EndIf
		EndIf 
		
		If KeyHit(key_p) Then pause = Not pause
		
	EndIf
	
	Flip

Until AppTerminate()

' arranger les fins de niveaux 
' bug aperçu : des fois on perd plusieurs vies d'un coup :/
' faire un truc qui coupe tous les sons
