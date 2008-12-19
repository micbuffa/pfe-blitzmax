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
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	___bb_win32maxgui_win32maxgui
	extrn	_bbFloatToInt
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
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_graphics_GraphicsHeight
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_linkedlist_ListAddLast
	extrn	_brl_linkedlist_ListRemove
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawOval
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_max2d_SetColor
	extrn	_brl_random_Rnd
	public	__bb_coordinate_Delete
	public	__bb_coordinate_New
	public	__bb_main
	public	__bb_sprite_Delete
	public	__bb_sprite_New
	public	__bb_sprite_init_sprite
	public	__bb_sprite_update_sprite
	public	_bb_coordinate
	public	_bb_motionBlur
	public	_bb_sprite
	public	_bb_sprites
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_72],0
	je	_73
	mov	eax,0
	pop	ebx
	pop	ebp
	ret
_73:
	mov	dword [_72],1
	push	ebp
	push	_68
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
	push	_63
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_66]
	and	eax,1
	cmp	eax,0
	jne	_67
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_sprites],eax
	or	dword [_66],1
_67:
	mov	ebx,0
	jmp	_36
_36:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	pop	ebp
	ret
__bb_sprite_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_102
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_sprite
	push	_74
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_76
	call	_brl_blitz_NullObjectError
_76:
	fldz
	fstp	dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_79
	call	_brl_blitz_NullObjectError
_79:
	fldz
	fstp	dword [ebx+12]
	push	_81
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_83
	call	_brl_blitz_NullObjectError
_83:
	fldz
	fstp	dword [ebx+16]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_86
	call	_brl_blitz_NullObjectError
_86:
	fldz
	fstp	dword [ebx+20]
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_90
	call	_brl_blitz_NullObjectError
_90:
	fldz
	fstp	dword [ebx+24]
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_94
	call	_brl_blitz_NullObjectError
_94:
	mov	dword [ebx+28],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_97
	call	_brl_blitz_NullObjectError
_97:
	mov	dword [ebx+32],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_100
	call	_brl_blitz_NullObjectError
_100:
	mov	dword [ebx+36],0
	mov	ebx,0
	jmp	_39
_39:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_sprite_Delete:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_107
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
_42:
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bbObjectClass
	push	dword [ebp-4]
	call	_bbObjectDtor
	add	esp,4
	mov	ebx,0
	jmp	_106
_106:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_sprite_init_sprite:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],0
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_143
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],0
	jmp	_111
_13:
	push	_112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_sprite
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_116
	call	_brl_blitz_NullObjectError
_116:
	mov	eax,dword [ebp-4]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fstp	qword [ebp-24]
	fld	qword [_266]
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_267]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fld	qword [ebp-24]
	faddp	st1,st0
	fstp	qword [ebp-24]
	fld	qword [ebp-24]
	fstp	dword [ebx+8]
	push	_118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_120
	call	_brl_blitz_NullObjectError
_120:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-36],eax
	fild	dword [ebp+-36]
	fstp	qword [ebp-32]
	fld	qword [_268]
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_269]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fld	qword [ebp-32]
	faddp	st1,st0
	fstp	qword [ebp-32]
	fld	qword [ebp-32]
	fstp	dword [ebx+12]
	push	_122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_124
	call	_brl_blitz_NullObjectError
_124:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_127
	call	_brl_blitz_NullObjectError
_127:
	fld	dword [esi+8]
	fstp	dword [ebx+16]
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_130
	call	_brl_blitz_NullObjectError
_130:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_133
	call	_brl_blitz_NullObjectError
_133:
	fld	dword [esi+12]
	fstp	dword [ebx+20]
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_136
	call	_brl_blitz_NullObjectError
_136:
	fld	qword [_270]
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_271]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fstp	dword [ebx+24]
	push	_138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_140
	call	_brl_blitz_NullObjectError
_140:
	fld	qword [_272]
	sub	esp,8
	fstp	qword [esp]
	fldz
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	mov	dword [ebx+32],eax
	push	_142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	dword [_bb_sprites]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
_11:
	add	dword [ebp-12],1
_111:
	cmp	dword [ebp-12],400
	jle	_13
_12:
	mov	ebx,0
	jmp	_46
_46:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_sprite_update_sprite:
	push	ebp
	mov	ebp,esp
	sub	esp,64
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_206
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	eax,dword [_bb_sprites]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_150
	call	_brl_blitz_NullObjectError
_150:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-60],eax
	jmp	_14
_16:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_155
	call	_brl_blitz_NullObjectError
_155:
	push	_bb_sprite
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_14
	push	_156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_158
	call	_brl_blitz_NullObjectError
_158:
	mov	edi,ebx
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_161
	call	_brl_blitz_NullObjectError
_161:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_163
	call	_brl_blitz_NullObjectError
_163:
	fld	dword [esi+12]
	fadd	dword [ebx+24]
	fstp	dword [edi+12]
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_166
	call	_brl_blitz_NullObjectError
_166:
	fld	dword [ebx+12]
	fstp	dword [ebp-44]
	call	_brl_graphics_GraphicsHeight
	mov	dword [ebp+-64],eax
	fild	dword [ebp+-64]
	fld	dword [ebp-44]
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_171
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_168
	call	_brl_blitz_NullObjectError
_168:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_170
	call	_brl_blitz_NullObjectError
_170:
	fld	dword [esi+12]
	fstp	qword [ebp-52]
	fld	dword [ebx+20]
	fadd	dword [_283]
	fstp	qword [ebp-40]
	fldz
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_284]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fld	qword [ebp-40]
	faddp	st1,st0
	fstp	qword [ebp-40]
	fld	qword [ebp-40]
	fld	qword [ebp-52]
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
_171:
	cmp	eax,0
	je	_173
	push	_174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_176
	call	_brl_blitz_NullObjectError
_176:
	mov	eax,dword [ebp-8]
	mov	dword [ebp+-64],eax
	fild	dword [ebp+-64]
	fstp	qword [ebp-24]
	fld	qword [_285]
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_286]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fld	qword [ebp-24]
	faddp	st1,st0
	fstp	qword [ebp-24]
	fld	qword [ebp-24]
	fstp	dword [ebx+8]
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_180
	call	_brl_blitz_NullObjectError
_180:
	mov	eax,dword [ebp-12]
	mov	dword [ebp+-64],eax
	fild	dword [ebp+-64]
	fstp	qword [ebp-32]
	fld	qword [_287]
	sub	esp,8
	fstp	qword [esp]
	fld	qword [_288]
	sub	esp,8
	fstp	qword [esp]
	call	_brl_random_Rnd
	add	esp,16
	fld	qword [ebp-32]
	faddp	st1,st0
	fstp	qword [ebp-32]
	fld	qword [ebp-32]
	fstp	dword [ebx+12]
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_184
	call	_brl_blitz_NullObjectError
_184:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_187
	call	_brl_blitz_NullObjectError
_187:
	fld	dword [esi+8]
	fstp	dword [ebx+16]
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_190
	call	_brl_blitz_NullObjectError
_190:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_193
	call	_brl_blitz_NullObjectError
_193:
	fld	dword [esi+12]
	fstp	dword [ebx+20]
_173:
	push	_194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	call	_brl_max2d_SetBlend
	add	esp,4
	push	_195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_197
	call	_brl_blitz_NullObjectError
_197:
	push	0
	push	dword [ebx+32]
	push	255
	call	_brl_max2d_SetColor
	add	esp,12
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_199
	push	_200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_202
	call	_brl_blitz_NullObjectError
_202:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_204
	call	_brl_blitz_NullObjectError
_204:
	push	1086324736
	push	1077936128
	push	dword [ebx+12]
	push	dword [esi+8]
	call	_brl_max2d_DrawOval
	add	esp,16
_199:
	push	_205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	call	_brl_max2d_SetBlend
	add	esp,4
_14:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_153
	call	_brl_blitz_NullObjectError
_153:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_16
_15:
	mov	ebx,0
	jmp	_51
_51:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_coordinate_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_216
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_coordinate
	push	_209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_211
	call	_brl_blitz_NullObjectError
_211:
	mov	dword [ebx+8],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_214
	call	_brl_blitz_NullObjectError
_214:
	mov	dword [ebx+12],0
	mov	ebx,0
	jmp	_54
_54:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_coordinate_Delete:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
_57:
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bbObjectClass
	push	dword [ebp-4]
	call	_bbObjectDtor
	add	esp,4
	mov	ebx,0
	jmp	_218
_218:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_motionBlur:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	fldz
	fstp	dword [ebp-12]
	mov	dword [ebp-16],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_243
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-12]
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	eax,dword [ebp-4]
	mov	dword [ebp-20],eax
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_226
	call	_brl_blitz_NullObjectError
_226:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_17
_19:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_231
	call	_brl_blitz_NullObjectError
_231:
	push	_bb_coordinate
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_17
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [_319]
	fld	dword [ebp-12]
	fdiv	dword [_320]
	fsubp	st1,st0
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_235
	call	_brl_blitz_NullObjectError
_235:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_237
	call	_brl_blitz_NullObjectError
_237:
	push	0
	mov	eax,dword [ebx+12]
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [esi+8]
	mov	dword [ebp+-24],eax
	fild	dword [ebp+-24]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-8]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fadd	dword [_321]
	fstp	dword [ebp-12]
	push	_239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fld	dword [_322]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_240
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	dword [ebp-4]
	call	_brl_linkedlist_ListRemove
	add	esp,8
_240:
_17:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_229
	call	_brl_blitz_NullObjectError
_229:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_19
_18:
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1065353216
	call	_brl_max2d_SetAlpha
	add	esp,4
	mov	ebx,0
	jmp	_61
_61:
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
_72:
	dd	0
_69:
	db	"Effets",0
_70:
	db	"sprites",0
_71:
	db	":TList",0
	align	4
_bb_sprites:
	dd	_bbNullObject
	align	4
_68:
	dd	1
	dd	_69
	dd	4
	dd	_70
	dd	_71
	dd	_bb_sprites
	dd	0
_64:
	db	"D:/cours/PFE/Vibz/Effets.bmx",0
	align	4
_63:
	dd	_64
	dd	1
	dd	1
	align	4
_66:
	dd	0
_103:
	db	"New",0
_104:
	db	"Self",0
_105:
	db	":sprite",0
	align	4
_102:
	dd	1
	dd	_103
	dd	2
	dd	_104
	dd	_105
	dd	-4
	dd	0
_21:
	db	"sprite",0
_22:
	db	"x",0
_23:
	db	"f",0
_24:
	db	"y",0
_25:
	db	"origineX",0
_26:
	db	"origineY",0
_27:
	db	"speed",0
_28:
	db	"colR",0
_29:
	db	"i",0
_30:
	db	"colG",0
_31:
	db	"colB",0
	align	4
_20:
	dd	2
	dd	_21
	dd	3
	dd	_22
	dd	_23
	dd	8
	dd	3
	dd	_24
	dd	_23
	dd	12
	dd	3
	dd	_25
	dd	_23
	dd	16
	dd	3
	dd	_26
	dd	_23
	dd	20
	dd	3
	dd	_27
	dd	_23
	dd	24
	dd	3
	dd	_28
	dd	_29
	dd	28
	dd	3
	dd	_30
	dd	_29
	dd	32
	dd	3
	dd	_31
	dd	_29
	dd	36
	dd	0
	align	4
_bb_sprite:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_20
	dd	40
	dd	__bb_sprite_New
	dd	__bb_sprite_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_sprite_init_sprite
	dd	__bb_sprite_update_sprite
	align	4
_74:
	dd	_64
	dd	5
	dd	2
	align	4
_81:
	dd	_64
	dd	6
	dd	2
	align	4
_88:
	dd	_64
	dd	7
	dd	2
	align	4
_92:
	dd	_64
	dd	8
	dd	2
_108:
	db	"Delete",0
	align	4
_107:
	dd	1
	dd	_108
	dd	2
	dd	_104
	dd	_105
	dd	-4
	dd	0
_144:
	db	"init_sprite",0
_145:
	db	"sp",0
	align	4
_143:
	dd	1
	dd	_144
	dd	2
	dd	_22
	dd	_29
	dd	-4
	dd	2
	dd	_24
	dd	_29
	dd	-8
	dd	2
	dd	_29
	dd	_29
	dd	-12
	dd	2
	dd	_145
	dd	_105
	dd	-16
	dd	0
	align	4
_109:
	dd	_64
	dd	12
	dd	3
	align	4
_112:
	dd	_64
	dd	13
	dd	4
	align	4
_114:
	dd	_64
	dd	14
	dd	4
	align	8
_266:
	dd	0x0,0x40340000
	align	8
_267:
	dd	0x0,0xc0340000
	align	4
_118:
	dd	_64
	dd	15
	dd	4
	align	8
_268:
	dd	0x0,0x40140000
	align	8
_269:
	dd	0x0,0xc02e0000
	align	4
_122:
	dd	_64
	dd	16
	dd	4
	align	4
_128:
	dd	_64
	dd	17
	dd	4
	align	4
_134:
	dd	_64
	dd	18
	dd	4
	align	8
_270:
	dd	0x0,0x40280000
	align	8
_271:
	dd	0x0,0x40240000
	align	4
_138:
	dd	_64
	dd	20
	dd	4
	align	8
_272:
	dd	0x0,0x406fe000
	align	4
_142:
	dd	_64
	dd	22
	dd	4
_207:
	db	"update_sprite",0
_208:
	db	"flag",0
	align	4
_206:
	dd	1
	dd	_207
	dd	2
	dd	_208
	dd	_29
	dd	-4
	dd	2
	dd	_22
	dd	_29
	dd	-8
	dd	2
	dd	_24
	dd	_29
	dd	-12
	dd	2
	dd	_145
	dd	_105
	dd	-16
	dd	0
	align	4
_146:
	dd	_64
	dd	27
	dd	3
	align	4
_156:
	dd	_64
	dd	28
	dd	4
	align	4
_164:
	dd	_64
	dd	29
	dd	4
	align	4
_283:
	dd	0x42480000
	align	8
_284:
	dd	0x0,0x40340000
	align	4
_174:
	dd	_64
	dd	30
	dd	5
	align	8
_285:
	dd	0x0,0x40340000
	align	8
_286:
	dd	0x0,0xc0340000
	align	4
_178:
	dd	_64
	dd	31
	dd	5
	align	8
_287:
	dd	0x0,0x40140000
	align	8
_288:
	dd	0x0,0xc02e0000
	align	4
_182:
	dd	_64
	dd	32
	dd	5
	align	4
_188:
	dd	_64
	dd	33
	dd	5
	align	4
_194:
	dd	_64
	dd	35
	dd	4
	align	4
_195:
	dd	_64
	dd	36
	dd	4
	align	4
_198:
	dd	_64
	dd	37
	dd	4
	align	4
_200:
	dd	_64
	dd	37
	dd	22
	align	4
_205:
	dd	_64
	dd	38
	dd	4
_217:
	db	":coordinate",0
	align	4
_216:
	dd	1
	dd	_103
	dd	2
	dd	_104
	dd	_217
	dd	-4
	dd	0
_33:
	db	"coordinate",0
_34:
	db	"a",0
_35:
	db	"b",0
	align	4
_32:
	dd	2
	dd	_33
	dd	3
	dd	_34
	dd	_29
	dd	8
	dd	3
	dd	_35
	dd	_29
	dd	12
	dd	0
	align	4
_bb_coordinate:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_32
	dd	16
	dd	__bb_coordinate_New
	dd	__bb_coordinate_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	align	4
_209:
	dd	_64
	dd	45
	dd	2
	align	4
_219:
	dd	1
	dd	_108
	dd	2
	dd	_104
	dd	_217
	dd	-4
	dd	0
_244:
	db	"motionBlur",0
_245:
	db	"coordsList",0
_246:
	db	"image",0
_247:
	db	":TImage",0
_248:
	db	"c",0
_249:
	db	"coord",0
	align	4
_243:
	dd	1
	dd	_244
	dd	2
	dd	_245
	dd	_71
	dd	-4
	dd	2
	dd	_246
	dd	_247
	dd	-8
	dd	2
	dd	_248
	dd	_23
	dd	-12
	dd	2
	dd	_249
	dd	_217
	dd	-16
	dd	0
	align	4
_220:
	dd	_64
	dd	49
	dd	3
	align	4
_222:
	dd	_64
	dd	51
	dd	3
	align	4
_232:
	dd	_64
	dd	52
	dd	4
	align	4
_319:
	dd	0x3f800000
	align	4
_320:
	dd	0x41a00000
	align	4
_233:
	dd	_64
	dd	54
	dd	4
	align	4
_238:
	dd	_64
	dd	56
	dd	4
	align	4
_321:
	dd	0x3f800000
	align	4
_239:
	dd	_64
	dd	57
	dd	4
	align	4
_322:
	dd	0x40c00000
	align	4
_241:
	dd	_64
	dd	57
	dd	16
	align	4
_242:
	dd	_64
	dd	59
	dd	3
