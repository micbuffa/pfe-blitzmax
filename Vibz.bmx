Import pub.MaXML ' XML module

Strict
SeedRnd MilliSecs()
Graphics 800,600,32,60

Global Kills       ' The score of this game
Global Lives       ' This is a variable storing how many lives the player has left
Global debugMode = False 
Global Difficulty = 2 ' Difficulty level 1-3 : modifies the shoot frequence of the enemies

Global maxLives% = 3 ' Lives of the player at the beginning
Global maxPowerLevel% = 5 ' Max power
Global maxBombs% = 99 ' Max bombs
Global maxSlowMo# = 2000 ' Max slow motion stock
Global BulletTimer ' We'll use this to put a timer on bullets used by the player
Global FreqTimer ' Delay to switch fire modes
Global PlayerList:TList		= CreateList() ' List of players (maybe 2 to come)
Global PlayerBulletList:TList	= CreateList() ' List of player's bullets
Global AllyList:TList = CreateList() ' List of allies
Global EnemyList:TList		= CreateList() ' List of enemies
Global EnemyBulletList:TList	= CreateList() ' List of enemies' bullets
Global explosionlist:TList	= CreateList() ' List of explosions
Global BonusList:TList = CreateList() ' List of bonuses
Global StagesList:TList = CreateList() ' List of stages
Global InfoList:TList = CreateList() ' List of info texts

Global currentLevel = 1
' TODO : make a system to start from another level

Const LOW_FREQ = 1 ' Type of ship/bullets LOW - blue, HIGH - red
Const HIGH_FREQ = 0

Global slowMo = False ' Slow mode activated / not activated
Global slowMoTimer% ' Timer for the slow mode

Global play = 0 'state of the game
Const MAIN_MENU = 0
Const HELP_MENU = 1
Const OPTIONS_MENU = 6
Const CREDITS_MENU = 7
Const INIT_GAME = 10
Const GAMEOVER_GAME = 3
Const LEVELSTART_GAME = 5
Const LEVELEND_GAME = 4
Const PLAY_GAME = 2


Global pause = False ' pause in game -> make it a state ?
Global windowed = False ' window mode activated / not activated
Global rightEdge% = 650 ' Right edge of the game area
Global leftEdge% = 150 ' Left edge of the game area

Global loopsCount# = 0 ' counter for loops / useful for many tests

' Fonts 

Incbin "C:\WINDOWS\Fonts\arial.ttf"
Incbin "fonts/BLOCKUP_.ttf"
Incbin "C:\WINDOWS\Fonts\chiller.ttf"
Incbin "C:\WINDOWS\Fonts\HarlowSI.ttf"
Incbin "fonts/quantrnd.ttf"

Global arial16:timagefont = LoadImageFont("incbin::C:\WINDOWS\Fonts\arial.ttf",16)
Global blockup:timagefont = LoadImageFont("incbin::fonts/BLOCKUP_.ttf",50)
Global chiller:timagefont = LoadImageFont("incbin::C:\WINDOWS\Fonts\chiller.ttf",46)
Global harlow:timagefont = LoadImageFont("incbin::C:\WINDOWS\Fonts\HarlowSI.ttf",32)
Global quantum:timagefont = LoadImageFont("incbin::fonts/quantrnd.ttf",22)


' Clears all lists
Function clearLists()
	ClearList AllyList
	ClearList EnemyList
	ClearList PlayerList
	ClearList PlayerBulletList
	ClearList ExplosionList
	ClearList EnemyBulletList
	ClearList BonusList
	ClearList StagesList
	ClearList Sparks
	tbomb.bombing = False ; 
End Function 

' Clears in-game lists
Function clearLevelLists()
	ClearList PlayerBulletList
	ClearList ExplosionList
	ClearList EnemyBulletList
	ClearList BonusList
	ClearList Sparks
	tbomb.bombing = False ;
End Function

' Inclusions ----------------------------------- 

Incbin "lvl1.xml"
Incbin "lvl2.xml"
Incbin "lvl3.xml"

Include "Sound.bmx"
Include "Effets.bmx"
Include "Classes.bmx"
Include "Enemies.bmx"
Include "Enemieslvl1.bmx"
Include "Enemieslvl2.bmx"
Include "Enemieslvl3.bmx"
Include "lib/firepaint.bmx"
AutoMidHandle(False)
Include "background/menu.bmx"
Include "background/optionmenu.bmx"
Include "background/credits.bmx"
Include "stages.bmx"
Include "Shoot.bmx"

' Main -----------------------------------------

initChannels() ' Initialisation of the sounds

Global timer% = MilliSecs() + 5000 ' Useful for special phases 
Local endStage = 0 ' Level finished ?	

Repeat ' This is the main loop

	Cls
	
	loopsCount :+1
	If KeyHit(KEY_S) Then soundOff = Not soundOff

	SetAlpha 1
	
	'Menu ------------	

	If play = MAIN_MENU Or play = HELP_MENU Or play = OPTIONS_MENU Or play = CREDITS_MENU
		StagesList.clear() ' act on this to save the progress
		If Not soundOff 
			ResumeChannel channelBG ' Play the music of the menu
		Else
			PauseChannel channelBG
		EndIf
		AutoMidHandle(False) ' For the menu, images aren't mid-handled
		If play = MAIN_MENU 
			menu() 'la fonction qui affiche le menu
			If KeyHit(KEY_ESCAPE) Then End ' End of the program
			If KeyHit(KEY_ENTER) Then play = INIT_GAME ' Start of the game
		Else If play = HELP_MENU
			help()
			If KeyHit(KEY_ESCAPE) 
				play = MAIN_MENU ' Back to main menu
				ClearList buttonList
				createMainButtons() ' Sets the main menu buttons
			EndIf
		Else If play = OPTIONS_MENU
			optionsMenu()
			If KeyHit(KEY_ESCAPE)
				play = MAIN_MENU ' Back to main menu
				ClearList buttonList
				createMainButtons()
			EndIf
		Else If play = CREDITS_MENU	
			creditsMenu()
			If KeyHit(KEY_ESCAPE)  
				play = MAIN_MENU ' Back to main menu
				ClearList buttonList
				createMainButtons()
			EndIf
		EndIf 
		SetAlpha 1
		AutoMidHandle(True) 
		pauseGameChannels() ' In-game sounds are paused
		SetBlend lightBlend ' For the particles
		updateentities(sparks) ' Particles update
		SetBlend alphaBlend
		
		' Difficulty quick keys
		If KeyHit(KEY_1) Then Difficulty = 1 
		If KeyHit(KEY_2) Then Difficulty = 2 
		If KeyHit(KEY_3) Then Difficulty = 3 
		
		If play = INIT_GAME ' Start of the game
			Lives = maxLives 
			PauseChannel channelBG ' Pause music of the menu
			clearLists() ' Clears the lists of the program
			TPlayer.Spawn() ' Creation of the player
			' Stages loading -----
			TStages.CreateFromFile("incbin::lvl1.xml")
			TStages.CreateFromFile("incbin::lvl2.xml")
			TStages.CreateFromFile("incbin::lvl3.xml")
			endStage = 0 ' The stage's not over
			kills = 0 ' Score is null
			mapY = 0 ' Scrolling variable initialized
			resumeGameChannels() ' Activation of in-game sounds
			play = PLAY_GAME 
			pause = True ' The game starts by a special phase
			If Not soundOff Then PlaySound(soundStart) ' Starting sounds
			If Not soundOff Then PlaySound(soundStart2)
			timer = MilliSecs() + 3000 ' Timer for the special phase
		EndIf

		
		
	End If
 
	' Game phases ---------------------------------------------------

	If play = PLAY_GAME Or play = GAMEOVER_GAME Or play = LEVELSTART_GAME Or play = LEVELEND_GAME
		Local Player:TPlayer = TPlayer.getPlayer()
		
		' Launch : end of the level
		If endStage = 1 And play = PLAY_GAME Then timer=MilliSecs()+5000; play=LEVELEND_GAME;If Not soundOff Then PlaySound(soundWin)
		' Launch : game over
		If lives <= 0 And play = PLAY_GAME Then timer=MilliSecs()+5000; play=GAMEOVER_GAME;If Not soundOff Then PlaySound(soundGameOver)
		
		
		If soundOff 
			pauseGameChannels 
		Else 
			resumeGameChannels
		EndIf
		
		' Drawing of the background
		background()
		
		' Game phase
		If Not pause

			mapY:+mapSpeed 
			If slowmo Then mapY:-mapSpeed/2
			' Main displays
			endStage = TStages.Update(mapY, EnemyList.count())
			If EnemyList.count() <> 0
				endStage = 0
			EndIf
			
			' Updates of the different objects of the game
			TEnemy.Update()
			TExplosion.Update()
			TPlayer.Update()
			TAlly.Update()
			TBullet.Update() 
			TBonus.Update()
			TInfo.Update()
			TAnimation.Update()
			TSprite.update_sprite(1)
			SetBlend lightblend 
			UpdateEntities(sparks)
			SetBlend alphablend
			
		EndIf

		' In-game interface 
		SetAlpha 1
		SetColor 255,255,255
		DrawImage leftImage,75,300
		DrawImage rightImage,rightedge+75,300
		
		
		' SlowMotion stock display

		SetImageHandle jaugeImage,0,0
		Local jaugeScale# = player.slowMoStock/maxSlowMo
		SetScale 1,jaugeScale
		DrawImage jaugeImage,rightEdge+90,50
		SetScale 1,1
		If slowMo
			TSprite.init_sprite(rightEdge+90+ImageWidth(jaugeImage)/2,ImageHeight(jaugeImage)*jaugeScale+61,50,0,150)
		Else
			SetColor 155,0,200
		EndIf
		
		' Power blocks display
		SetAlpha 1
		SetColor 82,85,112
		SetImageFont blockup
		For Local n = 0 Until player.powerLevel
       		DrawText "-",rightEdge+40,550-(n*40)
		Next
		SetColor 255,255,255
		SetImageFont quantum
		' Lives and bombs display
		If Lives < 4
			For Local k=1 To Lives
				DrawImage lifeStockImage,40*k - 10,380
			Next 
		Else
			DrawImage lifeStockImage,70,380
			SetColor 200,40,180
			DrawText "x " + Lives,87,370
			SetColor 255,255,255 
			SetScale 1,1
		EndIf
		If Player.Bombs < 4
			For Local k=1 To Player.Bombs
				DrawImage bombStockImage,40*k - 10,480
			Next 
		Else
			DrawImage bombStockImage,70,480
			SetColor 200,40,180
			DrawText "x " + Player.Bombs,87,470 
		EndIf
		SetColor 150,20,135
		DrawText kills,5,565
		If KeyHit(key_escape) Then play = 0
		
		
		If timer > MilliSecs() ' Special phases --------------------------------
		
			slowmo = False ' Slow mode desactivated
			channelsRate = 1 ' Music rate back to normal
			SetImageFont harlow
			
			
			If play = PLAY_GAME 'début du jeu ---------------------------------------------
				'attention cinématique de début oulala
				Local appColor# = 255 - (timer-MilliSecs()) * 255/3000
				'SetColor 255 - appColor,255 - appColor,255 - appColor
				mapY:+mapSpeed
				SetColor 255,255,255
				SetScale player.scale,player.scale
				player.x = 400
				player.y = 100+(3000+(MilliSecs()-timer))/10
				SetAlpha appColor/255-0
				DrawImage player.Image, player.x , player.y
				SetScale 0.5,0.5
				SetColor appColor,appColor,appColor
				DrawImage shieldImage,Player.x,Player.y
				SetScale 1,1
				'compte à rebours			
				DrawText "Ship launch in ",300,300 
				DrawText (1+timer-MilliSecs())/1000,400,350
				focusFire(focusImage,Player,36,20,300,[255,255,255])
				UpdateEntities(sparks)
				pause = True
				SetAlpha 1
				'time=0
				
			Else If play = GAMEOVER_GAME 'gameover --------------------------------------------
			' une sorte de rideau qui descend puis deux qui montent 
			 	Local effectObject1:TGameObject = New TGameObject
				effectObject1.x = GraphicsWidth()/2 ; effectObject1.y = GraphicsHeight()/2
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
				DrawText "Score :",300,350
				DrawText kills,390,350
				If timer -1000 < MilliSecs()
					play = 0 ; loopsCount = 0
				EndIf 
				
			Else If play = LEVELEND_GAME 'victoire du niveau ----------------------------------
				Local effectObject1:TGameObject = New TGameObject
				effectObject1.x = GraphicsWidth()/2 ; effectObject1.y = GraphicsHeight()/2
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
				DrawText "Level completed !", 300,300
				DrawText "Score :",300,350
				DrawText kills,390,350
				If timer -1000 < MilliSecs()
					StagesList.removeFirst()
					If StagesList.count() = 0  
						play = 0 ; loopsCount = 0
						clearLists()
						currentLevel = 1
					Else 
						currentLevel :+ 1
						play = PLAY_GAME
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
			'timeorigine = MilliSecs()/1000 - time
			'todo : faire en sorte que le slowmotimer s'arrête pendant la pause - ok mais sale
			If Not (timer > MilliSecs() )
				SetImageFont harlow
				DrawText "Pause mode",310,200
				DrawText "Press escape to quit (coward ...)",210,300
				DrawText "Press P to get back to the fight",210,400
			EndIf
		EndIf 
		
		If KeyHit(key_p) Then pause = Not pause
		If timer < MilliSecs() And (KeyHit(KEY_ENTER) Or KeyHit(KEY_LALT) Or KeyHit (KEY_LCONTROL) Or KeyHit(KEY_SPACE))
			pause = False 
		EndIf
		' empêche un bug fou de se produire : si on appuie sur ENTER en cours de partie et s'il n'y a pas
		' le test précédent, on dirait que l'appui sur ces touches est enregistré et communiqué au moment où on 
		' revient dans le menu, ce qui fait qu'on relance le jeu directement si on a appuyé sur entrée n'importe
		' quand dans le jeu ...
		
	EndIf
	
	Flip

Until AppTerminate()

' arranger les fins de niveaux 
' bug aperçu : des fois on perd plusieurs vies d'un coup :/
' faire un truc qui coupe tous les sons


' donner une premiere trajectoire aux boss pour qu'ils arrivent par le haut progressivement puis une fois
' arrivés dans la scène, leur donner leur vraie trajectoire

