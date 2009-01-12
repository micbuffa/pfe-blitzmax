'Initialisation des sons ----------------------

'Sons

Incbin "sound/basshouse.ogg"
Incbin "sound/bassdance16.ogg"
Incbin "sound/Explosion2.wav"
Incbin "sound/rocket1.ogg"
Incbin "sound/rythmedance70.ogg"
Incbin "sound/bassrock3D.ogg"
Incbin "sound/orchestre1.ogg"
Incbin "sound/bassrock4D.ogg"
Incbin "sound/orchestre2.ogg"
Incbin "sound/bassrock1D.ogg"
Incbin "sound/321launch.ogg"
Incbin "sound/myst.ogg"
Incbin "sound/distoLose.ogg"
Incbin "sound/distoWin.ogg"
Incbin "sound/tohf.ogg"
Incbin "sound/tobf.ogg"

Global soundBass:TSound = LoadSound("incbin::sound/basshouse.ogg",True)
Global soundTreble:TSound = LoadSound("incbin::sound/bassdance16.ogg",True)
Global soundExplosion:TSound = LoadSound("incbin::sound/Explosion2.wav")
Global soundBomb1:TSound = LoadSound("incbin::sound/rocket1.ogg")
Global soundMusic1:TSound = LoadSound("incbin::sound/rythmedance70.ogg",True)
Global soundAlly1:TSound = LoadSound("incbin::sound/bassrock3D.ogg",True)
Global soundAlly2:TSound = LoadSound("incbin::sound/orchestre1.ogg",True)
Global soundAlly3:TSound = LoadSound("incbin::sound/bassrock4D.ogg",True)
Global soundAlly4:TSound = LoadSound("incbin::sound/orchestre2.ogg",True)
Global soundAlly5:TSound = LoadSound("incbin::sound/bassrock1D.ogg",True)
Global soundAlly6:TSound = LoadSound("incbin::sound/bassrock1D.ogg",True)

Global soundStart:TSound = LoadSound("incbin::sound/321launch.ogg") 'son de début du jeu
Global soundStart2:TSound = LoadSound("incbin::sound/myst.ogg") ' autre son de début du jeu 
Global soundGameOver:TSound = LoadSound("incbin::sound/distoLose.ogg") 'son de gameover
Global soundWin:TSound = LoadSound("incbin::sound/distoWin.ogg") 'son de fin de niveau

Global soundToHF:TSound = LoadSound("incbin::sound/tohf.ogg") 'son de changement de fréquence
Global soundToBF:TSound = LoadSound("incbin::sound/tobf.ogg")

'Channels
Global channelMusic:TChannel = AllocChannel()
Global channelBass:TChannel = AllocChannel()
Global channelMid:TChannel = AllocChannel()
Global channelTreble:TChannel = AllocChannel()
Global channelExplosion:TChannel = AllocChannel()
Global channelAlly1:TChannel = AllocChannel()
Global channelAlly2:TChannel = AllocChannel()
Global channelAlly3:TChannel = AllocChannel()
Global channelAlly4:TChannel = AllocChannel()
Global channelAlly5:TChannel = AllocChannel()
Global channelAlly6:TChannel = AllocChannel()

Global soundOff = False 'son éteint ?

Function initChannels()
	SetChannelVolume channelExplosion,0.3
	SetChannelVolume channelTreble,0
	SetChannelVolume channelMid,0.15
	SetChannelVolume channelMusic,0.7
	SetChannelVolume channelBass,0
	setAllyChannelsVolume(0)
	CueSound soundMusic1,channelMusic
	CueSound soundBass,channelBass
	CueSound soundTreble,channelTreble
	CueSound soundAlly1,channelAlly1
	CueSound soundAlly2,channelAlly2
	CueSound soundAlly3,channelAlly3
	CueSound soundAlly4,channelAlly4
End Function

Function pauseGameChannels()
	PauseChannel channelExplosion
	PauseChannel channelTreble
	PauseChannel channelMid
	PauseChannel channelMusic
	PauseChannel channelBass
	PauseChannel channelAlly1
	PauseChannel channelAlly2
	PauseChannel channelAlly3
	PauseChannel channelAlly4
End Function

Function resumeGameChannels()
	ResumeChannel channelExplosion
	ResumeChannel channelTreble
	ResumeChannel channelMid
	ResumeChannel channelMusic
	ResumeChannel channelBass
	ResumeChannel channelAlly1
	ResumeChannel channelAlly2
	ResumeChannel channelAlly3
	ResumeChannel channelAlly4
End Function

Function setGameChannelsVolume(volume#)
	SetChannelVolume channelExplosion,volume
	SetChannelVolume channelTreble,volume
	SetChannelVolume channelMid,volume
	SetChannelVolume channelMusic,volume
	SetChannelVolume channelBass,volume
	SetChannelVolume channelAlly1,volume
	SetChannelVolume channelAlly2,volume
	SetChannelVolume channelAlly3,volume
	SetChannelVolume channelally4,volume
End Function

Function setGameChannelsRate(rate#)
	SetChannelRate channelExplosion,rate
	SetChannelRate channelTreble,rate
	SetChannelRate channelMid,rate
	SetChannelRate channelMusic,rate
	SetChannelRate channelBass,rate
	SetChannelRate channelAlly1,rate
	SetChannelRate channelAlly2,rate
	SetChannelRate channelAlly3,rate
	SetChannelRate channelAlly4,rate
End Function

Function setAllyChannelsVolume(volume#)
	SetChannelVolume channelAlly1,volume
	SetChannelVolume channelAlly2,volume
	SetChannelVolume channelAlly3,volume
	SetChannelVolume channelAlly4,volume
End Function





'ce serait peut-être plus simple de faire des boucles ...
'oui, définitivement

