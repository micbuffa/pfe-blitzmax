	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_cocoamaxgui_cocoamaxgui
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_fltkmaxgui_fltkmaxgui
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_lua_lua
	extrn	___bb_luascript_luascript
	extrn	___bb_maxgui_maxgui
	extrn	___bb_maxml_maxml
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	___bb_win32maxgui_win32maxgui
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbFloatToInt
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_brl_audio_AllocChannel
	extrn	_brl_audio_CueSound
	extrn	_brl_audio_LoadSound
	extrn	_brl_audio_SetChannelRate
	extrn	_brl_audio_SetChannelVolume
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_Graphics
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_ImageHeight
	extrn	_brl_max2d_ImageWidth
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_LoadImageFont
	extrn	_brl_max2d_MidHandleImage
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_max2d_SetImageFont
	extrn	_brl_max2d_SetMaskColor
	extrn	_brl_max2d_SetRotation
	extrn	_brl_max2d_SetScale
	extrn	_brl_polledinput_MouseDown
	extrn	_brl_polledinput_MouseX
	extrn	_brl_polledinput_MouseY
	extrn	_brl_random_Rnd
	extrn	_brl_random_RndFloat
	extrn	_brl_system_HideMouse
	public	__bb_TButton_Create
	public	__bb_TButton_Delete
	public	__bb_TButton_Destroy
	public	__bb_TButton_New
	public	__bb_TButton_clicked
	public	__bb_TButton_moveOn
	public	__bb_TButton_upDate
	public	__bb_TLightPart_Create
	public	__bb_TLightPart_Delete
	public	__bb_TLightPart_Destroy
	public	__bb_TLightPart_New
	public	__bb_TLightPart_UpdateAll
	public	__bb_main
	public	_bb_TButton
	public	_bb_TLightPart
	public	_bb_XCoord
	public	_bb_ancreon
	public	_bb_backgd
	public	_bb_boomer
	public	_bb_buttonList
	public	_bb_channelBG
	public	_bb_guitarist
	public	_bb_hybrid
	public	_bb_lightImage
	public	_bb_ligthPartBlueImg
	public	_bb_ligthPartLBlueImg
	public	_bb_ligthPartPurpleImg
	public	_bb_menu
	public	_bb_musicBG
	public	_bb_optionsButtonImg
	public	_bb_partFlag
	public	_bb_partList
	public	_bb_partNumber
	public	_bb_partTimer
	public	_bb_playButtonImg
	public	_bb_pulseFlag
	public	_bb_pulseFlagZ
	public	_bb_pulseValue
	public	_bb_quitButtonImg
	public	_bb_rotFlag
	public	_bb_rotValue
	public	_bb_vib
	public	_bb_zImg
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_214],0
	je	_215
	mov	eax,0
	pop	ebx
	pop	ebp
	ret
_215:
	mov	dword [_214],1
	push	ebp
	push	_180
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_cocoamaxgui_cocoamaxgui
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_eventqueue_eventqueue
	call	___bb_fltkmaxgui_fltkmaxgui
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_maxgui_maxgui
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_win32maxgui_win32maxgui
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_lua_lua
	call	___bb_luascript_luascript
	call	___bb_maxml_maxml
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,1
	cmp	eax,0
	jne	_112
	push	-1
	push	_11
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_lightImage],eax
	or	dword [_111],1
_112:
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,2
	cmp	eax,0
	jne	_115
	push	-1
	push	_12
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_backgd],eax
	or	dword [_111],2
_115:
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,4
	cmp	eax,0
	jne	_118
	push	-1
	push	_13
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_boomer],eax
	or	dword [_111],4
_118:
	push	_119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,8
	cmp	eax,0
	jne	_121
	push	-1
	push	_14
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_vib],eax
	or	dword [_111],8
_121:
	push	_122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,16
	cmp	eax,0
	jne	_124
	push	-1
	push	_15
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_zImg],eax
	or	dword [_111],16
_124:
	push	_125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,32
	cmp	eax,0
	jne	_127
	push	-1
	push	_16
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_playButtonImg],eax
	or	dword [_111],32
_127:
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,64
	cmp	eax,0
	jne	_130
	push	-1
	push	_17
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_optionsButtonImg],eax
	or	dword [_111],64
_130:
	push	_131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,128
	cmp	eax,0
	jne	_133
	push	-1
	push	_18
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_quitButtonImg],eax
	or	dword [_111],128
_133:
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,256
	cmp	eax,0
	jne	_136
	push	-1
	push	_19
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_guitarist],eax
	or	dword [_111],256
_136:
	push	_137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,512
	cmp	eax,0
	jne	_139
	push	4
	push	250
	push	_20
	call	_brl_max2d_LoadImageFont
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_hybrid],eax
	or	dword [_111],512
_139:
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,1024
	cmp	eax,0
	jne	_142
	push	4
	push	250
	push	_21
	call	_brl_max2d_LoadImageFont
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_ancreon],eax
	or	dword [_111],1024
_142:
	push	_143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,2048
	cmp	eax,0
	jne	_145
	call	_brl_audio_AllocChannel
	inc	dword [eax+4]
	mov	dword [_bb_channelBG],eax
	or	dword [_111],2048
_145:
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,4096
	cmp	eax,0
	jne	_148
	push	1
	push	_22
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_musicBG],eax
	or	dword [_111],4096
_148:
	push	_149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_channelBG]
	push	dword [_bb_musicBG]
	call	_brl_audio_CueSound
	add	esp,8
	push	_150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1053609165
	push	dword [_bb_channelBG]
	call	_brl_audio_SetChannelVolume
	add	esp,8
	push	_151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	dword [_bb_channelBG]
	call	_brl_audio_SetChannelRate
	add	esp,8
	push	_152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,8192
	cmp	eax,0
	jne	_163
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_partList],eax
	or	dword [_111],8192
_163:
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,16384
	cmp	eax,0
	jne	_166
	push	-1
	push	_23
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_ligthPartBlueImg],eax
	or	dword [_111],16384
_166:
	push	_167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,32768
	cmp	eax,0
	jne	_169
	push	-1
	push	_24
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_ligthPartPurpleImg],eax
	or	dword [_111],32768
_169:
	push	_170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,65536
	cmp	eax,0
	jne	_172
	push	-1
	push	_25
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_ligthPartLBlueImg],eax
	or	dword [_111],65536
_172:
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_111]
	and	eax,131072
	cmp	eax,0
	jne	_175
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_buttonList],eax
	or	dword [_111],131072
_175:
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_34
	push	dword [_bb_playButtonImg]
	push	320
	push	40
	call	dword [_bb_TButton+48]
	add	esp,16
	push	_177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_35
	push	dword [_bb_optionsButtonImg]
	push	400
	push	100
	call	dword [_bb_TButton+48]
	add	esp,16
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_36
	push	dword [_bb_quitButtonImg]
	push	480
	push	160
	call	dword [_bb_TButton+48]
	add	esp,16
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_system_HideMouse
	mov	ebx,0
	jmp	_62
_62:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	pop	ebp
	ret
__bb_TButton_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_231
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TButton
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_218
	call	_brl_blitz_NullObjectError
_218:
	fldz
	fstp	dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_221
	call	_brl_blitz_NullObjectError
_221:
	fldz
	fstp	dword [ebx+12]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_224
	call	_brl_blitz_NullObjectError
_224:
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_228
	call	_brl_blitz_NullObjectError
_228:
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	mov	ebx,0
	jmp	_65
_65:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TButton_Delete:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_240
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
_68:
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_237
	push	eax
	call	_bbGCFree
	add	esp,4
_237:
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_239
	push	eax
	call	_bbGCFree
	add	esp,4
_239:
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bbObjectClass
	push	dword [ebp-4]
	call	_bbObjectDtor
	add	esp,4
	mov	ebx,0
	jmp	_235
_235:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TButton_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_295
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TButton
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_246
	call	_brl_blitz_NullObjectError
_246:
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fstp	dword [ebx+8]
	push	_248
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_250
	call	_brl_blitz_NullObjectError
_250:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fstp	dword [ebx+12]
	push	_252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_254
	call	_brl_blitz_NullObjectError
_254:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_259
	push	eax
	call	_bbGCFree
	add	esp,4
_259:
	mov	dword [esi+16],ebx
	push	_260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_262
	call	_brl_blitz_NullObjectError
_262:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_267
	push	eax
	call	_bbGCFree
	add	esp,4
_267:
	mov	dword [esi+20],ebx
	push	_268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_buttonList]
	cmp	ebx,_bbNullObject
	jne	_270
	call	_brl_blitz_NullObjectError
_270:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1056964608
	push	1056964608
	call	_brl_max2d_SetScale
	add	esp,8
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_274
	call	_brl_blitz_NullObjectError
_274:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_276
	call	_brl_blitz_NullObjectError
_276:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_278
	call	_brl_blitz_NullObjectError
_278:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+16]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_ancreon]
	call	_brl_max2d_SetImageFont
	add	esp,4
	push	_280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1050253722
	push	1050253722
	call	_brl_max2d_SetScale
	add	esp,8
	push	_281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_284
	call	_brl_blitz_NullObjectError
_284:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_286
	call	_brl_blitz_NullObjectError
_286:
	push	dword [ebx+12]
	fld	dword [esi+8]
	fsub	dword [_692]
	sub	esp,4
	fstp	dword [esp]
	push	_26
	call	_brl_max2d_DrawText
	add	esp,12
	push	_287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_289
	call	_brl_blitz_NullObjectError
_289:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_291
	call	_brl_blitz_NullObjectError
_291:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_293
	call	_brl_blitz_NullObjectError
_293:
	push	dword [ebx+12]
	fld	dword [edi+8]
	fstp	dword [ebp-24]
	push	dword [esi+16]
	call	_brl_max2d_ImageWidth
	add	esp,4
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fld	dword [ebp-24]
	faddp	st1,st0
	fstp	dword [ebp-24]
	push	dword [ebp-24]
	push	_27
	call	_brl_max2d_DrawText
	add	esp,12
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	mov	ebx,0
	jmp	_74
_74:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TButton_Destroy:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_301
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_buttonList]
	cmp	ebx,_bbNullObject
	jne	_300
	call	_brl_blitz_NullObjectError
_300:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	ebx,0
	jmp	_77
_77:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TButton_moveOn:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,ebp
	push	eax
	push	_325
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_305
	call	_brl_blitz_NullObjectError
_305:
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fld	dword [ebx+8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	je	_310
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_307
	call	_brl_blitz_NullObjectError
_307:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_309
	call	_brl_blitz_NullObjectError
_309:
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fstp	dword [ebp-24]
	fld	dword [esi+8]
	fstp	dword [ebp-12]
	push	dword [ebx+16]
	call	_brl_max2d_ImageWidth
	add	esp,4
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fld	dword [ebp-12]
	faddp	st1,st0
	fstp	dword [ebp-12]
	fld	dword [ebp-12]
	fld	dword [ebp-24]
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_310:
	cmp	eax,0
	je	_314
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_313
	call	_brl_blitz_NullObjectError
_313:
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fld	dword [ebx+12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_314:
	cmp	eax,0
	je	_320
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_317
	call	_brl_blitz_NullObjectError
_317:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_319
	call	_brl_blitz_NullObjectError
_319:
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fstp	dword [ebp-20]
	fld	dword [esi+12]
	fstp	dword [ebp-16]
	push	dword [ebx+16]
	call	_brl_max2d_ImageHeight
	add	esp,4
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fld	dword [ebp-16]
	faddp	st1,st0
	fstp	dword [ebp-16]
	fld	dword [ebp-16]
	fld	dword [ebp-20]
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
_320:
	cmp	eax,0
	je	_322
	push	_323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	jmp	_81
_322:
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_81
_81:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TButton_upDate:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_362
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	eax,dword [_bb_buttonList]
	mov	dword [ebp-16],eax
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_332
	call	_brl_blitz_NullObjectError
_332:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_28
_30:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_337
	call	_brl_blitz_NullObjectError
_337:
	push	_bb_TButton
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_28
	push	_338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1056964608
	push	1056964608
	call	_brl_max2d_SetScale
	add	esp,8
	push	_339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_341
	call	_brl_blitz_NullObjectError
_341:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_343
	call	_brl_blitz_NullObjectError
_343:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_345
	call	_brl_blitz_NullObjectError
_345:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+16]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_ancreon]
	call	_brl_max2d_SetImageFont
	add	esp,4
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1050253722
	push	1050253722
	call	_brl_max2d_SetScale
	add	esp,8
	push	_348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_351
	call	_brl_blitz_NullObjectError
_351:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_353
	call	_brl_blitz_NullObjectError
_353:
	push	dword [ebx+12]
	fld	dword [esi+8]
	fsub	dword [_724]
	sub	esp,4
	fstp	dword [esp]
	push	_26
	call	_brl_max2d_DrawText
	add	esp,12
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_358
	call	_brl_blitz_NullObjectError
_358:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_360
	call	_brl_blitz_NullObjectError
_360:
	push	dword [ebx+12]
	fld	dword [edi+8]
	fstp	dword [ebp-8]
	push	dword [esi+16]
	call	_brl_max2d_ImageWidth
	add	esp,4
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-20],eax
	fild	dword [ebp+-20]
	fld	dword [ebp-8]
	faddp	st1,st0
	fstp	dword [ebp-8]
	push	dword [ebp-8]
	push	_27
	call	_brl_max2d_DrawText
	add	esp,12
	push	_361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
_28:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_335
	call	_brl_blitz_NullObjectError
_335:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
	mov	ebx,0
	jmp	_83
_83:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TButton_clicked:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_369
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	cmp	eax,0
	je	_365
	push	_366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	jmp	_85
_365:
	push	_368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_85
_85:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	pop	ebp
	ret
__bb_TLightPart_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_399
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TLightPart
	push	_371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_373
	call	_brl_blitz_NullObjectError
_373:
	fldz
	fstp	dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_376
	call	_brl_blitz_NullObjectError
_376:
	fldz
	fstp	dword [ebx+12]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_379
	call	_brl_blitz_NullObjectError
_379:
	mov	dword [ebx+16],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_382
	call	_brl_blitz_NullObjectError
_382:
	mov	dword [ebx+20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_385
	call	_brl_blitz_NullObjectError
_385:
	mov	dword [ebx+24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_388
	call	_brl_blitz_NullObjectError
_388:
	fldz
	fstp	dword [ebx+28]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_391
	call	_brl_blitz_NullObjectError
_391:
	fldz
	fstp	dword [ebx+32]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_394
	call	_brl_blitz_NullObjectError
_394:
	fldz
	fstp	dword [ebx+36]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_397
	call	_brl_blitz_NullObjectError
_397:
	mov	dword [ebx+40],0
	mov	ebx,0
	jmp	_88
_88:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLightPart_Delete:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_402
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
_91:
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bbObjectClass
	push	dword [ebp-4]
	call	_bbObjectDtor
	add	esp,4
	mov	ebx,0
	jmp	_401
_401:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLightPart_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	fld	dword [ebp+24]
	fstp	dword [ebp-20]
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	dword [ebp-28],_bbNullObject
	push	ebp
	push	_432
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TLightPart
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-28],eax
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_407
	call	_brl_blitz_NullObjectError
_407:
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	fstp	dword [ebx+8]
	push	_409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_411
	call	_brl_blitz_NullObjectError
_411:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	fstp	dword [ebx+12]
	push	_413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_415
	call	_brl_blitz_NullObjectError
_415:
	fld	dword [ebp-12]
	fstp	dword [ebx+28]
	push	_417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_419
	call	_brl_blitz_NullObjectError
_419:
	fld	dword [ebp-16]
	fstp	dword [ebx+32]
	push	_421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_423
	call	_brl_blitz_NullObjectError
_423:
	fld	dword [ebp-20]
	fstp	dword [ebx+36]
	push	_425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_427
	call	_brl_blitz_NullObjectError
_427:
	mov	eax,dword [ebp-24]
	mov	dword [ebx+40],eax
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_partList]
	cmp	ebx,_bbNullObject
	jne	_431
	call	_brl_blitz_NullObjectError
_431:
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_99
_99:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLightPart_Destroy:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_437
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_partList]
	cmp	ebx,_bbNullObject
	jne	_436
	call	_brl_blitz_NullObjectError
_436:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	ebx,0
	jmp	_102
_102:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLightPart_UpdateAll:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_505
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [_bb_partList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_442
	call	_brl_blitz_NullObjectError
_442:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_31
_33:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_447
	call	_brl_blitz_NullObjectError
_447:
	push	_bb_TLightPart
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_31
	push	_448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_450
	call	_brl_blitz_NullObjectError
_450:
	fld	dword [ebx+32]
	fstp	dword [ebp-8]
	call	_brl_random_RndFloat
	fsub	dword [_768]
	fld	dword [ebp-8]
	faddp	st1,st0
	fstp	dword [ebp-8]
	fld	dword [ebp-8]
	fstp	dword [ebx+32]
	push	_452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_454
	call	_brl_blitz_NullObjectError
_454:
	mov	esi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_457
	call	_brl_blitz_NullObjectError
_457:
	fld	dword [esi+8]
	fadd	dword [ebx+28]
	fstp	dword [esi+8]
	push	_458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_460
	call	_brl_blitz_NullObjectError
_460:
	mov	esi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_463
	call	_brl_blitz_NullObjectError
_463:
	fld	dword [esi+12]
	fadd	dword [ebx+32]
	fstp	dword [esi+12]
	push	_464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_466
	call	_brl_blitz_NullObjectError
_466:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_468
	call	_brl_blitz_NullObjectError
_468:
	push	dword [ebx+36]
	push	dword [esi+36]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_769]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [_bb_partNumber],eax
	push	_470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partNumber],1
	jne	_471
	push	_472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_474
	call	_brl_blitz_NullObjectError
_474:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_476
	call	_brl_blitz_NullObjectError
_476:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [_bb_ligthPartBlueImg]
	call	_brl_max2d_DrawImage
	add	esp,16
	jmp	_477
_471:
	push	_478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partNumber],2
	jne	_479
	push	_480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_482
	call	_brl_blitz_NullObjectError
_482:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_484
	call	_brl_blitz_NullObjectError
_484:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [_bb_ligthPartPurpleImg]
	call	_brl_max2d_DrawImage
	add	esp,16
	jmp	_485
_479:
	push	_486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partNumber],3
	jne	_487
	push	_488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_490
	call	_brl_blitz_NullObjectError
_490:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_492
	call	_brl_blitz_NullObjectError
_492:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [_bb_ligthPartLBlueImg]
	call	_brl_max2d_DrawImage
	add	esp,16
_487:
_485:
_477:
	push	_493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_496
	call	_brl_blitz_NullObjectError
_496:
	sub	dword [ebx+40],1
	push	_498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_500
	call	_brl_blitz_NullObjectError
_500:
	cmp	dword [ebx+40],1
	jge	_501
	push	_502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_504
	call	_brl_blitz_NullObjectError
_504:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
_501:
_31:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_445
	call	_brl_blitz_NullObjectError
_445:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_33
_32:
	mov	ebx,0
	jmp	_104
_104:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_menu:
	push	ebp
	mov	ebp,esp
	sub	esp,40
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	fldz
	fstp	dword [ebp-16]
	fldz
	fstp	dword [ebp-20]
	mov	eax,ebp
	push	eax
	push	_659
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_511
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_backgd]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1133903872
	push	1138819072
	push	dword [_bb_guitarist]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_513
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_boomer]
	call	_brl_max2d_MidHandleImage
	add	esp,4
	push	_514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1056964608
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_rotValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],1
	jne	_518
	push	_519
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_pulseValue],1
	push	_520
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_796]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_797]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_798]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_799]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseValue],10
	jle	_522
	push	_523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_pulseFlag],0
_522:
	jmp	_524
_518:
	push	_525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],0
	jne	_526
	push	_527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_pulseValue],1
	push	_528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_800]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_801]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_802]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_803]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseValue],0
	jge	_530
	push	_531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_pulseFlag],1
_530:
_526:
_524:
	push	_532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1066611507
	push	1066611507
	call	_brl_max2d_SetScale
	add	esp,8
	push	_533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1102577664
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_535
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	-1041235968
	push	1133248512
	push	dword [_bb_vib]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_zImg]
	call	_brl_max2d_MidHandleImage
	add	esp,4
	push	_537
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1058642330
	push	1060320051
	call	_brl_max2d_SetScale
	add	esp,8
	push	_538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlagZ],1
	jne	_539
	push	_540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_804]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_805]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_806]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_807]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_541
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseValue],5
	jle	_542
	push	_543
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_pulseFlagZ],0
_542:
	push	_544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1128792064
	push	1143111680
	push	dword [_bb_zImg]
	call	_brl_max2d_DrawImage
	add	esp,16
	jmp	_545
_539:
	push	_546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlagZ],0
	jne	_547
	push	_548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_808]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_809]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_810]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_811]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_549
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseValue],10
	jle	_550
	push	_551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_pulseFlagZ],0
_550:
	push	_552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1128792064
	push	1143111680
	push	dword [_bb_zImg]
	call	_brl_max2d_DrawImage
	add	esp,16
_547:
_545:
	push	_553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TButton+60]
	push	_555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_556
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetMaskColor
	add	esp,12
	push	_557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	eax,dword [_bb_buttonList]
	mov	dword [ebp-36],eax
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_561
	call	_brl_blitz_NullObjectError
_561:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-32],eax
	jmp	_37
_39:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_566
	call	_brl_blitz_NullObjectError
_566:
	push	_bb_TButton
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_37
	push	_567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_569
	call	_brl_blitz_NullObjectError
_569:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	cmp	eax,0
	je	_570
	push	_571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_ancreon]
	call	_brl_max2d_SetImageFont
	add	esp,4
	push	_572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_573
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	245
	push	245
	call	_brl_max2d_SetColor
	add	esp,12
	push	_574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_576
	call	_brl_blitz_NullObjectError
_576:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_578
	call	_brl_blitz_NullObjectError
_578:
	push	dword [ebx+12]
	fld	dword [esi+8]
	fsub	dword [_812]
	sub	esp,4
	fstp	dword [esp]
	push	_26
	call	_brl_max2d_DrawText
	add	esp,12
	push	_579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_581
	call	_brl_blitz_NullObjectError
_581:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_583
	call	_brl_blitz_NullObjectError
_583:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_585
	call	_brl_blitz_NullObjectError
_585:
	push	dword [ebx+12]
	fld	dword [edi+8]
	fstp	dword [ebp-24]
	push	dword [esi+16]
	call	_brl_max2d_ImageWidth
	add	esp,4
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fld	dword [ebp-24]
	faddp	st1,st0
	fstp	dword [ebp-24]
	push	dword [ebp-24]
	push	_27
	call	_brl_max2d_DrawText
	add	esp,12
	push	_586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax]
	call	dword [eax+64]
	cmp	eax,0
	je	_588
	push	_589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_591
	call	_brl_blitz_NullObjectError
_591:
	push	_34
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_592
	push	_593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],1
	jmp	_595
_592:
	push	_596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_598
	call	_brl_blitz_NullObjectError
_598:
	push	_35
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_599
	push	_600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],0
	je	_602
	push	_603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	32
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	jmp	_605
_602:
	push	_606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],1
_605:
	jmp	_608
_599:
	push	_609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_611
	call	_brl_blitz_NullObjectError
_611:
	push	_36
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_612
	push	_613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
_612:
_608:
_595:
_588:
_570:
_37:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_564
	call	_brl_blitz_NullObjectError
_564:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_39
_38:
	push	_614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_lightImage]
	call	_brl_max2d_MidHandleImage
	add	esp,4
	push	_618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1056964608
	push	1056964608
	call	_brl_max2d_SetScale
	add	esp,8
	push	_619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],1
	jne	_620
	push	_621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_813]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_814]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_815]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_816]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_lightImage]
	call	_brl_max2d_DrawImage
	add	esp,16
	jmp	_623
_620:
	push	_624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],0
	jne	_625
	push	_626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_817]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_818]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_819]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	fmul	dword [_820]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-40],eax
	fild	dword [ebp+-40]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_lightImage]
	call	_brl_max2d_DrawImage
	add	esp,16
_625:
_623:
	push	_628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_821]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [_bb_partNumber],eax
	push	_629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partTimer],400
	jle	_633
	push	_634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_822]
	fstp	dword [ebp-16]
	push	_636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-20]
	fld	dword [_823]
	fstp	dword [ebp-20]
	jmp	_638
_42:
	push	_639
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fstp	dword [ebp-28]
	call	_brl_random_RndFloat
	fld	dword [ebp-28]
	fsubrp	st1,st0
	fstp	dword [ebp-28]
	fld	dword [ebp-28]
	fstp	dword [ebp-16]
	push	_640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	660
	push	1045220557
	fld	dword [ebp-16]
	fsub	dword [_824]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-20]
	push	-30
	push	dword [_bb_XCoord]
	call	dword [_bb_TLightPart+48]
	add	esp,24
_40:
	fld	dword [ebp-20]
	fadd	dword [_825]
	fstp	dword [ebp-20]
_638:
	fld	dword [ebp-20]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_42
_41:
	push	_641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_XCoord],800
	jle	_642
	push	_643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partFlag],1
	push	_644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partTimer],0
	jmp	_645
_642:
	push	_646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_XCoord],0
	jge	_647
	push	_648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partFlag],0
	push	_649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partTimer],0
_647:
_645:
	push	_650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partFlag],0
	jne	_651
	push	_652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_XCoord],20
	jmp	_653
_651:
	push	_654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partFlag],1
	jne	_655
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_XCoord],20
_655:
_653:
_633:
	push	_657
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TLightPart+56]
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_partTimer],1
	mov	ebx,0
	jmp	_106
_106:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_214:
	dd	0
_181:
	db	"menu",0
_182:
	db	"lightImage",0
_49:
	db	":TImage",0
	align	4
_bb_lightImage:
	dd	_bbNullObject
_183:
	db	"backgd",0
	align	4
_bb_backgd:
	dd	_bbNullObject
_184:
	db	"boomer",0
	align	4
_bb_boomer:
	dd	_bbNullObject
_185:
	db	"vib",0
	align	4
_bb_vib:
	dd	_bbNullObject
_186:
	db	"zImg",0
	align	4
_bb_zImg:
	dd	_bbNullObject
_187:
	db	"playButtonImg",0
	align	4
_bb_playButtonImg:
	dd	_bbNullObject
_188:
	db	"optionsButtonImg",0
	align	4
_bb_optionsButtonImg:
	dd	_bbNullObject
_189:
	db	"quitButtonImg",0
	align	4
_bb_quitButtonImg:
	dd	_bbNullObject
_190:
	db	"guitarist",0
	align	4
_bb_guitarist:
	dd	_bbNullObject
_191:
	db	"hybrid",0
_192:
	db	":timagefont",0
	align	4
_bb_hybrid:
	dd	_bbNullObject
_193:
	db	"ancreon",0
	align	4
_bb_ancreon:
	dd	_bbNullObject
_194:
	db	"channelBG",0
_195:
	db	":TChannel",0
	align	4
_bb_channelBG:
	dd	_bbNullObject
_196:
	db	"musicBG",0
_197:
	db	":TSound",0
	align	4
_bb_musicBG:
	dd	_bbNullObject
_198:
	db	"XCoord",0
_55:
	db	"i",0
	align	4
_bb_XCoord:
	dd	1
_199:
	db	"partFlag",0
	align	4
_bb_partFlag:
	dd	0
_200:
	db	"partTimer",0
	align	4
_bb_partTimer:
	dd	1000
_201:
	db	"pulseValue",0
	align	4
_bb_pulseValue:
	dd	1
_202:
	db	"pulseFlag",0
	align	4
_bb_pulseFlag:
	dd	1
_203:
	db	"rotFlag",0
	align	4
_bb_rotFlag:
	dd	1
_204:
	db	"rotValue",0
	align	4
_bb_rotValue:
	dd	1
_205:
	db	"pulseFlagZ",0
	align	4
_bb_pulseFlagZ:
	dd	1
_206:
	db	"partNumber",0
	align	4
_bb_partNumber:
	dd	0
_207:
	db	"partList",0
_208:
	db	":TList",0
	align	4
_bb_partList:
	dd	_bbNullObject
_209:
	db	"ligthPartBlueImg",0
	align	4
_bb_ligthPartBlueImg:
	dd	_bbNullObject
_210:
	db	"ligthPartPurpleImg",0
	align	4
_bb_ligthPartPurpleImg:
	dd	_bbNullObject
_211:
	db	"ligthPartLBlueImg",0
	align	4
_bb_ligthPartLBlueImg:
	dd	_bbNullObject
_212:
	db	"buttonList",0
_213:
	db	":Tlist",0
	align	4
_bb_buttonList:
	dd	_bbNullObject
	align	4
_180:
	dd	1
	dd	_181
	dd	4
	dd	_182
	dd	_49
	dd	_bb_lightImage
	dd	4
	dd	_183
	dd	_49
	dd	_bb_backgd
	dd	4
	dd	_184
	dd	_49
	dd	_bb_boomer
	dd	4
	dd	_185
	dd	_49
	dd	_bb_vib
	dd	4
	dd	_186
	dd	_49
	dd	_bb_zImg
	dd	4
	dd	_187
	dd	_49
	dd	_bb_playButtonImg
	dd	4
	dd	_188
	dd	_49
	dd	_bb_optionsButtonImg
	dd	4
	dd	_189
	dd	_49
	dd	_bb_quitButtonImg
	dd	4
	dd	_190
	dd	_49
	dd	_bb_guitarist
	dd	4
	dd	_191
	dd	_192
	dd	_bb_hybrid
	dd	4
	dd	_193
	dd	_192
	dd	_bb_ancreon
	dd	4
	dd	_194
	dd	_195
	dd	_bb_channelBG
	dd	4
	dd	_196
	dd	_197
	dd	_bb_musicBG
	dd	4
	dd	_198
	dd	_55
	dd	_bb_XCoord
	dd	4
	dd	_199
	dd	_55
	dd	_bb_partFlag
	dd	4
	dd	_200
	dd	_55
	dd	_bb_partTimer
	dd	4
	dd	_201
	dd	_55
	dd	_bb_pulseValue
	dd	4
	dd	_202
	dd	_55
	dd	_bb_pulseFlag
	dd	4
	dd	_203
	dd	_55
	dd	_bb_rotFlag
	dd	4
	dd	_204
	dd	_55
	dd	_bb_rotValue
	dd	4
	dd	_205
	dd	_55
	dd	_bb_pulseFlagZ
	dd	4
	dd	_206
	dd	_55
	dd	_bb_partNumber
	dd	4
	dd	_207
	dd	_208
	dd	_bb_partList
	dd	4
	dd	_209
	dd	_49
	dd	_bb_ligthPartBlueImg
	dd	4
	dd	_210
	dd	_49
	dd	_bb_ligthPartPurpleImg
	dd	4
	dd	_211
	dd	_49
	dd	_bb_ligthPartLBlueImg
	dd	4
	dd	_212
	dd	_213
	dd	_bb_buttonList
	dd	0
_109:
	db	"D:/cours/PFE/Vibz/background/menu.bmx",0
	align	4
_108:
	dd	_109
	dd	8
	dd	1
	align	4
_111:
	dd	0
	align	4
_11:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,112,117,108,115,101
	dw	46,112,110,103
	align	4
_113:
	dd	_109
	dd	9
	dd	1
	align	4
_12:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,98,97,99,107,103
	dw	100,46,112,110,103
	align	4
_116:
	dd	_109
	dd	10
	dd	1
	align	4
_13:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,98,111,111,109,101
	dw	114,46,112,110,103
	align	4
_119:
	dd	_109
	dd	11
	dd	1
	align	4
_14:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,118,105,98,46,112
	dw	110,103
	align	4
_122:
	dd	_109
	dd	12
	dd	1
	align	4
_15:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,90,52,46,112,110
	dw	103
	align	4
_125:
	dd	_109
	dd	14
	dd	1
	align	4
_16:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,106,111,117,101,114
	dw	46,112,110,103
	align	4
_128:
	dd	_109
	dd	15
	dd	1
	align	4
_17:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,111,112,116,105,111
	dw	110,115,46,112,110,103
	align	4
_131:
	dd	_109
	dd	16
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,113,117,105,116,116
	dw	101,114,46,112,110,103
	align	4
_134:
	dd	_109
	dd	18
	dd	1
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	105,109,97,103,101,115,47,97
	dw	118,97,116,97,114,46,112,110
	dw	103
	align	4
_137:
	dd	_109
	dd	21
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,72,121,98,114,105
	dw	100,95,98,46,116,116,102
	align	4
_140:
	dd	_109
	dd	22
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,97,110,99,114,101
	dw	111,110,46,116,116,102
	align	4
_143:
	dd	_109
	dd	26
	dd	1
	align	4
_146:
	dd	_109
	dd	27
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	115,111,117,110,100,47,83,109
	dw	111,111,116,104,70,117,108,108
	dw	46,111,103,103
	align	4
_149:
	dd	_109
	dd	28
	dd	1
	align	4
_150:
	dd	_109
	dd	29
	dd	1
	align	4
_151:
	dd	_109
	dd	30
	dd	1
	align	4
_152:
	dd	_109
	dd	34
	dd	1
	align	4
_153:
	dd	_109
	dd	35
	dd	1
	align	4
_154:
	dd	_109
	dd	36
	dd	1
	align	4
_155:
	dd	_109
	dd	38
	dd	1
	align	4
_156:
	dd	_109
	dd	39
	dd	1
	align	4
_157:
	dd	_109
	dd	40
	dd	1
	align	4
_158:
	dd	_109
	dd	41
	dd	1
	align	4
_159:
	dd	_109
	dd	43
	dd	1
	align	4
_160:
	dd	_109
	dd	45
	dd	1
	align	4
_161:
	dd	_109
	dd	46
	dd	1
	align	4
_164:
	dd	_109
	dd	47
	dd	1
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,112,97,114,116,98
	dw	108,117,101,46,112,110,103
	align	4
_167:
	dd	_109
	dd	48
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,112,97,114,116,112
	dw	117,114,112,108,101,46,112,110
	dw	103
	align	4
_170:
	dd	_109
	dd	49
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	98,97,99,107,103,114,111,117
	dw	110,100,47,112,97,114,116,98
	dw	108,117,101,50,46,112,110,103
	align	4
_173:
	dd	_109
	dd	51
	dd	1
	align	4
_176:
	dd	_109
	dd	157
	dd	2
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	112,108,97,121
_44:
	db	"TButton",0
_45:
	db	"x",0
_46:
	db	"f",0
_47:
	db	"y",0
_48:
	db	"img",0
_50:
	db	"name",0
_51:
	db	"$",0
	align	4
_43:
	dd	2
	dd	_44
	dd	3
	dd	_45
	dd	_46
	dd	8
	dd	3
	dd	_47
	dd	_46
	dd	12
	dd	3
	dd	_48
	dd	_49
	dd	16
	dd	3
	dd	_50
	dd	_51
	dd	20
	dd	0
	align	4
_bb_TButton:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_43
	dd	24
	dd	__bb_TButton_New
	dd	__bb_TButton_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TButton_Create
	dd	__bb_TButton_Destroy
	dd	__bb_TButton_moveOn
	dd	__bb_TButton_upDate
	dd	__bb_TButton_clicked
	align	4
_177:
	dd	_109
	dd	158
	dd	2
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	111,112,116,105,111,110,115
	align	4
_178:
	dd	_109
	dd	159
	dd	2
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	113,117,105,116
	align	4
_179:
	dd	_109
	dd	195
	dd	1
_232:
	db	"New",0
_233:
	db	"Self",0
_234:
	db	":TButton",0
	align	4
_231:
	dd	1
	dd	_232
	dd	2
	dd	_233
	dd	_234
	dd	-4
	dd	0
	align	4
_216:
	dd	_109
	dd	55
	dd	2
_241:
	db	"Delete",0
	align	4
_240:
	dd	1
	dd	_241
	dd	2
	dd	_233
	dd	_234
	dd	-4
	dd	0
_296:
	db	"Create",0
_297:
	db	"lButton",0
	align	4
_295:
	dd	1
	dd	_296
	dd	2
	dd	_45
	dd	_55
	dd	-4
	dd	2
	dd	_47
	dd	_55
	dd	-8
	dd	2
	dd	_48
	dd	_49
	dd	-12
	dd	2
	dd	_50
	dd	_51
	dd	-16
	dd	2
	dd	_297
	dd	_234
	dd	-20
	dd	0
	align	4
_242:
	dd	_109
	dd	58
	dd	3
	align	4
_244:
	dd	_109
	dd	59
	dd	3
	align	4
_248:
	dd	_109
	dd	60
	dd	3
	align	4
_252:
	dd	_109
	dd	61
	dd	3
	align	4
_260:
	dd	_109
	dd	62
	dd	3
	align	4
_268:
	dd	_109
	dd	63
	dd	3
	align	4
_271:
	dd	_109
	dd	64
	dd	3
	align	4
_272:
	dd	_109
	dd	65
	dd	3
	align	4
_279:
	dd	_109
	dd	66
	dd	3
	align	4
_280:
	dd	_109
	dd	67
	dd	3
	align	4
_281:
	dd	_109
	dd	68
	dd	3
	align	4
_282:
	dd	_109
	dd	69
	dd	3
	align	4
_692:
	dd	0x41f00000
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	123
	align	4
_287:
	dd	_109
	dd	70
	dd	3
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	125
	align	4
_294:
	dd	_109
	dd	71
	dd	3
_302:
	db	"Destroy",0
	align	4
_301:
	dd	1
	dd	_302
	dd	2
	dd	_233
	dd	_234
	dd	-4
	dd	0
	align	4
_298:
	dd	_109
	dd	76
	dd	3
_326:
	db	"moveOn",0
_327:
	db	"lbutton",0
	align	4
_325:
	dd	1
	dd	_326
	dd	2
	dd	_233
	dd	_234
	dd	-4
	dd	2
	dd	_327
	dd	_234
	dd	-8
	dd	0
	align	4
_303:
	dd	_109
	dd	80
	dd	3
	align	4
_323:
	dd	_109
	dd	81
	dd	4
	align	4
_324:
	dd	_109
	dd	83
	dd	3
_363:
	db	"upDate",0
	align	4
_362:
	dd	1
	dd	_363
	dd	2
	dd	_297
	dd	_234
	dd	-4
	dd	0
	align	4
_328:
	dd	_109
	dd	87
	dd	3
	align	4
_338:
	dd	_109
	dd	88
	dd	3
	align	4
_339:
	dd	_109
	dd	89
	dd	3
	align	4
_346:
	dd	_109
	dd	90
	dd	3
	align	4
_347:
	dd	_109
	dd	91
	dd	3
	align	4
_348:
	dd	_109
	dd	92
	dd	3
	align	4
_349:
	dd	_109
	dd	93
	dd	3
	align	4
_724:
	dd	0x41f00000
	align	4
_354:
	dd	_109
	dd	94
	dd	3
	align	4
_361:
	dd	_109
	dd	95
	dd	3
_370:
	db	"clicked",0
	align	4
_369:
	dd	1
	dd	_370
	dd	0
	align	4
_364:
	dd	_109
	dd	105
	dd	3
	align	4
_366:
	dd	_109
	dd	109
	dd	4
	align	4
_368:
	dd	_109
	dd	111
	dd	4
_400:
	db	":TLightPart",0
	align	4
_399:
	dd	1
	dd	_232
	dd	2
	dd	_233
	dd	_400
	dd	-4
	dd	0
_53:
	db	"TLightPart",0
_54:
	db	"r",0
_56:
	db	"g",0
_57:
	db	"b",0
_58:
	db	"xv",0
_59:
	db	"yv",0
_60:
	db	"scale",0
_61:
	db	"life",0
	align	4
_52:
	dd	2
	dd	_53
	dd	3
	dd	_45
	dd	_46
	dd	8
	dd	3
	dd	_47
	dd	_46
	dd	12
	dd	3
	dd	_54
	dd	_55
	dd	16
	dd	3
	dd	_56
	dd	_55
	dd	20
	dd	3
	dd	_57
	dd	_55
	dd	24
	dd	3
	dd	_58
	dd	_46
	dd	28
	dd	3
	dd	_59
	dd	_46
	dd	32
	dd	3
	dd	_60
	dd	_46
	dd	36
	dd	3
	dd	_61
	dd	_55
	dd	40
	dd	0
	align	4
_bb_TLightPart:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_52
	dd	44
	dd	__bb_TLightPart_New
	dd	__bb_TLightPart_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TLightPart_Create
	dd	__bb_TLightPart_Destroy
	dd	__bb_TLightPart_UpdateAll
	align	4
_371:
	dd	_109
	dd	118
	dd	2
	align	4
_402:
	dd	1
	dd	_241
	dd	2
	dd	_233
	dd	_400
	dd	-4
	dd	0
_433:
	db	"lPart",0
	align	4
_432:
	dd	1
	dd	_296
	dd	2
	dd	_45
	dd	_55
	dd	-4
	dd	2
	dd	_47
	dd	_55
	dd	-8
	dd	2
	dd	_58
	dd	_46
	dd	-12
	dd	2
	dd	_59
	dd	_46
	dd	-16
	dd	2
	dd	_60
	dd	_46
	dd	-20
	dd	2
	dd	_61
	dd	_55
	dd	-24
	dd	2
	dd	_433
	dd	_400
	dd	-28
	dd	0
	align	4
_403:
	dd	_109
	dd	121
	dd	3
	align	4
_405:
	dd	_109
	dd	122
	dd	3
	align	4
_409:
	dd	_109
	dd	123
	dd	3
	align	4
_413:
	dd	_109
	dd	124
	dd	3
	align	4
_417:
	dd	_109
	dd	125
	dd	3
	align	4
_421:
	dd	_109
	dd	126
	dd	3
	align	4
_425:
	dd	_109
	dd	127
	dd	3
	align	4
_429:
	dd	_109
	dd	128
	dd	3
	align	4
_437:
	dd	1
	dd	_302
	dd	2
	dd	_233
	dd	_400
	dd	-4
	dd	0
	align	4
_434:
	dd	_109
	dd	132
	dd	3
_506:
	db	"UpdateAll",0
	align	4
_505:
	dd	1
	dd	_506
	dd	2
	dd	_433
	dd	_400
	dd	-4
	dd	0
	align	4
_438:
	dd	_109
	dd	136
	dd	3
	align	4
_448:
	dd	_109
	dd	137
	dd	4
	align	4
_768:
	dd	0x3f000000
	align	4
_452:
	dd	_109
	dd	138
	dd	4
	align	4
_458:
	dd	_109
	dd	139
	dd	10
	align	4
_464:
	dd	_109
	dd	140
	dd	10
	align	4
_469:
	dd	_109
	dd	141
	dd	4
	align	8
_769:
	dd	0x0,0x40100000
	align	4
_470:
	dd	_109
	dd	142
	dd	4
	align	4
_472:
	dd	_109
	dd	143
	dd	7
	align	4
_478:
	dd	_109
	dd	143
	dd	51
	align	4
_480:
	dd	_109
	dd	145
	dd	11
	align	4
_486:
	dd	_109
	dd	145
	dd	57
	align	4
_488:
	dd	_109
	dd	147
	dd	11
	align	4
_493:
	dd	_109
	dd	149
	dd	10
	align	4
_494:
	dd	_109
	dd	150
	dd	10
	align	4
_498:
	dd	_109
	dd	151
	dd	10
	align	4
_502:
	dd	_109
	dd	151
	dd	33
_660:
	db	"play",0
_661:
	db	"windowed",0
_662:
	db	"lx",0
	align	4
_659:
	dd	1
	dd	_181
	dd	2
	dd	_297
	dd	_234
	dd	-4
	dd	2
	dd	_660
	dd	_55
	dd	-8
	dd	2
	dd	_661
	dd	_55
	dd	-12
	dd	2
	dd	_59
	dd	_46
	dd	-16
	dd	2
	dd	_662
	dd	_46
	dd	-20
	dd	0
	align	4
_507:
	dd	_109
	dd	204
	dd	2
	align	4
_508:
	dd	_109
	dd	205
	dd	2
	align	4
_509:
	dd	_109
	dd	206
	dd	2
	align	4
_510:
	dd	_109
	dd	207
	dd	2
	align	4
_511:
	dd	_109
	dd	210
	dd	2
	align	4
_512:
	dd	_109
	dd	212
	dd	2
	align	4
_513:
	dd	_109
	dd	215
	dd	2
	align	4
_514:
	dd	_109
	dd	216
	dd	2
	align	4
_515:
	dd	_109
	dd	217
	dd	2
	align	4
_516:
	dd	_109
	dd	218
	dd	2
	align	4
_517:
	dd	_109
	dd	232
	dd	2
	align	4
_519:
	dd	_109
	dd	233
	dd	3
	align	4
_520:
	dd	_109
	dd	234
	dd	3
	align	4
_796:
	dd	0x3eb33333
	align	4
_797:
	dd	0x3ba3d70a
	align	4
_798:
	dd	0x3eb33333
	align	4
_799:
	dd	0x3ba3d70a
	align	4
_521:
	dd	_109
	dd	236
	dd	3
	align	4
_523:
	dd	_109
	dd	237
	dd	4
	align	4
_525:
	dd	_109
	dd	238
	dd	8
	align	4
_527:
	dd	_109
	dd	240
	dd	3
	align	4
_528:
	dd	_109
	dd	241
	dd	3
	align	4
_800:
	dd	0x3eb33333
	align	4
_801:
	dd	0x3ba3d70a
	align	4
_802:
	dd	0x3eb33333
	align	4
_803:
	dd	0x3ba3d70a
	align	4
_529:
	dd	_109
	dd	243
	dd	3
	align	4
_531:
	dd	_109
	dd	244
	dd	4
	align	4
_532:
	dd	_109
	dd	250
	dd	2
	align	4
_533:
	dd	_109
	dd	251
	dd	2
	align	4
_534:
	dd	_109
	dd	252
	dd	2
	align	4
_535:
	dd	_109
	dd	253
	dd	2
	align	4
_536:
	dd	_109
	dd	256
	dd	2
	align	4
_537:
	dd	_109
	dd	257
	dd	2
	align	4
_538:
	dd	_109
	dd	258
	dd	2
	align	4
_540:
	dd	_109
	dd	259
	dd	3
	align	4
_804:
	dd	0x3f19999a
	align	4
_805:
	dd	0x3ba3d70a
	align	4
_806:
	dd	0x3f333333
	align	4
_807:
	dd	0x3ba3d70a
	align	4
_541:
	dd	_109
	dd	260
	dd	3
	align	4
_543:
	dd	_109
	dd	261
	dd	4
	align	4
_544:
	dd	_109
	dd	263
	dd	3
	align	4
_546:
	dd	_109
	dd	263
	dd	25
	align	4
_548:
	dd	_109
	dd	265
	dd	3
	align	4
_808:
	dd	0x3f19999a
	align	4
_809:
	dd	0x3ba3d70a
	align	4
_810:
	dd	0x3f333333
	align	4
_811:
	dd	0x3ba3d70a
	align	4
_549:
	dd	_109
	dd	266
	dd	3
	align	4
_551:
	dd	_109
	dd	267
	dd	4
	align	4
_552:
	dd	_109
	dd	269
	dd	3
	align	4
_553:
	dd	_109
	dd	274
	dd	2
	align	4
_554:
	dd	_109
	dd	275
	dd	2
	align	4
_555:
	dd	_109
	dd	277
	dd	2
	align	4
_556:
	dd	_109
	dd	278
	dd	2
	align	4
_557:
	dd	_109
	dd	280
	dd	2
	align	4
_567:
	dd	_109
	dd	281
	dd	3
	align	4
_571:
	dd	_109
	dd	282
	dd	4
	align	4
_572:
	dd	_109
	dd	287
	dd	4
	align	4
_573:
	dd	_109
	dd	288
	dd	4
	align	4
_574:
	dd	_109
	dd	290
	dd	4
	align	4
_812:
	dd	0x41f00000
	align	4
_579:
	dd	_109
	dd	291
	dd	4
	align	4
_586:
	dd	_109
	dd	292
	dd	4
	align	4
_587:
	dd	_109
	dd	293
	dd	4
	align	4
_589:
	dd	_109
	dd	294
	dd	5
	align	4
_593:
	dd	_109
	dd	295
	dd	6
	align	4
_596:
	dd	_109
	dd	295
	dd	14
	align	4
_600:
	dd	_109
	dd	297
	dd	6
	align	4
_603:
	dd	_109
	dd	298
	dd	7
	align	4
_604:
	dd	_109
	dd	298
	dd	32
	align	4
_606:
	dd	_109
	dd	300
	dd	7
	align	4
_607:
	dd	_109
	dd	300
	dd	31
	align	4
_609:
	dd	_109
	dd	301
	dd	11
	align	4
_613:
	dd	_109
	dd	303
	dd	6
	align	4
_614:
	dd	_109
	dd	310
	dd	2
	align	4
_615:
	dd	_109
	dd	312
	dd	2
	align	4
_616:
	dd	_109
	dd	313
	dd	2
	align	4
_617:
	dd	_109
	dd	316
	dd	2
	align	4
_618:
	dd	_109
	dd	317
	dd	2
	align	4
_619:
	dd	_109
	dd	319
	dd	2
	align	4
_621:
	dd	_109
	dd	320
	dd	3
	align	4
_813:
	dd	0x3ecccccd
	align	4
_814:
	dd	0x3c23d70a
	align	4
_815:
	dd	0x3ecccccd
	align	4
_816:
	dd	0x3c23d70a
	align	4
_622:
	dd	_109
	dd	321
	dd	3
	align	4
_624:
	dd	_109
	dd	321
	dd	41
	align	4
_626:
	dd	_109
	dd	323
	dd	3
	align	4
_817:
	dd	0x3ecccccd
	align	4
_818:
	dd	0x3c23d70a
	align	4
_819:
	dd	0x3ecccccd
	align	4
_820:
	dd	0x3c23d70a
	align	4
_627:
	dd	_109
	dd	324
	dd	3
	align	4
_628:
	dd	_109
	dd	330
	dd	2
	align	8
_821:
	dd	0x0,0x40080000
	align	4
_629:
	dd	_109
	dd	331
	dd	2
	align	4
_630:
	dd	_109
	dd	332
	dd	2
	align	4
_631:
	dd	_109
	dd	333
	dd	2
	align	4
_632:
	dd	_109
	dd	334
	dd	2
	align	4
_634:
	dd	_109
	dd	338
	dd	3
	align	4
_822:
	dd	0x3c23d70a
	align	4
_636:
	dd	_109
	dd	343
	dd	3
	align	4
_823:
	dd	0x3dcccccd
	align	4
_639:
	dd	_109
	dd	345
	dd	4
	align	4
_640:
	dd	_109
	dd	349
	dd	4
	align	4
_824:
	dd	0x40400000
	align	4
_825:
	dd	0x3dcccccd
	align	4
_641:
	dd	_109
	dd	353
	dd	3
	align	4
_643:
	dd	_109
	dd	354
	dd	4
	align	4
_644:
	dd	_109
	dd	355
	dd	4
	align	4
_646:
	dd	_109
	dd	355
	dd	18
	align	4
_648:
	dd	_109
	dd	357
	dd	4
	align	4
_649:
	dd	_109
	dd	358
	dd	4
	align	4
_650:
	dd	_109
	dd	360
	dd	3
	align	4
_652:
	dd	_109
	dd	361
	dd	4
	align	4
_654:
	dd	_109
	dd	361
	dd	14
	align	4
_656:
	dd	_109
	dd	363
	dd	4
	align	4
_657:
	dd	_109
	dd	367
	dd	2
	align	4
_658:
	dd	_109
	dd	368
	dd	2
