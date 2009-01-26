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
	extrn	_bbHandleToObject
	extrn	_bbIncbinAdd
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
	extrn	_brl_linkedlist_ClearList
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
	extrn	_brl_max2d_TImage
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
	public	_bb_aideButtonImg
	public	_bb_ancreon
	public	_bb_backgd
	public	_bb_backgdaide
	public	_bb_boomer
	public	_bb_buttonList
	public	_bb_channelBG
	public	_bb_controlImg
	public	_bb_createMainButtons
	public	_bb_frameImg
	public	_bb_help
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
	public	_bb_switchGraphics
	public	_bb_vib
	public	_bb_zImg
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_295],0
	je	_296
	mov	eax,0
	pop	ebx
	pop	ebp
	ret
_296:
	mov	dword [_295],1
	push	ebp
	push	_258
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
	mov	eax,_127
	sub	eax,_126
	push	eax
	push	_126
	push	_125
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_130
	sub	eax,_129
	push	eax
	push	_129
	push	_128
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_133
	sub	eax,_132
	push	eax
	push	_132
	push	_131
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_136
	sub	eax,_135
	push	eax
	push	_135
	push	_134
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_139
	sub	eax,_138
	push	eax
	push	_138
	push	_137
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_142
	sub	eax,_141
	push	eax
	push	_141
	push	_140
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_145
	sub	eax,_144
	push	eax
	push	_144
	push	_143
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_148
	sub	eax,_147
	push	eax
	push	_147
	push	_146
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_151
	sub	eax,_150
	push	eax
	push	_150
	push	_149
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_154
	sub	eax,_153
	push	eax
	push	_153
	push	_152
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_157
	sub	eax,_156
	push	eax
	push	_156
	push	_155
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_160
	sub	eax,_159
	push	eax
	push	_159
	push	_158
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_163
	sub	eax,_162
	push	eax
	push	_162
	push	_161
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_166
	sub	eax,_165
	push	eax
	push	_165
	push	_164
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_169
	sub	eax,_168
	push	eax
	push	_168
	push	_167
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_172
	sub	eax,_171
	push	eax
	push	_171
	push	_170
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_175
	sub	eax,_174
	push	eax
	push	_174
	push	_173
	call	_bbIncbinAdd
	add	esp,12
	mov	eax,_178
	sub	eax,_177
	push	eax
	push	_177
	push	_176
	call	_bbIncbinAdd
	add	esp,12
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,1
	cmp	eax,0
	jne	_183
	push	-1
	push	_11
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_lightImage],eax
	or	dword [_182],1
_183:
	push	_184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,2
	cmp	eax,0
	jne	_186
	push	-1
	push	_12
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_backgd],eax
	or	dword [_182],2
_186:
	push	_187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,4
	cmp	eax,0
	jne	_189
	push	-1
	push	_13
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_backgdaide],eax
	or	dword [_182],4
_189:
	push	_190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,8
	cmp	eax,0
	jne	_192
	push	-1
	push	_14
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_boomer],eax
	or	dword [_182],8
_192:
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,16
	cmp	eax,0
	jne	_195
	push	-1
	push	_15
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_vib],eax
	or	dword [_182],16
_195:
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,32
	cmp	eax,0
	jne	_198
	push	-1
	push	_16
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_zImg],eax
	or	dword [_182],32
_198:
	push	_199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,64
	cmp	eax,0
	jne	_201
	push	-1
	push	_17
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_controlImg],eax
	or	dword [_182],64
_201:
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,128
	cmp	eax,0
	jne	_204
	push	-1
	push	_18
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_frameImg],eax
	or	dword [_182],128
_204:
	push	_205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,256
	cmp	eax,0
	jne	_207
	push	-1
	push	_19
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_playButtonImg],eax
	or	dword [_182],256
_207:
	push	_208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,512
	cmp	eax,0
	jne	_210
	push	-1
	push	_20
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_optionsButtonImg],eax
	or	dword [_182],512
_210:
	push	_211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,1024
	cmp	eax,0
	jne	_213
	push	-1
	push	_21
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_quitButtonImg],eax
	or	dword [_182],1024
_213:
	push	_214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,2048
	cmp	eax,0
	jne	_216
	push	-1
	push	_22
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_aideButtonImg],eax
	or	dword [_182],2048
_216:
	push	_217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,4096
	cmp	eax,0
	jne	_219
	push	4
	push	250
	push	_23
	call	_brl_max2d_LoadImageFont
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_hybrid],eax
	or	dword [_182],4096
_219:
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,8192
	cmp	eax,0
	jne	_222
	push	4
	push	250
	push	_24
	call	_brl_max2d_LoadImageFont
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_ancreon],eax
	or	dword [_182],8192
_222:
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,16384
	cmp	eax,0
	jne	_225
	call	_brl_audio_AllocChannel
	inc	dword [eax+4]
	mov	dword [_bb_channelBG],eax
	or	dword [_182],16384
_225:
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,32768
	cmp	eax,0
	jne	_228
	push	1
	push	_25
	call	_brl_audio_LoadSound
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_musicBG],eax
	or	dword [_182],32768
_228:
	push	_229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_channelBG]
	push	dword [_bb_musicBG]
	call	_brl_audio_CueSound
	add	esp,8
	push	_230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1053609165
	push	dword [_bb_channelBG]
	call	_brl_audio_SetChannelVolume
	add	esp,8
	push	_231
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	dword [_bb_channelBG]
	call	_brl_audio_SetChannelRate
	add	esp,8
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,65536
	cmp	eax,0
	jne	_243
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_partList],eax
	or	dword [_182],65536
_243:
	push	_244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,131072
	cmp	eax,0
	jne	_246
	push	-1
	push	_26
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_ligthPartBlueImg],eax
	or	dword [_182],131072
_246:
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,262144
	cmp	eax,0
	jne	_249
	push	-1
	push	_27
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_ligthPartPurpleImg],eax
	or	dword [_182],262144
_249:
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,524288
	cmp	eax,0
	jne	_252
	push	-1
	push	_28
	call	_brl_max2d_LoadImage
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_ligthPartLBlueImg],eax
	or	dword [_182],524288
_252:
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_182]
	and	eax,1048576
	cmp	eax,0
	jne	_255
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_buttonList],eax
	or	dword [_182],1048576
_255:
	push	_256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_createMainButtons
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_system_HideMouse
	mov	ebx,0
	jmp	_73
_73:
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
	push	_312
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TButton
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_299
	call	_brl_blitz_NullObjectError
_299:
	fldz
	fstp	dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_302
	call	_brl_blitz_NullObjectError
_302:
	fldz
	fstp	dword [ebx+12]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_305
	call	_brl_blitz_NullObjectError
_305:
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_309
	call	_brl_blitz_NullObjectError
_309:
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	mov	ebx,0
	jmp	_76
_76:
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
	push	_321
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
_79:
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_318
	push	eax
	call	_bbGCFree
	add	esp,4
_318:
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_320
	push	eax
	call	_bbGCFree
	add	esp,4
_320:
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bbObjectClass
	push	dword [ebp-4]
	call	_bbObjectDtor
	add	esp,4
	mov	ebx,0
	jmp	_316
_316:
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
	push	_376
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TButton
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_327
	call	_brl_blitz_NullObjectError
_327:
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fstp	dword [ebx+8]
	push	_329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_331
	call	_brl_blitz_NullObjectError
_331:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-28],eax
	fild	dword [ebp+-28]
	fstp	dword [ebx+12]
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_335
	call	_brl_blitz_NullObjectError
_335:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_340
	push	eax
	call	_bbGCFree
	add	esp,4
_340:
	mov	dword [esi+16],ebx
	push	_341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_343
	call	_brl_blitz_NullObjectError
_343:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_348
	push	eax
	call	_bbGCFree
	add	esp,4
_348:
	mov	dword [esi+20],ebx
	push	_349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_buttonList]
	cmp	ebx,_bbNullObject
	jne	_351
	call	_brl_blitz_NullObjectError
_351:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1056964608
	push	1056964608
	call	_brl_max2d_SetScale
	add	esp,8
	push	_353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_355
	call	_brl_blitz_NullObjectError
_355:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_357
	call	_brl_blitz_NullObjectError
_357:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_359
	call	_brl_blitz_NullObjectError
_359:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+16]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_ancreon]
	call	_brl_max2d_SetImageFont
	add	esp,4
	push	_361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1050253722
	push	1050253722
	call	_brl_max2d_SetScale
	add	esp,8
	push	_362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_365
	call	_brl_blitz_NullObjectError
_365:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_367
	call	_brl_blitz_NullObjectError
_367:
	push	dword [ebx+12]
	fld	dword [esi+8]
	fsub	dword [_908]
	sub	esp,4
	fstp	dword [esp]
	push	_29
	call	_brl_max2d_DrawText
	add	esp,12
	push	_368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_370
	call	_brl_blitz_NullObjectError
_370:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_372
	call	_brl_blitz_NullObjectError
_372:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_374
	call	_brl_blitz_NullObjectError
_374:
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
	push	_30
	call	_brl_max2d_DrawText
	add	esp,12
	push	_375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	mov	ebx,0
	jmp	_85
_85:
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
	push	_382
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_buttonList]
	cmp	ebx,_bbNullObject
	jne	_381
	call	_brl_blitz_NullObjectError
_381:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	ebx,0
	jmp	_88
_88:
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
	push	_406
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_386
	call	_brl_blitz_NullObjectError
_386:
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
	je	_391
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_388
	call	_brl_blitz_NullObjectError
_388:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_390
	call	_brl_blitz_NullObjectError
_390:
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
_391:
	cmp	eax,0
	je	_395
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_394
	call	_brl_blitz_NullObjectError
_394:
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
_395:
	cmp	eax,0
	je	_401
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_398
	call	_brl_blitz_NullObjectError
_398:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
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
_401:
	cmp	eax,0
	je	_403
	push	_404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	jmp	_92
_403:
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_92
_92:
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
	push	_443
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	eax,dword [_bb_buttonList]
	mov	dword [ebp-16],eax
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_413
	call	_brl_blitz_NullObjectError
_413:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_31
_33:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
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
	je	_31
	push	_419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1056964608
	push	1056964608
	call	_brl_max2d_SetScale
	add	esp,8
	push	_420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_422
	call	_brl_blitz_NullObjectError
_422:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_424
	call	_brl_blitz_NullObjectError
_424:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_426
	call	_brl_blitz_NullObjectError
_426:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [edi+16]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_ancreon]
	call	_brl_max2d_SetImageFont
	add	esp,4
	push	_428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1050253722
	push	1050253722
	call	_brl_max2d_SetScale
	add	esp,8
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetColor
	add	esp,12
	push	_430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_432
	call	_brl_blitz_NullObjectError
_432:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_434
	call	_brl_blitz_NullObjectError
_434:
	push	dword [ebx+12]
	fld	dword [esi+8]
	fsub	dword [_940]
	sub	esp,4
	fstp	dword [esp]
	push	_29
	call	_brl_max2d_DrawText
	add	esp,12
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_437
	call	_brl_blitz_NullObjectError
_437:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_439
	call	_brl_blitz_NullObjectError
_439:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_441
	call	_brl_blitz_NullObjectError
_441:
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
	push	_30
	call	_brl_max2d_DrawText
	add	esp,12
	push	_442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
_31:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_416
	call	_brl_blitz_NullObjectError
_416:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_33
_32:
	mov	ebx,0
	jmp	_94
_94:
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
	push	_450
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_445
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_polledinput_MouseDown
	add	esp,4
	cmp	eax,0
	je	_446
	push	_447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	jmp	_96
_446:
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	jmp	_96
_96:
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
	push	_480
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TLightPart
	push	_452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_454
	call	_brl_blitz_NullObjectError
_454:
	fldz
	fstp	dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_457
	call	_brl_blitz_NullObjectError
_457:
	fldz
	fstp	dword [ebx+12]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_460
	call	_brl_blitz_NullObjectError
_460:
	mov	dword [ebx+16],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_463
	call	_brl_blitz_NullObjectError
_463:
	mov	dword [ebx+20],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_466
	call	_brl_blitz_NullObjectError
_466:
	mov	dword [ebx+24],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_469
	call	_brl_blitz_NullObjectError
_469:
	fldz
	fstp	dword [ebx+28]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_472
	call	_brl_blitz_NullObjectError
_472:
	fldz
	fstp	dword [ebx+32]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_475
	call	_brl_blitz_NullObjectError
_475:
	fldz
	fstp	dword [ebx+36]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_478
	call	_brl_blitz_NullObjectError
_478:
	mov	dword [ebx+40],0
	mov	ebx,0
	jmp	_99
_99:
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
	push	_483
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
_102:
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bbObjectClass
	push	dword [ebp-4]
	call	_bbObjectDtor
	add	esp,4
	mov	ebx,0
	jmp	_482
_482:
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
	push	_513
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TLightPart
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-28],eax
	push	_486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_488
	call	_brl_blitz_NullObjectError
_488:
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	fstp	dword [ebx+8]
	push	_490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_492
	call	_brl_blitz_NullObjectError
_492:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-32],eax
	fild	dword [ebp+-32]
	fstp	dword [ebx+12]
	push	_494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_496
	call	_brl_blitz_NullObjectError
_496:
	fld	dword [ebp-12]
	fstp	dword [ebx+28]
	push	_498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_500
	call	_brl_blitz_NullObjectError
_500:
	fld	dword [ebp-16]
	fstp	dword [ebx+32]
	push	_502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_504
	call	_brl_blitz_NullObjectError
_504:
	fld	dword [ebp-20]
	fstp	dword [ebx+36]
	push	_506
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_508
	call	_brl_blitz_NullObjectError
_508:
	mov	eax,dword [ebp-24]
	mov	dword [ebx+40],eax
	push	_510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_partList]
	cmp	ebx,_bbNullObject
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_110
_110:
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
	push	_518
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_partList]
	cmp	ebx,_bbNullObject
	jne	_517
	call	_brl_blitz_NullObjectError
_517:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	ebx,0
	jmp	_113
_113:
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
	push	_586
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_519
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	edi,dword [_bb_partList]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_523
	call	_brl_blitz_NullObjectError
_523:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_34
_36:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_528
	call	_brl_blitz_NullObjectError
_528:
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
	je	_34
	push	_529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_531
	call	_brl_blitz_NullObjectError
_531:
	fld	dword [ebx+32]
	fstp	dword [ebp-8]
	call	_brl_random_RndFloat
	fsub	dword [_984]
	fld	dword [ebp-8]
	faddp	st1,st0
	fstp	dword [ebp-8]
	fld	dword [ebp-8]
	fstp	dword [ebx+32]
	push	_533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_535
	call	_brl_blitz_NullObjectError
_535:
	mov	esi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_538
	call	_brl_blitz_NullObjectError
_538:
	fld	dword [esi+8]
	fadd	dword [ebx+28]
	fstp	dword [esi+8]
	push	_539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_541
	call	_brl_blitz_NullObjectError
_541:
	mov	esi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_544
	call	_brl_blitz_NullObjectError
_544:
	fld	dword [esi+12]
	fadd	dword [ebx+32]
	fstp	dword [esi+12]
	push	_545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_547
	call	_brl_blitz_NullObjectError
_547:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_549
	call	_brl_blitz_NullObjectError
_549:
	push	dword [ebx+36]
	push	dword [esi+36]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_985]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [_bb_partNumber],eax
	push	_551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partNumber],1
	jne	_552
	push	_553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_555
	call	_brl_blitz_NullObjectError
_555:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_557
	call	_brl_blitz_NullObjectError
_557:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [_bb_ligthPartBlueImg]
	call	_brl_max2d_DrawImage
	add	esp,16
	jmp	_558
_552:
	push	_559
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partNumber],2
	jne	_560
	push	_561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_563
	call	_brl_blitz_NullObjectError
_563:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_565
	call	_brl_blitz_NullObjectError
_565:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [_bb_ligthPartPurpleImg]
	call	_brl_max2d_DrawImage
	add	esp,16
	jmp	_566
_560:
	push	_567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partNumber],3
	jne	_568
	push	_569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_571
	call	_brl_blitz_NullObjectError
_571:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_573
	call	_brl_blitz_NullObjectError
_573:
	push	0
	push	dword [ebx+12]
	push	dword [esi+8]
	push	dword [_bb_ligthPartLBlueImg]
	call	_brl_max2d_DrawImage
	add	esp,16
_568:
_566:
_558:
	push	_574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_577
	call	_brl_blitz_NullObjectError
_577:
	sub	dword [ebx+40],1
	push	_579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_581
	call	_brl_blitz_NullObjectError
_581:
	cmp	dword [ebx+40],1
	jge	_582
	push	_583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_585
	call	_brl_blitz_NullObjectError
_585:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
_582:
_34:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_526
	call	_brl_blitz_NullObjectError
_526:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
	mov	ebx,0
	jmp	_115
_115:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_createMainButtons:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_592
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_588
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_37
	push	dword [_bb_playButtonImg]
	push	270
	push	50
	call	dword [_bb_TButton+48]
	add	esp,16
	push	_589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_38
	push	dword [_bb_aideButtonImg]
	push	350
	push	120
	call	dword [_bb_TButton+48]
	add	esp,16
	push	_590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_39
	push	dword [_bb_optionsButtonImg]
	push	430
	push	190
	call	dword [_bb_TButton+48]
	add	esp,16
	push	_591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_40
	push	dword [_bb_quitButtonImg]
	push	510
	push	260
	call	dword [_bb_TButton+48]
	add	esp,16
	mov	ebx,0
	jmp	_117
_117:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	pop	ebp
	ret
_bb_switchGraphics:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_602
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],0
	je	_596
	push	_597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	32
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	jmp	_599
_596:
	push	_600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],1
_599:
	mov	ebx,0
	jmp	_119
_119:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_menu:
	push	ebp
	mov	ebp,esp
	sub	esp,52
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],0
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	dword [ebp-20],0
	mov	dword [ebp-24],0
	fldz
	fstp	dword [ebp-28]
	fldz
	fstp	dword [ebp-32]
	mov	eax,ebp
	push	eax
	push	_762
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ecx,300
	mov	eax,dword [ebp-4]
	cdq
	idiv	ecx
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_610
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_backgd]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_boomer]
	call	_brl_max2d_MidHandleImage
	add	esp,4
	push	_612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1056964608
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_rotValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],1
	jne	_616
	push	_617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_pulseValue],1
	push	_618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1017]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1018]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1019]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1020]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseValue],10
	jle	_620
	push	_621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_pulseFlag],0
_620:
	jmp	_622
_616:
	push	_623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],0
	jne	_624
	push	_625
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_pulseValue],1
	push	_626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1021]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1022]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1023]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1024]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseValue],0
	jge	_628
	push	_629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_pulseFlag],1
_628:
_624:
_622:
	push	_630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1066611507
	push	1066611507
	call	_brl_max2d_SetScale
	add	esp,8
	push	_631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1102577664
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	-1041235968
	push	1133248512
	push	dword [_bb_vib]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_zImg]
	call	_brl_max2d_MidHandleImage
	add	esp,4
	push	_635
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1058642330
	push	1060320051
	call	_brl_max2d_SetScale
	add	esp,8
	push	_636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlagZ],1
	jne	_637
	push	_638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1025]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1026]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1027]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1028]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_639
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseValue],5
	jle	_640
	push	_641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_pulseFlagZ],0
_640:
	push	_642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1128792064
	push	1143111680
	push	dword [_bb_zImg]
	call	_brl_max2d_DrawImage
	add	esp,16
	jmp	_643
_637:
	push	_644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlagZ],0
	jne	_645
	push	_646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1029]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1030]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1031]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1032]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseValue],10
	jle	_648
	push	_649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_pulseFlagZ],0
_648:
	push	_650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1128792064
	push	1143111680
	push	dword [_bb_zImg]
	call	_brl_max2d_DrawImage
	add	esp,16
_645:
_643:
	push	_651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TButton+60]
	push	_653
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	call	_brl_max2d_SetMaskColor
	add	esp,12
	push	_655
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	eax,dword [_bb_buttonList]
	mov	dword [ebp-44],eax
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_659
	call	_brl_blitz_NullObjectError
_659:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-48],eax
	jmp	_41
_43:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_664
	call	_brl_blitz_NullObjectError
_664:
	push	_bb_TButton
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	je	_41
	push	_665
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_667
	call	_brl_blitz_NullObjectError
_667:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	cmp	eax,0
	je	_668
	push	_669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_ancreon]
	call	_brl_max2d_SetImageFont
	add	esp,4
	push	_670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_671
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	245
	push	245
	call	_brl_max2d_SetColor
	add	esp,12
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_674
	call	_brl_blitz_NullObjectError
_674:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_676
	call	_brl_blitz_NullObjectError
_676:
	push	dword [ebx+12]
	fld	dword [esi+8]
	fsub	dword [_1033]
	sub	esp,4
	fstp	dword [esp]
	push	_29
	call	_brl_max2d_DrawText
	add	esp,12
	push	_677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_679
	call	_brl_blitz_NullObjectError
_679:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_681
	call	_brl_blitz_NullObjectError
_681:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_683
	call	_brl_blitz_NullObjectError
_683:
	push	dword [ebx+12]
	fld	dword [edi+8]
	fstp	dword [ebp-36]
	push	dword [esi+16]
	call	_brl_max2d_ImageWidth
	add	esp,4
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fld	dword [ebp-36]
	faddp	st1,st0
	fstp	dword [ebp-36]
	push	dword [ebp-36]
	push	_30
	call	_brl_max2d_DrawText
	add	esp,12
	push	_684
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	call	dword [eax+64]
	cmp	eax,0
	je	_686
	push	_687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_689
	call	_brl_blitz_NullObjectError
_689:
	push	_37
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_690
	push	_691
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],10
	jmp	_693
_690:
	push	_694
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_696
	call	_brl_blitz_NullObjectError
_696:
	push	_39
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_697
	push	_698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	dword [ebp-12],eax
	push	_700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_buttonList]
	call	_brl_linkedlist_ClearList
	add	esp,4
	push	_701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_44
	push	_brl_max2d_TImage
	push	dword [ebp-20]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	500
	push	500
	call	dword [_bb_TButton+48]
	add	esp,16
	jmp	_703
_697:
	push	_704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_706
	call	_brl_blitz_NullObjectError
_706:
	push	_40
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_707
	push	_708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	jmp	_709
_707:
	push	_710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_712
	call	_brl_blitz_NullObjectError
_712:
	push	_38
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_713
	push	_714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	dword [ebp-12],eax
	push	_716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_buttonList]
	call	_brl_linkedlist_ClearList
	add	esp,4
_713:
_709:
_703:
_693:
_686:
_668:
_41:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_662
	call	_brl_blitz_NullObjectError
_662:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_43
_42:
	push	_717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_lightImage]
	call	_brl_max2d_MidHandleImage
	add	esp,4
	push	_721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1056964608
	push	1056964608
	call	_brl_max2d_SetScale
	add	esp,8
	push	_722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],1
	jne	_723
	push	_724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1034]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1035]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1036]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1037]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_lightImage]
	call	_brl_max2d_DrawImage
	add	esp,16
	jmp	_726
_723:
	push	_727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],0
	jne	_728
	push	_729
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1038]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1039]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1040]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	fmul	dword [_1041]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-52],eax
	fild	dword [ebp+-52]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_lightImage]
	call	_brl_max2d_DrawImage
	add	esp,16
_728:
_726:
	push	_731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_1042]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [_bb_partNumber],eax
	push	_732
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_733
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partTimer],400
	jle	_736
	push	_737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1043]
	fstp	dword [ebp-28]
	push	_739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-32]
	fld	dword [_1044]
	fstp	dword [ebp-32]
	jmp	_741
_47:
	push	_742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-28]
	fstp	dword [ebp-40]
	call	_brl_random_RndFloat
	fld	dword [ebp-40]
	fsubrp	st1,st0
	fstp	dword [ebp-40]
	fld	dword [ebp-40]
	fstp	dword [ebp-28]
	push	_743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	660
	push	1045220557
	fld	dword [ebp-28]
	fsub	dword [_1045]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-32]
	push	-30
	push	dword [_bb_XCoord]
	call	dword [_bb_TLightPart+48]
	add	esp,24
_45:
	fld	dword [ebp-32]
	fadd	dword [_1046]
	fstp	dword [ebp-32]
_741:
	fld	dword [ebp-32]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_47
_46:
	push	_744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_XCoord],800
	jle	_745
	push	_746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partFlag],1
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partTimer],0
	jmp	_748
_745:
	push	_749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_XCoord],0
	jge	_750
	push	_751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partFlag],0
	push	_752
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partTimer],0
_750:
_748:
	push	_753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partFlag],0
	jne	_754
	push	_755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_XCoord],20
	jmp	_756
_754:
	push	_757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partFlag],1
	jne	_758
	push	_759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_XCoord],20
_758:
_756:
_736:
	push	_760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TLightPart+56]
	push	_761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_partTimer],1
	mov	ebx,0
	jmp	_121
_121:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_help:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],0
	fldz
	fstp	dword [ebp-12]
	fldz
	fstp	dword [ebp-16]
	mov	eax,ebp
	push	eax
	push	_874
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	0
	push	dword [_bb_backgdaide]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],1
	jne	_776
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_pulseValue],1
	push	_778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1084]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fmul	dword [_1085]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1086]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fmul	dword [_1087]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseValue],10
	jle	_780
	push	_781
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_pulseFlag],0
_780:
	jmp	_782
_776:
	push	_783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],0
	jne	_784
	push	_785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_pulseValue],1
	push	_786
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1088]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fmul	dword [_1089]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1090]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fmul	dword [_1091]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseValue],0
	jge	_788
	push	_789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_pulseFlag],1
_788:
_784:
_782:
	push	_790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_max2d_SetRotation
	add	esp,4
	push	_791
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TButton+60]
	push	_792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	mov	eax,dword [_bb_buttonList]
	mov	dword [ebp-32],eax
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_797
	call	_brl_blitz_NullObjectError
_797:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-28],eax
	jmp	_48
_50:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_802
	call	_brl_blitz_NullObjectError
_802:
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
	je	_48
	push	_803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_805
	call	_brl_blitz_NullObjectError
_805:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	cmp	eax,0
	je	_806
	push	_807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_ancreon]
	call	_brl_max2d_SetImageFont
	add	esp,4
	push	_808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_809
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	245
	push	245
	call	_brl_max2d_SetColor
	add	esp,12
	push	_810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_812
	call	_brl_blitz_NullObjectError
_812:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_814
	call	_brl_blitz_NullObjectError
_814:
	push	dword [ebx+12]
	fld	dword [esi+8]
	fsub	dword [_1092]
	sub	esp,4
	fstp	dword [esp]
	push	_29
	call	_brl_max2d_DrawText
	add	esp,12
	push	_815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_817
	call	_brl_blitz_NullObjectError
_817:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_819
	call	_brl_blitz_NullObjectError
_819:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_821
	call	_brl_blitz_NullObjectError
_821:
	push	dword [ebx+12]
	fld	dword [edi+8]
	fstp	dword [ebp-20]
	push	dword [esi+16]
	call	_brl_max2d_ImageWidth
	add	esp,4
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fld	dword [ebp-20]
	faddp	st1,st0
	fstp	dword [ebp-20]
	push	dword [ebp-20]
	push	_30
	call	_brl_max2d_DrawText
	add	esp,12
	push	_822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax]
	call	dword [eax+64]
	cmp	eax,0
	je	_824
	push	_825
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_827
	call	_brl_blitz_NullObjectError
_827:
	push	_44
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_828
	push	_829
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
_828:
_824:
_806:
_48:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_800
	call	_brl_blitz_NullObjectError
_800:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_50
_49:
	push	_831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	255
	push	255
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_lightImage]
	call	_brl_max2d_MidHandleImage
	add	esp,4
	push	_834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],1
	jne	_835
	push	_836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1093]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fmul	dword [_1094]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1095]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fmul	dword [_1096]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_lightImage]
	call	_brl_max2d_DrawImage
	add	esp,16
	jmp	_838
_835:
	push	_839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_pulseFlag],0
	jne	_840
	push	_841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1097]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fmul	dword [_1098]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_1099]
	mov	eax,dword [_bb_pulseValue]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fmul	dword [_1100]
	faddp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetScale
	add	esp,8
	push	_842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	call	_brl_polledinput_MouseY
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_polledinput_MouseX
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	sub	esp,4
	fstp	dword [esp]
	push	dword [_bb_lightImage]
	call	_brl_max2d_DrawImage
	add	esp,16
_840:
_838:
	push	_843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_1101]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [_bb_partNumber],eax
	push	_844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	push	1065353216
	call	_brl_max2d_SetScale
	add	esp,8
	push	_846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partTimer],400
	jle	_848
	push	_849
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_1102]
	fstp	dword [ebp-12]
	push	_851
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-16]
	fld	dword [_1103]
	fstp	dword [ebp-16]
	jmp	_853
_53:
	push	_854
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-24]
	call	_brl_random_RndFloat
	fld	dword [ebp-24]
	fsubrp	st1,st0
	fstp	dword [ebp-24]
	fld	dword [ebp-24]
	fstp	dword [ebp-12]
	push	_855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	660
	push	1045220557
	fld	dword [ebp-12]
	fsub	dword [_1104]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-16]
	push	-30
	push	dword [_bb_XCoord]
	call	dword [_bb_TLightPart+48]
	add	esp,24
_51:
	fld	dword [ebp-16]
	fadd	dword [_1105]
	fstp	dword [ebp-16]
_853:
	fld	dword [ebp-16]
	fld1
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_53
_52:
	push	_856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_XCoord],800
	jle	_857
	push	_858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partFlag],1
	push	_859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partTimer],0
	jmp	_860
_857:
	push	_861
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_XCoord],0
	jge	_862
	push	_863
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partFlag],0
	push	_864
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_partTimer],0
_862:
_860:
	push	_865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partFlag],0
	jne	_866
	push	_867
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_XCoord],20
	jmp	_868
_866:
	push	_869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_partFlag],1
	jne	_870
	push	_871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [_bb_XCoord],20
_870:
_868:
_848:
	push	_872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bb_TLightPart+56]
	push	_873
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_partTimer],1
	mov	ebx,0
	jmp	_123
_123:
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
_295:
	dd	0
_259:
	db	"menu",0
_260:
	db	"lightImage",0
_60:
	db	":TImage",0
	align	4
_bb_lightImage:
	dd	_bbNullObject
_261:
	db	"backgd",0
	align	4
_bb_backgd:
	dd	_bbNullObject
_262:
	db	"backgdaide",0
	align	4
_bb_backgdaide:
	dd	_bbNullObject
_263:
	db	"boomer",0
	align	4
_bb_boomer:
	dd	_bbNullObject
_264:
	db	"vib",0
	align	4
_bb_vib:
	dd	_bbNullObject
_265:
	db	"zImg",0
	align	4
_bb_zImg:
	dd	_bbNullObject
_266:
	db	"controlImg",0
	align	4
_bb_controlImg:
	dd	_bbNullObject
_267:
	db	"frameImg",0
	align	4
_bb_frameImg:
	dd	_bbNullObject
_268:
	db	"playButtonImg",0
	align	4
_bb_playButtonImg:
	dd	_bbNullObject
_269:
	db	"optionsButtonImg",0
	align	4
_bb_optionsButtonImg:
	dd	_bbNullObject
_270:
	db	"quitButtonImg",0
	align	4
_bb_quitButtonImg:
	dd	_bbNullObject
_271:
	db	"aideButtonImg",0
	align	4
_bb_aideButtonImg:
	dd	_bbNullObject
_272:
	db	"hybrid",0
_273:
	db	":timagefont",0
	align	4
_bb_hybrid:
	dd	_bbNullObject
_274:
	db	"ancreon",0
	align	4
_bb_ancreon:
	dd	_bbNullObject
_275:
	db	"channelBG",0
_276:
	db	":TChannel",0
	align	4
_bb_channelBG:
	dd	_bbNullObject
_277:
	db	"musicBG",0
_278:
	db	":TSound",0
	align	4
_bb_musicBG:
	dd	_bbNullObject
_279:
	db	"XCoord",0
_66:
	db	"i",0
	align	4
_bb_XCoord:
	dd	1
_280:
	db	"partFlag",0
	align	4
_bb_partFlag:
	dd	0
_281:
	db	"partTimer",0
	align	4
_bb_partTimer:
	dd	1000
_282:
	db	"pulseValue",0
	align	4
_bb_pulseValue:
	dd	1
_283:
	db	"pulseFlag",0
	align	4
_bb_pulseFlag:
	dd	1
_284:
	db	"rotFlag",0
	align	4
_bb_rotFlag:
	dd	1
_285:
	db	"rotValue",0
	align	4
_bb_rotValue:
	dd	1
_286:
	db	"pulseFlagZ",0
	align	4
_bb_pulseFlagZ:
	dd	1
_287:
	db	"partNumber",0
	align	4
_bb_partNumber:
	dd	0
_288:
	db	"partList",0
_289:
	db	":TList",0
	align	4
_bb_partList:
	dd	_bbNullObject
_290:
	db	"ligthPartBlueImg",0
	align	4
_bb_ligthPartBlueImg:
	dd	_bbNullObject
_291:
	db	"ligthPartPurpleImg",0
	align	4
_bb_ligthPartPurpleImg:
	dd	_bbNullObject
_292:
	db	"ligthPartLBlueImg",0
	align	4
_bb_ligthPartLBlueImg:
	dd	_bbNullObject
_293:
	db	"buttonList",0
_294:
	db	":Tlist",0
	align	4
_bb_buttonList:
	dd	_bbNullObject
	align	4
_258:
	dd	1
	dd	_259
	dd	4
	dd	_260
	dd	_60
	dd	_bb_lightImage
	dd	4
	dd	_261
	dd	_60
	dd	_bb_backgd
	dd	4
	dd	_262
	dd	_60
	dd	_bb_backgdaide
	dd	4
	dd	_263
	dd	_60
	dd	_bb_boomer
	dd	4
	dd	_264
	dd	_60
	dd	_bb_vib
	dd	4
	dd	_265
	dd	_60
	dd	_bb_zImg
	dd	4
	dd	_266
	dd	_60
	dd	_bb_controlImg
	dd	4
	dd	_267
	dd	_60
	dd	_bb_frameImg
	dd	4
	dd	_268
	dd	_60
	dd	_bb_playButtonImg
	dd	4
	dd	_269
	dd	_60
	dd	_bb_optionsButtonImg
	dd	4
	dd	_270
	dd	_60
	dd	_bb_quitButtonImg
	dd	4
	dd	_271
	dd	_60
	dd	_bb_aideButtonImg
	dd	4
	dd	_272
	dd	_273
	dd	_bb_hybrid
	dd	4
	dd	_274
	dd	_273
	dd	_bb_ancreon
	dd	4
	dd	_275
	dd	_276
	dd	_bb_channelBG
	dd	4
	dd	_277
	dd	_278
	dd	_bb_musicBG
	dd	4
	dd	_279
	dd	_66
	dd	_bb_XCoord
	dd	4
	dd	_280
	dd	_66
	dd	_bb_partFlag
	dd	4
	dd	_281
	dd	_66
	dd	_bb_partTimer
	dd	4
	dd	_282
	dd	_66
	dd	_bb_pulseValue
	dd	4
	dd	_283
	dd	_66
	dd	_bb_pulseFlag
	dd	4
	dd	_284
	dd	_66
	dd	_bb_rotFlag
	dd	4
	dd	_285
	dd	_66
	dd	_bb_rotValue
	dd	4
	dd	_286
	dd	_66
	dd	_bb_pulseFlagZ
	dd	4
	dd	_287
	dd	_66
	dd	_bb_partNumber
	dd	4
	dd	_288
	dd	_289
	dd	_bb_partList
	dd	4
	dd	_290
	dd	_60
	dd	_bb_ligthPartBlueImg
	dd	4
	dd	_291
	dd	_60
	dd	_bb_ligthPartPurpleImg
	dd	4
	dd	_292
	dd	_60
	dd	_bb_ligthPartLBlueImg
	dd	4
	dd	_293
	dd	_294
	dd	_bb_buttonList
	dd	0
	align	4
_126:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/pulse.png"
_127:
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	112,117,108,115,101,46,112,110
	dw	103
	align	4
_129:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/backgd.png"
_130:
	align	4
_128:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	98,97,99,107,103,100,46,112
	dw	110,103
	align	4
_132:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/backgdaide.png"
_133:
	align	4
_131:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	98,97,99,107,103,100,97,105
	dw	100,101,46,112,110,103
	align	4
_135:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/boomer.png"
_136:
	align	4
_134:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	98,111,111,109,101,114,46,112
	dw	110,103
	align	4
_138:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/vib.png"
_139:
	align	4
_137:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	118,105,98,46,112,110,103
	align	4
_141:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/Z4.png"
_142:
	align	4
_140:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	90,52,46,112,110,103
	align	4
_144:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/controlsBG.png"
_145:
	align	4
_143:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	99,111,110,116,114,111,108,115
	dw	66,71,46,112,110,103
	align	4
_147:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/cadre.png"
_148:
	align	4
_146:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,97,100,114,101,46,112,110
	dw	103
	align	4
_150:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/jouer.png"
_151:
	align	4
_149:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	106,111,117,101,114,46,112,110
	dw	103
	align	4
_153:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/options.png"
_154:
	align	4
_152:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	111,112,116,105,111,110,115,46
	dw	112,110,103
	align	4
_156:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/quitter.png"
_157:
	align	4
_155:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	113,117,105,116,116,101,114,46
	dw	112,110,103
	align	4
_159:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/aide.png"
_160:
	align	4
_158:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,105,100,101,46,112,110,103
	align	4
_162:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/Hybrid_b.ttf"
_163:
	align	4
_161:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	72,121,98,114,105,100,95,98
	dw	46,116,116,102
	align	4
_165:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/ancreon.ttf"
_166:
	align	4
_164:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	97,110,99,114,101,111,110,46
	dw	116,116,102
	align	4
_168:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/partblue.png"
_169:
	align	4
_167:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	112,97,114,116,98,108,117,101
	dw	46,112,110,103
	align	4
_171:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/partblue2.png"
_172:
	align	4
_170:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	112,97,114,116,98,108,117,101
	dw	50,46,112,110,103
	align	4
_174:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/partpurple.png"
_175:
	align	4
_173:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	112,97,114,116,112,117,114,112
	dw	108,101,46,112,110,103
	align	4
_177:
	file	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/sound/SmoothFull.ogg"
_178:
	align	4
_176:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	46,46,47,115,111,117,110,100
	dw	47,83,109,111,111,116,104,70
	dw	117,108,108,46,111,103,103
_180:
	db	"D:/Mes documents/Cours/5A/PFE/Copie (2) de VIBZ_SVN/background/menu.bmx",0
	align	4
_179:
	dd	_180
	dd	20
	dd	1
	align	4
_182:
	dd	0
	align	4
_11:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	105,110,99,98,105,110,58,58
	dw	112,117,108,115,101,46,112,110
	dw	103
	align	4
_184:
	dd	_180
	dd	21
	dd	1
	align	4
_12:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	105,110,99,98,105,110,58,58
	dw	98,97,99,107,103,100,46,112
	dw	110,103
	align	4
_187:
	dd	_180
	dd	22
	dd	1
	align	4
_13:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	105,110,99,98,105,110,58,58
	dw	98,97,99,107,103,100,97,105
	dw	100,101,46,112,110,103
	align	4
_190:
	dd	_180
	dd	23
	dd	1
	align	4
_14:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	105,110,99,98,105,110,58,58
	dw	98,111,111,109,101,114,46,112
	dw	110,103
	align	4
_193:
	dd	_180
	dd	24
	dd	1
	align	4
_15:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	105,110,99,98,105,110,58,58
	dw	118,105,98,46,112,110,103
	align	4
_196:
	dd	_180
	dd	25
	dd	1
	align	4
_16:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	105,110,99,98,105,110,58,58
	dw	90,52,46,112,110,103
	align	4
_199:
	dd	_180
	dd	26
	dd	1
	align	4
_17:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	105,110,99,98,105,110,58,58
	dw	99,111,110,116,114,111,108,115
	dw	66,71,46,112,110,103
	align	4
_202:
	dd	_180
	dd	27
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	105,110,99,98,105,110,58,58
	dw	99,97,100,114,101,46,112,110
	dw	103
	align	4
_205:
	dd	_180
	dd	29
	dd	1
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	105,110,99,98,105,110,58,58
	dw	106,111,117,101,114,46,112,110
	dw	103
	align	4
_208:
	dd	_180
	dd	30
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	105,110,99,98,105,110,58,58
	dw	111,112,116,105,111,110,115,46
	dw	112,110,103
	align	4
_211:
	dd	_180
	dd	31
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	105,110,99,98,105,110,58,58
	dw	113,117,105,116,116,101,114,46
	dw	112,110,103
	align	4
_214:
	dd	_180
	dd	32
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	105,110,99,98,105,110,58,58
	dw	97,105,100,101,46,112,110,103
	align	4
_217:
	dd	_180
	dd	35
	dd	1
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	105,110,99,98,105,110,58,58
	dw	72,121,98,114,105,100,95,98
	dw	46,116,116,102
	align	4
_220:
	dd	_180
	dd	36
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	105,110,99,98,105,110,58,58
	dw	97,110,99,114,101,111,110,46
	dw	116,116,102
	align	4
_223:
	dd	_180
	dd	40
	dd	1
	align	4
_226:
	dd	_180
	dd	41
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	31
	dw	105,110,99,98,105,110,58,58
	dw	46,46,47,115,111,117,110,100
	dw	47,83,109,111,111,116,104,70
	dw	117,108,108,46,111,103,103
	align	4
_229:
	dd	_180
	dd	42
	dd	1
	align	4
_230:
	dd	_180
	dd	43
	dd	1
	align	4
_231:
	dd	_180
	dd	44
	dd	1
	align	4
_232:
	dd	_180
	dd	48
	dd	1
	align	4
_233:
	dd	_180
	dd	49
	dd	1
	align	4
_234:
	dd	_180
	dd	50
	dd	1
	align	4
_235:
	dd	_180
	dd	52
	dd	1
	align	4
_236:
	dd	_180
	dd	53
	dd	1
	align	4
_237:
	dd	_180
	dd	54
	dd	1
	align	4
_238:
	dd	_180
	dd	55
	dd	1
	align	4
_239:
	dd	_180
	dd	57
	dd	1
	align	4
_240:
	dd	_180
	dd	59
	dd	1
	align	4
_241:
	dd	_180
	dd	60
	dd	1
	align	4
_244:
	dd	_180
	dd	61
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	105,110,99,98,105,110,58,58
	dw	112,97,114,116,98,108,117,101
	dw	46,112,110,103
	align	4
_247:
	dd	_180
	dd	62
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	105,110,99,98,105,110,58,58
	dw	112,97,114,116,112,117,114,112
	dw	108,101,46,112,110,103
	align	4
_250:
	dd	_180
	dd	63
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	105,110,99,98,105,110,58,58
	dw	112,97,114,116,98,108,117,101
	dw	50,46,112,110,103
	align	4
_253:
	dd	_180
	dd	65
	dd	1
	align	4
_256:
	dd	_180
	dd	179
	dd	1
	align	4
_257:
	dd	_180
	dd	190
	dd	1
_313:
	db	"New",0
_314:
	db	"Self",0
_315:
	db	":TButton",0
	align	4
_312:
	dd	1
	dd	_313
	dd	2
	dd	_314
	dd	_315
	dd	-4
	dd	0
_55:
	db	"TButton",0
_56:
	db	"x",0
_57:
	db	"f",0
_58:
	db	"y",0
_59:
	db	"img",0
_61:
	db	"name",0
_62:
	db	"$",0
	align	4
_54:
	dd	2
	dd	_55
	dd	3
	dd	_56
	dd	_57
	dd	8
	dd	3
	dd	_58
	dd	_57
	dd	12
	dd	3
	dd	_59
	dd	_60
	dd	16
	dd	3
	dd	_61
	dd	_62
	dd	20
	dd	0
	align	4
_bb_TButton:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_54
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
_297:
	dd	_180
	dd	69
	dd	2
_322:
	db	"Delete",0
	align	4
_321:
	dd	1
	dd	_322
	dd	2
	dd	_314
	dd	_315
	dd	-4
	dd	0
_377:
	db	"Create",0
_378:
	db	"lButton",0
	align	4
_376:
	dd	1
	dd	_377
	dd	2
	dd	_56
	dd	_66
	dd	-4
	dd	2
	dd	_58
	dd	_66
	dd	-8
	dd	2
	dd	_59
	dd	_60
	dd	-12
	dd	2
	dd	_61
	dd	_62
	dd	-16
	dd	2
	dd	_378
	dd	_315
	dd	-20
	dd	0
	align	4
_323:
	dd	_180
	dd	72
	dd	3
	align	4
_325:
	dd	_180
	dd	73
	dd	3
	align	4
_329:
	dd	_180
	dd	74
	dd	3
	align	4
_333:
	dd	_180
	dd	75
	dd	3
	align	4
_341:
	dd	_180
	dd	76
	dd	3
	align	4
_349:
	dd	_180
	dd	77
	dd	3
	align	4
_352:
	dd	_180
	dd	78
	dd	3
	align	4
_353:
	dd	_180
	dd	79
	dd	3
	align	4
_360:
	dd	_180
	dd	80
	dd	3
	align	4
_361:
	dd	_180
	dd	81
	dd	3
	align	4
_362:
	dd	_180
	dd	82
	dd	3
	align	4
_363:
	dd	_180
	dd	83
	dd	3
	align	4
_908:
	dd	0x41f00000
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	123
	align	4
_368:
	dd	_180
	dd	84
	dd	3
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	125
	align	4
_375:
	dd	_180
	dd	85
	dd	3
_383:
	db	"Destroy",0
	align	4
_382:
	dd	1
	dd	_383
	dd	2
	dd	_314
	dd	_315
	dd	-4
	dd	0
	align	4
_379:
	dd	_180
	dd	90
	dd	3
_407:
	db	"moveOn",0
_408:
	db	"lbutton",0
	align	4
_406:
	dd	1
	dd	_407
	dd	2
	dd	_314
	dd	_315
	dd	-4
	dd	2
	dd	_408
	dd	_315
	dd	-8
	dd	0
	align	4
_384:
	dd	_180
	dd	94
	dd	3
	align	4
_404:
	dd	_180
	dd	95
	dd	4
	align	4
_405:
	dd	_180
	dd	97
	dd	3
_444:
	db	"upDate",0
	align	4
_443:
	dd	1
	dd	_444
	dd	2
	dd	_378
	dd	_315
	dd	-4
	dd	0
	align	4
_409:
	dd	_180
	dd	101
	dd	3
	align	4
_419:
	dd	_180
	dd	102
	dd	3
	align	4
_420:
	dd	_180
	dd	103
	dd	3
	align	4
_427:
	dd	_180
	dd	104
	dd	3
	align	4
_428:
	dd	_180
	dd	105
	dd	3
	align	4
_429:
	dd	_180
	dd	106
	dd	3
	align	4
_430:
	dd	_180
	dd	107
	dd	3
	align	4
_940:
	dd	0x41f00000
	align	4
_435:
	dd	_180
	dd	108
	dd	3
	align	4
_442:
	dd	_180
	dd	109
	dd	3
_451:
	db	"clicked",0
	align	4
_450:
	dd	1
	dd	_451
	dd	0
	align	4
_445:
	dd	_180
	dd	119
	dd	3
	align	4
_447:
	dd	_180
	dd	123
	dd	4
	align	4
_449:
	dd	_180
	dd	125
	dd	4
_481:
	db	":TLightPart",0
	align	4
_480:
	dd	1
	dd	_313
	dd	2
	dd	_314
	dd	_481
	dd	-4
	dd	0
_64:
	db	"TLightPart",0
_65:
	db	"r",0
_67:
	db	"g",0
_68:
	db	"b",0
_69:
	db	"xv",0
_70:
	db	"yv",0
_71:
	db	"scale",0
_72:
	db	"life",0
	align	4
_63:
	dd	2
	dd	_64
	dd	3
	dd	_56
	dd	_57
	dd	8
	dd	3
	dd	_58
	dd	_57
	dd	12
	dd	3
	dd	_65
	dd	_66
	dd	16
	dd	3
	dd	_67
	dd	_66
	dd	20
	dd	3
	dd	_68
	dd	_66
	dd	24
	dd	3
	dd	_69
	dd	_57
	dd	28
	dd	3
	dd	_70
	dd	_57
	dd	32
	dd	3
	dd	_71
	dd	_57
	dd	36
	dd	3
	dd	_72
	dd	_66
	dd	40
	dd	0
	align	4
_bb_TLightPart:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_63
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
_452:
	dd	_180
	dd	132
	dd	2
	align	4
_483:
	dd	1
	dd	_322
	dd	2
	dd	_314
	dd	_481
	dd	-4
	dd	0
_514:
	db	"lPart",0
	align	4
_513:
	dd	1
	dd	_377
	dd	2
	dd	_56
	dd	_66
	dd	-4
	dd	2
	dd	_58
	dd	_66
	dd	-8
	dd	2
	dd	_69
	dd	_57
	dd	-12
	dd	2
	dd	_70
	dd	_57
	dd	-16
	dd	2
	dd	_71
	dd	_57
	dd	-20
	dd	2
	dd	_72
	dd	_66
	dd	-24
	dd	2
	dd	_514
	dd	_481
	dd	-28
	dd	0
	align	4
_484:
	dd	_180
	dd	135
	dd	3
	align	4
_486:
	dd	_180
	dd	136
	dd	3
	align	4
_490:
	dd	_180
	dd	137
	dd	3
	align	4
_494:
	dd	_180
	dd	138
	dd	3
	align	4
_498:
	dd	_180
	dd	139
	dd	3
	align	4
_502:
	dd	_180
	dd	140
	dd	3
	align	4
_506:
	dd	_180
	dd	141
	dd	3
	align	4
_510:
	dd	_180
	dd	142
	dd	3
	align	4
_518:
	dd	1
	dd	_383
	dd	2
	dd	_314
	dd	_481
	dd	-4
	dd	0
	align	4
_515:
	dd	_180
	dd	146
	dd	3
_587:
	db	"UpdateAll",0
	align	4
_586:
	dd	1
	dd	_587
	dd	2
	dd	_514
	dd	_481
	dd	-4
	dd	0
	align	4
_519:
	dd	_180
	dd	150
	dd	3
	align	4
_529:
	dd	_180
	dd	151
	dd	4
	align	4
_984:
	dd	0x3f000000
	align	4
_533:
	dd	_180
	dd	152
	dd	4
	align	4
_539:
	dd	_180
	dd	153
	dd	10
	align	4
_545:
	dd	_180
	dd	154
	dd	10
	align	4
_550:
	dd	_180
	dd	155
	dd	4
	align	8
_985:
	dd	0x0,0x40100000
	align	4
_551:
	dd	_180
	dd	156
	dd	4
	align	4
_553:
	dd	_180
	dd	157
	dd	7
	align	4
_559:
	dd	_180
	dd	157
	dd	51
	align	4
_561:
	dd	_180
	dd	159
	dd	11
	align	4
_567:
	dd	_180
	dd	159
	dd	57
	align	4
_569:
	dd	_180
	dd	161
	dd	11
	align	4
_574:
	dd	_180
	dd	163
	dd	10
	align	4
_575:
	dd	_180
	dd	164
	dd	10
	align	4
_579:
	dd	_180
	dd	165
	dd	10
	align	4
_583:
	dd	_180
	dd	165
	dd	33
_593:
	db	"createMainButtons",0
	align	4
_592:
	dd	1
	dd	_593
	dd	0
	align	4
_588:
	dd	_180
	dd	173
	dd	2
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	112,108,97,121
	align	4
_589:
	dd	_180
	dd	174
	dd	2
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	97,105,100,101
	align	4
_590:
	dd	_180
	dd	175
	dd	2
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	111,112,116,105,111,110,115
	align	4
_591:
	dd	_180
	dd	176
	dd	2
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	113,117,105,116
_603:
	db	"switchGraphics",0
_604:
	db	"windowed",0
	align	4
_602:
	dd	1
	dd	_603
	dd	2
	dd	_604
	dd	_66
	dd	-4
	dd	0
	align	4
_594:
	dd	_180
	dd	182
	dd	2
	align	4
_597:
	dd	_180
	dd	183
	dd	3
	align	4
_598:
	dd	_180
	dd	183
	dd	28
	align	4
_600:
	dd	_180
	dd	185
	dd	3
	align	4
_601:
	dd	_180
	dd	185
	dd	27
_763:
	db	"loopsCount",0
_764:
	db	"play",0
_765:
	db	"OPTIONS_MENU",0
_766:
	db	"retourButtonImg",0
_767:
	db	"HELP_MENU",0
_768:
	db	"lx",0
	align	4
_762:
	dd	1
	dd	_259
	dd	2
	dd	_763
	dd	_66
	dd	-4
	dd	2
	dd	_378
	dd	_315
	dd	-8
	dd	2
	dd	_764
	dd	_66
	dd	-12
	dd	2
	dd	_765
	dd	_66
	dd	-16
	dd	2
	dd	_766
	dd	_66
	dd	-20
	dd	2
	dd	_767
	dd	_66
	dd	-24
	dd	2
	dd	_70
	dd	_57
	dd	-28
	dd	2
	dd	_768
	dd	_57
	dd	-32
	dd	0
	align	4
_605:
	dd	_180
	dd	194
	dd	2
	align	4
_606:
	dd	_180
	dd	195
	dd	2
	align	4
_608:
	dd	_180
	dd	196
	dd	2
	align	4
_609:
	dd	_180
	dd	197
	dd	2
	align	4
_610:
	dd	_180
	dd	200
	dd	2
	align	4
_611:
	dd	_180
	dd	203
	dd	2
	align	4
_612:
	dd	_180
	dd	204
	dd	2
	align	4
_613:
	dd	_180
	dd	205
	dd	2
	align	4
_614:
	dd	_180
	dd	206
	dd	2
	align	4
_615:
	dd	_180
	dd	208
	dd	2
	align	4
_617:
	dd	_180
	dd	209
	dd	3
	align	4
_618:
	dd	_180
	dd	210
	dd	3
	align	4
_1017:
	dd	0x3eb33333
	align	4
_1018:
	dd	0x3ba3d70a
	align	4
_1019:
	dd	0x3eb33333
	align	4
_1020:
	dd	0x3ba3d70a
	align	4
_619:
	dd	_180
	dd	212
	dd	3
	align	4
_621:
	dd	_180
	dd	213
	dd	4
	align	4
_623:
	dd	_180
	dd	214
	dd	8
	align	4
_625:
	dd	_180
	dd	216
	dd	3
	align	4
_626:
	dd	_180
	dd	217
	dd	3
	align	4
_1021:
	dd	0x3eb33333
	align	4
_1022:
	dd	0x3ba3d70a
	align	4
_1023:
	dd	0x3eb33333
	align	4
_1024:
	dd	0x3ba3d70a
	align	4
_627:
	dd	_180
	dd	219
	dd	3
	align	4
_629:
	dd	_180
	dd	220
	dd	4
	align	4
_630:
	dd	_180
	dd	226
	dd	2
	align	4
_631:
	dd	_180
	dd	227
	dd	2
	align	4
_632:
	dd	_180
	dd	228
	dd	2
	align	4
_633:
	dd	_180
	dd	229
	dd	2
	align	4
_634:
	dd	_180
	dd	232
	dd	2
	align	4
_635:
	dd	_180
	dd	233
	dd	2
	align	4
_636:
	dd	_180
	dd	234
	dd	2
	align	4
_638:
	dd	_180
	dd	235
	dd	3
	align	4
_1025:
	dd	0x3f19999a
	align	4
_1026:
	dd	0x3ba3d70a
	align	4
_1027:
	dd	0x3f333333
	align	4
_1028:
	dd	0x3ba3d70a
	align	4
_639:
	dd	_180
	dd	236
	dd	3
	align	4
_641:
	dd	_180
	dd	237
	dd	4
	align	4
_642:
	dd	_180
	dd	239
	dd	3
	align	4
_644:
	dd	_180
	dd	239
	dd	25
	align	4
_646:
	dd	_180
	dd	241
	dd	3
	align	4
_1029:
	dd	0x3f19999a
	align	4
_1030:
	dd	0x3ba3d70a
	align	4
_1031:
	dd	0x3f333333
	align	4
_1032:
	dd	0x3ba3d70a
	align	4
_647:
	dd	_180
	dd	242
	dd	3
	align	4
_649:
	dd	_180
	dd	243
	dd	4
	align	4
_650:
	dd	_180
	dd	245
	dd	3
	align	4
_651:
	dd	_180
	dd	250
	dd	2
	align	4
_652:
	dd	_180
	dd	251
	dd	2
	align	4
_653:
	dd	_180
	dd	253
	dd	2
	align	4
_654:
	dd	_180
	dd	254
	dd	2
	align	4
_655:
	dd	_180
	dd	256
	dd	2
	align	4
_665:
	dd	_180
	dd	257
	dd	3
	align	4
_669:
	dd	_180
	dd	258
	dd	4
	align	4
_670:
	dd	_180
	dd	263
	dd	4
	align	4
_671:
	dd	_180
	dd	264
	dd	4
	align	4
_672:
	dd	_180
	dd	266
	dd	4
	align	4
_1033:
	dd	0x41f00000
	align	4
_677:
	dd	_180
	dd	267
	dd	4
	align	4
_684:
	dd	_180
	dd	268
	dd	4
	align	4
_685:
	dd	_180
	dd	269
	dd	4
	align	4
_687:
	dd	_180
	dd	270
	dd	5
	align	4
_691:
	dd	_180
	dd	271
	dd	6
	align	4
_694:
	dd	_180
	dd	271
	dd	15
	align	4
_698:
	dd	_180
	dd	273
	dd	6
	align	4
_700:
	dd	_180
	dd	273
	dd	28
	align	4
_701:
	dd	_180
	dd	274
	dd	6
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,116,111,117,114
	align	4
_704:
	dd	_180
	dd	274
	dd	55
	align	4
_708:
	dd	_180
	dd	282
	dd	6
	align	4
_710:
	dd	_180
	dd	282
	dd	10
	align	4
_714:
	dd	_180
	dd	284
	dd	6
	align	4
_716:
	dd	_180
	dd	284
	dd	25
	align	4
_717:
	dd	_180
	dd	291
	dd	2
	align	4
_718:
	dd	_180
	dd	293
	dd	2
	align	4
_719:
	dd	_180
	dd	294
	dd	2
	align	4
_720:
	dd	_180
	dd	297
	dd	2
	align	4
_721:
	dd	_180
	dd	298
	dd	2
	align	4
_722:
	dd	_180
	dd	300
	dd	2
	align	4
_724:
	dd	_180
	dd	301
	dd	3
	align	4
_1034:
	dd	0x3ecccccd
	align	4
_1035:
	dd	0x3c23d70a
	align	4
_1036:
	dd	0x3ecccccd
	align	4
_1037:
	dd	0x3c23d70a
	align	4
_725:
	dd	_180
	dd	302
	dd	3
	align	4
_727:
	dd	_180
	dd	302
	dd	41
	align	4
_729:
	dd	_180
	dd	304
	dd	3
	align	4
_1038:
	dd	0x3ecccccd
	align	4
_1039:
	dd	0x3c23d70a
	align	4
_1040:
	dd	0x3ecccccd
	align	4
_1041:
	dd	0x3c23d70a
	align	4
_730:
	dd	_180
	dd	305
	dd	3
	align	4
_731:
	dd	_180
	dd	311
	dd	2
	align	8
_1042:
	dd	0x0,0x40080000
	align	4
_732:
	dd	_180
	dd	312
	dd	2
	align	4
_733:
	dd	_180
	dd	313
	dd	2
	align	4
_734:
	dd	_180
	dd	314
	dd	2
	align	4
_735:
	dd	_180
	dd	315
	dd	2
	align	4
_737:
	dd	_180
	dd	319
	dd	3
	align	4
_1043:
	dd	0x3c23d70a
	align	4
_739:
	dd	_180
	dd	324
	dd	3
	align	4
_1044:
	dd	0x3dcccccd
	align	4
_742:
	dd	_180
	dd	326
	dd	4
	align	4
_743:
	dd	_180
	dd	330
	dd	4
	align	4
_1045:
	dd	0x40400000
	align	4
_1046:
	dd	0x3dcccccd
	align	4
_744:
	dd	_180
	dd	334
	dd	3
	align	4
_746:
	dd	_180
	dd	335
	dd	4
	align	4
_747:
	dd	_180
	dd	336
	dd	4
	align	4
_749:
	dd	_180
	dd	336
	dd	18
	align	4
_751:
	dd	_180
	dd	338
	dd	4
	align	4
_752:
	dd	_180
	dd	339
	dd	4
	align	4
_753:
	dd	_180
	dd	341
	dd	3
	align	4
_755:
	dd	_180
	dd	342
	dd	4
	align	4
_757:
	dd	_180
	dd	342
	dd	14
	align	4
_759:
	dd	_180
	dd	344
	dd	4
	align	4
_760:
	dd	_180
	dd	348
	dd	2
	align	4
_761:
	dd	_180
	dd	349
	dd	2
_875:
	db	"help",0
	align	4
_874:
	dd	1
	dd	_875
	dd	2
	dd	_378
	dd	_315
	dd	-4
	dd	2
	dd	_764
	dd	_66
	dd	-8
	dd	2
	dd	_70
	dd	_57
	dd	-12
	dd	2
	dd	_768
	dd	_57
	dd	-16
	dd	0
	align	4
_769:
	dd	_180
	dd	360
	dd	2
	align	4
_770:
	dd	_180
	dd	362
	dd	2
	align	4
_771:
	dd	_180
	dd	363
	dd	2
	align	4
_772:
	dd	_180
	dd	366
	dd	2
	align	4
_773:
	dd	_180
	dd	380
	dd	2
	align	4
_774:
	dd	_180
	dd	381
	dd	2
	align	4
_775:
	dd	_180
	dd	391
	dd	2
	align	4
_777:
	dd	_180
	dd	392
	dd	3
	align	4
_778:
	dd	_180
	dd	393
	dd	3
	align	4
_1084:
	dd	0x3eb33333
	align	4
_1085:
	dd	0x3ba3d70a
	align	4
_1086:
	dd	0x3eb33333
	align	4
_1087:
	dd	0x3ba3d70a
	align	4
_779:
	dd	_180
	dd	395
	dd	3
	align	4
_781:
	dd	_180
	dd	396
	dd	4
	align	4
_783:
	dd	_180
	dd	397
	dd	8
	align	4
_785:
	dd	_180
	dd	399
	dd	3
	align	4
_786:
	dd	_180
	dd	400
	dd	3
	align	4
_1088:
	dd	0x3eb33333
	align	4
_1089:
	dd	0x3ba3d70a
	align	4
_1090:
	dd	0x3eb33333
	align	4
_1091:
	dd	0x3ba3d70a
	align	4
_787:
	dd	_180
	dd	402
	dd	3
	align	4
_789:
	dd	_180
	dd	403
	dd	4
	align	4
_790:
	dd	_180
	dd	408
	dd	2
	align	4
_791:
	dd	_180
	dd	409
	dd	2
	align	4
_792:
	dd	_180
	dd	410
	dd	2
	align	4
_793:
	dd	_180
	dd	412
	dd	2
	align	4
_803:
	dd	_180
	dd	413
	dd	3
	align	4
_807:
	dd	_180
	dd	414
	dd	4
	align	4
_808:
	dd	_180
	dd	415
	dd	4
	align	4
_809:
	dd	_180
	dd	416
	dd	4
	align	4
_810:
	dd	_180
	dd	417
	dd	4
	align	4
_1092:
	dd	0x41f00000
	align	4
_815:
	dd	_180
	dd	418
	dd	4
	align	4
_822:
	dd	_180
	dd	419
	dd	4
	align	4
_823:
	dd	_180
	dd	420
	dd	4
	align	4
_825:
	dd	_180
	dd	421
	dd	5
	align	4
_829:
	dd	_180
	dd	422
	dd	6
	align	4
_831:
	dd	_180
	dd	431
	dd	2
	align	4
_832:
	dd	_180
	dd	432
	dd	2
	align	4
_833:
	dd	_180
	dd	434
	dd	2
	align	4
_834:
	dd	_180
	dd	436
	dd	2
	align	4
_836:
	dd	_180
	dd	437
	dd	3
	align	4
_1093:
	dd	0x3ecccccd
	align	4
_1094:
	dd	0x3c23d70a
	align	4
_1095:
	dd	0x3ecccccd
	align	4
_1096:
	dd	0x3c23d70a
	align	4
_837:
	dd	_180
	dd	438
	dd	3
	align	4
_839:
	dd	_180
	dd	438
	dd	41
	align	4
_841:
	dd	_180
	dd	440
	dd	3
	align	4
_1097:
	dd	0x3ecccccd
	align	4
_1098:
	dd	0x3c23d70a
	align	4
_1099:
	dd	0x3ecccccd
	align	4
_1100:
	dd	0x3c23d70a
	align	4
_842:
	dd	_180
	dd	441
	dd	3
	align	4
_843:
	dd	_180
	dd	446
	dd	2
	align	8
_1101:
	dd	0x0,0x40080000
	align	4
_844:
	dd	_180
	dd	447
	dd	2
	align	4
_845:
	dd	_180
	dd	448
	dd	2
	align	4
_846:
	dd	_180
	dd	449
	dd	2
	align	4
_847:
	dd	_180
	dd	450
	dd	2
	align	4
_849:
	dd	_180
	dd	451
	dd	3
	align	4
_1102:
	dd	0x3c23d70a
	align	4
_851:
	dd	_180
	dd	452
	dd	3
	align	4
_1103:
	dd	0x3dcccccd
	align	4
_854:
	dd	_180
	dd	453
	dd	4
	align	4
_855:
	dd	_180
	dd	454
	dd	4
	align	4
_1104:
	dd	0x40400000
	align	4
_1105:
	dd	0x3dcccccd
	align	4
_856:
	dd	_180
	dd	456
	dd	3
	align	4
_858:
	dd	_180
	dd	457
	dd	4
	align	4
_859:
	dd	_180
	dd	458
	dd	4
	align	4
_861:
	dd	_180
	dd	458
	dd	18
	align	4
_863:
	dd	_180
	dd	460
	dd	4
	align	4
_864:
	dd	_180
	dd	461
	dd	4
	align	4
_865:
	dd	_180
	dd	463
	dd	3
	align	4
_867:
	dd	_180
	dd	464
	dd	4
	align	4
_869:
	dd	_180
	dd	464
	dd	14
	align	4
_871:
	dd	_180
	dd	466
	dd	4
	align	4
_872:
	dd	_180
	dd	469
	dd	2
	align	4
_873:
	dd	_180
	dd	470
	dd	2
