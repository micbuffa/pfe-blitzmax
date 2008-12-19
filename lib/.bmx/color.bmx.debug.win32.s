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
	extrn	_bbFloor
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_brl_blitz_NullMethodError
	extrn	_brl_blitz_NullObjectError
	public	___bb_lib_color
	public	__bb_TCMYColor_CMYColor
	public	__bb_TCMYColor_CYAN
	public	__bb_TCMYColor_CreateCMY
	public	__bb_TCMYColor_Delete
	public	__bb_TCMYColor_HSVColor
	public	__bb_TCMYColor_MAGENTA
	public	__bb_TCMYColor_New
	public	__bb_TCMYColor_RGBColor
	public	__bb_TCMYColor_YELLOW
	public	__bb_TColor_Delete
	public	__bb_TColor_New
	public	__bb_THSVColor_CMYColor
	public	__bb_THSVColor_CreateHSV
	public	__bb_THSVColor_Delete
	public	__bb_THSVColor_HSVColor
	public	__bb_THSVColor_Hue
	public	__bb_THSVColor_New
	public	__bb_THSVColor_RGBColor
	public	__bb_THSVColor_Saturation
	public	__bb_THSVColor_Value
	public	__bb_TRGBColor_BLUE
	public	__bb_TRGBColor_CMYColor
	public	__bb_TRGBColor_CreateRGB
	public	__bb_TRGBColor_Delete
	public	__bb_TRGBColor_GREEN
	public	__bb_TRGBColor_HSVColor
	public	__bb_TRGBColor_New
	public	__bb_TRGBColor_RED
	public	__bb_TRGBColor_RGBColor
	public	__bb_TRGBColor_Set
	public	_bb_BLACK
	public	_bb_BLUE
	public	_bb_CMYColor
	public	_bb_CYAN
	public	_bb_ColorBlue
	public	_bb_ColorCyan
	public	_bb_ColorGreen
	public	_bb_ColorHue
	public	_bb_ColorMagenta
	public	_bb_ColorRed
	public	_bb_ColorSaturation
	public	_bb_ColorValue
	public	_bb_ColorYellow
	public	_bb_DARKGRAY
	public	_bb_GRAY
	public	_bb_GREEN
	public	_bb_HSVColor
	public	_bb_LIGHTGRAY
	public	_bb_MAGENTA
	public	_bb_ORANGE
	public	_bb_RED
	public	_bb_RGBColor
	public	_bb_TCMYColor
	public	_bb_TColor
	public	_bb_THSVColor
	public	_bb_TRGBColor
	public	_bb_WHITE
	public	_bb_YELLOW
	section	"code" code
___bb_lib_color:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_225],0
	je	_226
	mov	eax,0
	pop	ebx
	pop	ebp
	ret
_226:
	mov	dword [_225],1
	push	ebp
	push	_210
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
	push	_172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,1
	cmp	eax,0
	jne	_176
	push	0
	push	0
	push	1065353216
	call	_bb_RGBColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_RED],eax
	or	dword [_175],1
_176:
	push	_177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,2
	cmp	eax,0
	jne	_179
	push	0
	push	1065353216
	push	0
	call	_bb_RGBColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_GREEN],eax
	or	dword [_175],2
_179:
	push	_180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,4
	cmp	eax,0
	jne	_182
	push	1065353216
	push	0
	push	0
	call	_bb_RGBColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_BLUE],eax
	or	dword [_175],4
_182:
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,8
	cmp	eax,0
	jne	_185
	push	0
	push	1065353216
	push	1065353216
	call	_bb_RGBColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_ORANGE],eax
	or	dword [_175],8
_185:
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,16
	cmp	eax,0
	jne	_188
	push	0
	push	0
	push	1065353216
	call	_bb_CMYColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_CYAN],eax
	or	dword [_175],16
_188:
	push	_189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,32
	cmp	eax,0
	jne	_191
	push	0
	push	1065353216
	push	0
	call	_bb_CMYColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_MAGENTA],eax
	or	dword [_175],32
_191:
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,64
	cmp	eax,0
	jne	_194
	push	1065353216
	push	0
	push	0
	call	_bb_CMYColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_YELLOW],eax
	or	dword [_175],64
_194:
	push	_195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,128
	cmp	eax,0
	jne	_197
	push	0
	push	0
	push	0
	call	_bb_HSVColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_BLACK],eax
	or	dword [_175],128
_197:
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,256
	cmp	eax,0
	jne	_200
	push	1065353216
	push	0
	push	0
	call	_bb_HSVColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_WHITE],eax
	or	dword [_175],256
_200:
	push	_201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,512
	cmp	eax,0
	jne	_203
	push	1056964608
	push	0
	push	0
	call	_bb_HSVColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_GRAY],eax
	or	dword [_175],512
_203:
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,1024
	cmp	eax,0
	jne	_206
	push	1048576000
	push	0
	push	0
	call	_bb_HSVColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_DARKGRAY],eax
	or	dword [_175],1024
_206:
	push	_207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_175]
	and	eax,2048
	cmp	eax,0
	jne	_209
	push	1061158912
	push	0
	push	0
	call	_bb_HSVColor
	add	esp,12
	inc	dword [eax+4]
	mov	dword [_bb_LIGHTGRAY],eax
	or	dword [_175],2048
_209:
	mov	ebx,0
	jmp	_29
_29:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	pop	ebp
	ret
__bb_TColor_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_229
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TColor
	push	ebp
	push	_227
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	push	ebp
	push	_228
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_32
_32:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TColor_Delete:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_234
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	ebp
	push	_232
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_35:
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bbObjectClass
	push	dword [ebp-4]
	call	_bbObjectDtor
	add	esp,4
	mov	ebx,0
	jmp	_233
_233:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRGBColor_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_248
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TColor_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TRGBColor
	push	ebp
	push	_246
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_238
	call	_brl_blitz_NullObjectError
_238:
	fldz
	fstp	dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_241
	call	_brl_blitz_NullObjectError
_241:
	fldz
	fstp	dword [ebx+12]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_244
	call	_brl_blitz_NullObjectError
_244:
	fldz
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
	push	ebp
	push	_247
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_38
_38:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRGBColor_Delete:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_252
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	ebp
	push	_250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_41:
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TColor
	push	dword [ebp-4]
	call	__bb_TColor_Delete
	add	esp,4
	mov	ebx,0
	jmp	_251
_251:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRGBColor_RGBColor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_254
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_44
_44:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRGBColor_CMYColor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_263
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_258
	call	_brl_blitz_NullObjectError
_258:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_260
	call	_brl_blitz_NullObjectError
_260:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_262
	call	_brl_blitz_NullObjectError
_262:
	fld	dword [_709]
	fsub	dword [ebx+16]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_710]
	fsub	dword [esi+12]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_711]
	fsub	dword [edi+8]
	sub	esp,4
	fstp	dword [esp]
	call	dword [_bb_TCMYColor+72]
	add	esp,12
	mov	ebx,eax
	jmp	_47
_47:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRGBColor_HSVColor:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fldz
	fstp	dword [ebp-8]
	fldz
	fstp	dword [ebp-12]
	fldz
	fstp	dword [ebp-16]
	fldz
	fstp	dword [ebp-20]
	push	ebp
	push	_348
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_267
	call	_brl_blitz_NullObjectError
_267:
	fld	dword [ebx+8]
	fstp	dword [ebp-8]
	push	_269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_271
	call	_brl_blitz_NullObjectError
_271:
	fld	dword [ebx+12]
	fld	dword [ebp-8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_272
	push	ebp
	push	_276
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_275
	call	_brl_blitz_NullObjectError
_275:
	fld	dword [ebx+12]
	fstp	dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
_272:
	push	_277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_279
	call	_brl_blitz_NullObjectError
_279:
	fld	dword [ebx+16]
	fld	dword [ebp-8]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_280
	push	ebp
	push	_284
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_283
	call	_brl_blitz_NullObjectError
_283:
	fld	dword [ebx+16]
	fstp	dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
_280:
	push	_285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_287
	call	_brl_blitz_NullObjectError
_287:
	fld	dword [ebx+8]
	fstp	dword [ebp-12]
	push	_289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_291
	call	_brl_blitz_NullObjectError
_291:
	fld	dword [ebx+12]
	fld	dword [ebp-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_292
	push	ebp
	push	_296
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_295
	call	_brl_blitz_NullObjectError
_295:
	fld	dword [ebx+12]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_292:
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_299
	call	_brl_blitz_NullObjectError
_299:
	fld	dword [ebx+16]
	fld	dword [ebp-12]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setbe	al
	movzx	eax,al
	cmp	eax,0
	jne	_300
	push	ebp
	push	_304
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_303
	call	_brl_blitz_NullObjectError
_303:
	fld	dword [ebx+16]
	fstp	dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
_300:
	push	_305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fsub	dword [ebp-8]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setnz	al
	movzx	eax,al
	cmp	eax,0
	jne	_306
	push	ebp
	push	_308
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	0
	push	0
	call	dword [_bb_THSVColor+72]
	add	esp,12
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_50
_306:
	push	_309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fldz
	fstp	dword [ebp-16]
	fld	dword [ebp-12]
	fsub	dword [ebp-8]
	fstp	dword [ebp-20]
	push	_312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	fstp	dword [ebp-24]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_317
	call	_brl_blitz_NullObjectError
_317:
	fld	dword [ebx+8]
	fld	dword [ebp-24]
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_315
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_320
	call	_brl_blitz_NullObjectError
_320:
	fld	dword [ebx+12]
	fld	dword [ebp-24]
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_318
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_323
	call	_brl_blitz_NullObjectError
_323:
	fld	dword [ebx+16]
	fld	dword [ebp-24]
	fucompp
	fnstsw	ax
	sahf
	setz	al
	movzx	eax,al
	cmp	eax,0
	jne	_321
	jmp	_314
_315:
	push	ebp
	push	_329
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_326
	call	_brl_blitz_NullObjectError
_326:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_328
	call	_brl_blitz_NullObjectError
_328:
	fld	dword [esi+12]
	fsub	dword [ebx+16]
	fdiv	dword [ebp-20]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_314
_318:
	push	ebp
	push	_335
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_332
	call	_brl_blitz_NullObjectError
_332:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_334
	call	_brl_blitz_NullObjectError
_334:
	fld	dword [_718]
	fld	dword [esi+16]
	fsub	dword [ebx+8]
	fdiv	dword [ebp-20]
	faddp	st1,st0
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_314
_321:
	push	ebp
	push	_341
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_338
	call	_brl_blitz_NullObjectError
_338:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_340
	call	_brl_blitz_NullObjectError
_340:
	fld	dword [_719]
	fld	dword [esi+8]
	fsub	dword [ebx+12]
	fdiv	dword [ebp-20]
	faddp	st1,st0
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_314
_314:
	push	_342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fmul	dword [_720]
	fstp	dword [ebp-16]
	push	_343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_344
	push	ebp
	push	_346
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-16]
	fadd	dword [_721]
	fstp	dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
_344:
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	fld	dword [ebp-20]
	fdiv	dword [ebp-12]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebp-16]
	call	dword [_bb_THSVColor+72]
	add	esp,12
	mov	ebx,eax
	jmp	_50
_50:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRGBColor_RED:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_357
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
	fld	dword [ebx+8]
	fstp	dword [ebp-8]
	jmp	_53
_53:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRGBColor_GREEN:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_361
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_360
	call	_brl_blitz_NullObjectError
_360:
	fld	dword [ebx+12]
	fstp	dword [ebp-8]
	jmp	_56
_56:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRGBColor_BLUE:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_365
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_364
	call	_brl_blitz_NullObjectError
_364:
	fld	dword [ebx+16]
	fstp	dword [ebp-8]
	jmp	_59
_59:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRGBColor_Set:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	fld	dword [ebp+20]
	fstp	dword [ebp-16]
	push	ebp
	push	_378
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_368
	call	_brl_blitz_NullObjectError
_368:
	fld	dword [ebp-8]
	fstp	dword [ebx+8]
	push	_370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_372
	call	_brl_blitz_NullObjectError
_372:
	fld	dword [ebp-12]
	fstp	dword [ebx+12]
	push	_374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_376
	call	_brl_blitz_NullObjectError
_376:
	fld	dword [ebp-16]
	fstp	dword [ebx+16]
	mov	ebx,0
	jmp	_65
_65:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRGBColor_CreateRGB:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_398
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRGBColor
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_385
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_387
	call	_brl_blitz_NullObjectError
_387:
	fld	dword [ebp-4]
	fstp	dword [ebx+8]
	push	_389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_391
	call	_brl_blitz_NullObjectError
_391:
	fld	dword [ebp-8]
	fstp	dword [ebx+12]
	push	_393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_395
	call	_brl_blitz_NullObjectError
_395:
	fld	dword [ebp-12]
	fstp	dword [ebx+16]
	push	_397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_70
_70:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCMYColor_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_414
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TColor_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TCMYColor
	push	ebp
	push	_412
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	fldz
	fstp	dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_407
	call	_brl_blitz_NullObjectError
_407:
	fldz
	fstp	dword [ebx+12]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_410
	call	_brl_blitz_NullObjectError
_410:
	fldz
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
	push	ebp
	push	_413
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_73
_73:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCMYColor_Delete:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_418
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	ebp
	push	_416
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_76:
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TColor
	push	dword [ebp-4]
	call	__bb_TColor_Delete
	add	esp,4
	mov	ebx,0
	jmp	_417
_417:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCMYColor_RGBColor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_426
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_421
	call	_brl_blitz_NullObjectError
_421:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_423
	call	_brl_blitz_NullObjectError
_423:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_425
	call	_brl_blitz_NullObjectError
_425:
	fld	dword [_787]
	fsub	dword [ebx+16]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_788]
	fsub	dword [esi+12]
	sub	esp,4
	fstp	dword [esp]
	fld	dword [_789]
	fsub	dword [edi+8]
	sub	esp,4
	fstp	dword [esp]
	call	dword [_bb_TRGBColor+76]
	add	esp,12
	mov	ebx,eax
	jmp	_79
_79:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCMYColor_CMYColor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_428
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_82
_82:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCMYColor_HSVColor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_434
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_431
	call	_brl_blitz_NullObjectError
_431:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_433
	call	_brl_blitz_NullObjectError
_433:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	mov	ebx,eax
	jmp	_85
_85:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCMYColor_CYAN:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_438
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_437
	call	_brl_blitz_NullObjectError
_437:
	fld	dword [ebx+8]
	fstp	dword [ebp-8]
	jmp	_88
_88:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCMYColor_MAGENTA:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_442
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_441
	call	_brl_blitz_NullObjectError
_441:
	fld	dword [ebx+12]
	fstp	dword [ebp-8]
	jmp	_91
_91:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCMYColor_YELLOW:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_446
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_445
	call	_brl_blitz_NullObjectError
_445:
	fld	dword [ebx+16]
	fstp	dword [ebp-8]
	jmp	_94
_94:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCMYColor_CreateCMY:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_462
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TCMYColor
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_451
	call	_brl_blitz_NullObjectError
_451:
	fld	dword [ebp-4]
	fstp	dword [ebx+8]
	push	_453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_455
	call	_brl_blitz_NullObjectError
_455:
	fld	dword [ebp-8]
	fstp	dword [ebx+12]
	push	_457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_459
	call	_brl_blitz_NullObjectError
_459:
	fld	dword [ebp-12]
	fstp	dword [ebx+16]
	push	_461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_99
_99:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_THSVColor_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_479
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TColor_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_THSVColor
	push	ebp
	push	_477
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_469
	call	_brl_blitz_NullObjectError
_469:
	fldz
	fstp	dword [ebx+8]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_472
	call	_brl_blitz_NullObjectError
_472:
	fldz
	fstp	dword [ebx+12]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_475
	call	_brl_blitz_NullObjectError
_475:
	fldz
	fstp	dword [ebx+16]
	call	dword [_bbOnDebugLeaveScope]
	push	ebp
	push	_478
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_102
_102:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_THSVColor_Delete:
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
	push	ebp
	push	_481
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_105:
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TColor
	push	dword [ebp-4]
	call	__bb_TColor_Delete
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
__bb_THSVColor_RGBColor:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	fldz
	fstp	dword [ebp-8]
	fldz
	fstp	dword [ebp-12]
	fldz
	fstp	dword [ebp-16]
	fldz
	fstp	dword [ebp-20]
	fldz
	fstp	dword [ebp-24]
	fldz
	fstp	dword [ebp-28]
	mov	eax,ebp
	push	eax
	push	_555
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_486
	call	_brl_blitz_NullObjectError
_486:
	fld	dword [ebx+12]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	seta	al
	movzx	eax,al
	cmp	eax,0
	jne	_487
	mov	eax,ebp
	push	eax
	push	_495
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_490
	call	_brl_blitz_NullObjectError
_490:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_492
	call	_brl_blitz_NullObjectError
_492:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_494
	call	_brl_blitz_NullObjectError
_494:
	push	dword [ebx+16]
	push	dword [esi+16]
	push	dword [edi+16]
	call	dword [_bb_TRGBColor+76]
	add	esp,12
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_108
_487:
	push	_496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_498
	call	_brl_blitz_NullObjectError
_498:
	fld	dword [ebx+8]
	fdiv	dword [_832]
	fstp	dword [ebp-8]
	push	_500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloor
	add	esp,8
	fstp	dword [ebp-12]
	push	_502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-8]
	fsub	dword [ebp-12]
	fstp	dword [ebp-16]
	push	_504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_506
	call	_brl_blitz_NullObjectError
_506:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_508
	call	_brl_blitz_NullObjectError
_508:
	fld	dword [esi+16]
	fld	dword [_833]
	fsub	dword [ebx+12]
	fmulp	st1,st0
	fstp	dword [ebp-20]
	push	_510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_514
	call	_brl_blitz_NullObjectError
_514:
	fld	dword [esi+16]
	fld	dword [_834]
	fld	dword [ebx+12]
	fmul	dword [ebp-16]
	fsubp	st1,st0
	fmulp	st1,st0
	fstp	dword [ebp-24]
	push	_516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_518
	call	_brl_blitz_NullObjectError
_518:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_520
	call	_brl_blitz_NullObjectError
_520:
	fld	dword [esi+16]
	fld	dword [_835]
	fld	dword [ebx+12]
	fld	dword [_836]
	fsub	dword [ebp-16]
	fmulp	st1,st0
	fsubp	st1,st0
	fmulp	st1,st0
	fstp	dword [ebp-28]
	push	_522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-12]
	sub	esp,8
	fstp	qword [esp]
	call	_bbFloatToInt
	add	esp,8
	cmp	eax,0
	je	_525
	cmp	eax,1
	je	_526
	cmp	eax,2
	je	_527
	cmp	eax,3
	je	_528
	cmp	eax,4
	je	_529
	cmp	eax,5
	je	_530
	jmp	_524
_525:
	mov	eax,ebp
	push	eax
	push	_534
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_533
	call	_brl_blitz_NullObjectError
_533:
	push	dword [ebp-20]
	push	dword [ebp-28]
	push	dword [ebx+16]
	call	dword [_bb_TRGBColor+76]
	add	esp,12
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_108
_526:
	mov	eax,ebp
	push	eax
	push	_538
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_535
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_537
	call	_brl_blitz_NullObjectError
_537:
	push	dword [ebp-20]
	push	dword [ebx+16]
	push	dword [ebp-24]
	call	dword [_bb_TRGBColor+76]
	add	esp,12
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_108
_527:
	mov	eax,ebp
	push	eax
	push	_542
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_541
	call	_brl_blitz_NullObjectError
_541:
	push	dword [ebp-28]
	push	dword [ebx+16]
	push	dword [ebp-20]
	call	dword [_bb_TRGBColor+76]
	add	esp,12
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_108
_528:
	mov	eax,ebp
	push	eax
	push	_546
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_543
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_545
	call	_brl_blitz_NullObjectError
_545:
	push	dword [ebx+16]
	push	dword [ebp-24]
	push	dword [ebp-20]
	call	dword [_bb_TRGBColor+76]
	add	esp,12
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_108
_529:
	mov	eax,ebp
	push	eax
	push	_550
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_547
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_549
	call	_brl_blitz_NullObjectError
_549:
	push	dword [ebx+16]
	push	dword [ebp-20]
	push	dword [ebp-28]
	call	dword [_bb_TRGBColor+76]
	add	esp,12
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_108
_530:
	mov	eax,ebp
	push	eax
	push	_554
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_553
	call	_brl_blitz_NullObjectError
_553:
	push	dword [ebp-24]
	push	dword [ebp-20]
	push	dword [ebx+16]
	call	dword [_bb_TRGBColor+76]
	add	esp,12
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_108
_524:
	mov	ebx,_bbNullObject
	jmp	_108
_108:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_THSVColor_CMYColor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_566
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_563
	call	_brl_blitz_NullObjectError
_563:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_565
	call	_brl_blitz_NullObjectError
_565:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,eax
	jmp	_111
_111:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_THSVColor_HSVColor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_568
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_114
_114:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_THSVColor_Hue:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_572
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_571
	call	_brl_blitz_NullObjectError
_571:
	fld	dword [ebx+8]
	fstp	dword [ebp-8]
	jmp	_117
_117:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_THSVColor_Saturation:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_577
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_576
	call	_brl_blitz_NullObjectError
_576:
	fld	dword [ebx+12]
	fstp	dword [ebp-8]
	jmp	_120
_120:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_THSVColor_Value:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_582
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_581
	call	_brl_blitz_NullObjectError
_581:
	fld	dword [ebx+16]
	fstp	dword [ebp-8]
	jmp	_123
_123:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_THSVColor_CreateHSV:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_607
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fldz
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setae	al
	movzx	eax,al
	cmp	eax,0
	jne	_585
	push	ebp
	push	_587
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fadd	dword [_893]
	fstp	dword [ebp-4]
	call	dword [_bbOnDebugLeaveScope]
_585:
	push	_588
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fld	dword [_894]
	fxch	st1
	fucompp
	fnstsw	ax
	sahf
	setb	al
	movzx	eax,al
	cmp	eax,0
	jne	_589
	push	ebp
	push	_591
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	fld	dword [ebp-4]
	fsub	dword [_895]
	fstp	dword [ebp-4]
	call	dword [_bbOnDebugLeaveScope]
_589:
	push	_592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_THSVColor
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_596
	call	_brl_blitz_NullObjectError
_596:
	fld	dword [ebp-4]
	fstp	dword [ebx+8]
	push	_598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_600
	call	_brl_blitz_NullObjectError
_600:
	fld	dword [ebp-8]
	fstp	dword [ebx+12]
	push	_602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_604
	call	_brl_blitz_NullObjectError
_604:
	fld	dword [ebp-12]
	fstp	dword [ebx+16]
	push	_606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_128
_128:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_RGBColor:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	push	ebp
	push	_612
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	dword [_bb_TRGBColor+76]
	add	esp,12
	mov	ebx,eax
	jmp	_133
_133:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_CMYColor:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	push	ebp
	push	_614
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	dword [_bb_TCMYColor+72]
	add	esp,12
	mov	ebx,eax
	jmp	_138
_138:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_HSVColor:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	fld	dword [ebp+12]
	fstp	dword [ebp-8]
	fld	dword [ebp+16]
	fstp	dword [ebp-12]
	push	ebp
	push	_616
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	dword [_bb_THSVColor+72]
	add	esp,12
	mov	ebx,eax
	jmp	_143
_143:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ColorRed:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_622
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_619
	call	_brl_blitz_NullObjectError
_619:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_621
	call	_brl_blitz_NullObjectError
_621:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	fstp	dword [ebp-8]
	jmp	_146
_146:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ColorGreen:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_629
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_626
	call	_brl_blitz_NullObjectError
_626:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_628
	call	_brl_blitz_NullObjectError
_628:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	fstp	dword [ebp-8]
	jmp	_149
_149:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ColorBlue:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_636
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_633
	call	_brl_blitz_NullObjectError
_633:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_635
	call	_brl_blitz_NullObjectError
_635:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	fstp	dword [ebp-8]
	jmp	_152
_152:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ColorCyan:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_643
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_640
	call	_brl_blitz_NullObjectError
_640:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_642
	call	_brl_blitz_NullObjectError
_642:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	fstp	dword [ebp-8]
	jmp	_155
_155:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ColorMagenta:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_650
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_647
	call	_brl_blitz_NullObjectError
_647:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_649
	call	_brl_blitz_NullObjectError
_649:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	fstp	dword [ebp-8]
	jmp	_158
_158:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ColorYellow:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_657
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_654
	call	_brl_blitz_NullObjectError
_654:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_656
	call	_brl_blitz_NullObjectError
_656:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	fstp	dword [ebp-8]
	jmp	_161
_161:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ColorHue:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_664
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_659
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_661
	call	_brl_blitz_NullObjectError
_661:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_663
	call	_brl_blitz_NullObjectError
_663:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	fstp	dword [ebp-8]
	jmp	_164
_164:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ColorSaturation:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_671
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_668
	call	_brl_blitz_NullObjectError
_668:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_670
	call	_brl_blitz_NullObjectError
_670:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	fstp	dword [ebp-8]
	jmp	_167
_167:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_ColorValue:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_678
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_675
	call	_brl_blitz_NullObjectError
_675:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_677
	call	_brl_blitz_NullObjectError
_677:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	fstp	dword [ebp-8]
	jmp	_170
_170:
	call	dword [_bbOnDebugLeaveScope]
	fld	dword [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_225:
	dd	0
_211:
	db	"color",0
_212:
	db	"RED",0
_213:
	db	":TColor",0
	align	4
_bb_RED:
	dd	_bbNullObject
_214:
	db	"GREEN",0
	align	4
_bb_GREEN:
	dd	_bbNullObject
_215:
	db	"BLUE",0
	align	4
_bb_BLUE:
	dd	_bbNullObject
_216:
	db	"ORANGE",0
	align	4
_bb_ORANGE:
	dd	_bbNullObject
_217:
	db	"CYAN",0
	align	4
_bb_CYAN:
	dd	_bbNullObject
_218:
	db	"MAGENTA",0
	align	4
_bb_MAGENTA:
	dd	_bbNullObject
_219:
	db	"YELLOW",0
	align	4
_bb_YELLOW:
	dd	_bbNullObject
_220:
	db	"BLACK",0
	align	4
_bb_BLACK:
	dd	_bbNullObject
_221:
	db	"WHITE",0
	align	4
_bb_WHITE:
	dd	_bbNullObject
_222:
	db	"GRAY",0
	align	4
_bb_GRAY:
	dd	_bbNullObject
_223:
	db	"DARKGRAY",0
	align	4
_bb_DARKGRAY:
	dd	_bbNullObject
_224:
	db	"LIGHTGRAY",0
	align	4
_bb_LIGHTGRAY:
	dd	_bbNullObject
	align	4
_210:
	dd	1
	dd	_211
	dd	4
	dd	_212
	dd	_213
	dd	_bb_RED
	dd	4
	dd	_214
	dd	_213
	dd	_bb_GREEN
	dd	4
	dd	_215
	dd	_213
	dd	_bb_BLUE
	dd	4
	dd	_216
	dd	_213
	dd	_bb_ORANGE
	dd	4
	dd	_217
	dd	_213
	dd	_bb_CYAN
	dd	4
	dd	_218
	dd	_213
	dd	_bb_MAGENTA
	dd	4
	dd	_219
	dd	_213
	dd	_bb_YELLOW
	dd	4
	dd	_220
	dd	_213
	dd	_bb_BLACK
	dd	4
	dd	_221
	dd	_213
	dd	_bb_WHITE
	dd	4
	dd	_222
	dd	_213
	dd	_bb_GRAY
	dd	4
	dd	_223
	dd	_213
	dd	_bb_DARKGRAY
	dd	4
	dd	_224
	dd	_213
	dd	_bb_LIGHTGRAY
	dd	0
_173:
	db	"D:/cours/PFE/Vibz/lib/color.bmx",0
	align	4
_172:
	dd	_173
	dd	163
	dd	1
	align	4
_175:
	dd	0
	align	4
_177:
	dd	_173
	dd	164
	dd	1
	align	4
_180:
	dd	_173
	dd	165
	dd	1
	align	4
_183:
	dd	_173
	dd	167
	dd	1
	align	4
_186:
	dd	_173
	dd	169
	dd	1
	align	4
_189:
	dd	_173
	dd	170
	dd	1
	align	4
_192:
	dd	_173
	dd	171
	dd	1
	align	4
_195:
	dd	_173
	dd	173
	dd	1
	align	4
_198:
	dd	_173
	dd	174
	dd	1
	align	4
_201:
	dd	_173
	dd	175
	dd	1
	align	4
_204:
	dd	_173
	dd	176
	dd	1
	align	4
_207:
	dd	_173
	dd	177
	dd	1
_230:
	db	"New",0
_231:
	db	"Self",0
	align	4
_229:
	dd	1
	dd	_230
	dd	2
	dd	_231
	dd	_213
	dd	-4
	dd	0
_12:
	db	"TColor",0
	align	4
_11:
	dd	2
	dd	_12
	dd	0
	align	4
_bb_TColor:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_11
	dd	8
	dd	__bb_TColor_New
	dd	__bb_TColor_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_brl_blitz_NullMethodError
	dd	_brl_blitz_NullMethodError
	dd	_brl_blitz_NullMethodError
	align	4
_227:
	dd	3
	dd	0
	dd	0
	align	4
_228:
	dd	3
	dd	0
	dd	0
_235:
	db	"Delete",0
	align	4
_234:
	dd	1
	dd	_235
	dd	2
	dd	_231
	dd	_213
	dd	-4
	dd	0
	align	4
_232:
	dd	3
	dd	0
	dd	0
_249:
	db	":TRGBColor",0
	align	4
_248:
	dd	1
	dd	_230
	dd	2
	dd	_231
	dd	_249
	dd	-4
	dd	0
_14:
	db	"TRGBColor",0
_15:
	db	"_red",0
_16:
	db	"f",0
_17:
	db	"_grn",0
_18:
	db	"_blu",0
	align	4
_13:
	dd	2
	dd	_14
	dd	3
	dd	_15
	dd	_16
	dd	8
	dd	3
	dd	_17
	dd	_16
	dd	12
	dd	3
	dd	_18
	dd	_16
	dd	16
	dd	0
	align	4
_bb_TRGBColor:
	dd	_bb_TColor
	dd	_bbObjectFree
	dd	_13
	dd	20
	dd	__bb_TRGBColor_New
	dd	__bb_TRGBColor_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TRGBColor_RGBColor
	dd	__bb_TRGBColor_CMYColor
	dd	__bb_TRGBColor_HSVColor
	dd	__bb_TRGBColor_RED
	dd	__bb_TRGBColor_GREEN
	dd	__bb_TRGBColor_BLUE
	dd	__bb_TRGBColor_Set
	dd	__bb_TRGBColor_CreateRGB
	align	4
_246:
	dd	3
	dd	0
	dd	0
	align	4
_236:
	dd	_173
	dd	14
	dd	2
	align	4
_247:
	dd	3
	dd	0
	dd	0
	align	4
_252:
	dd	1
	dd	_235
	dd	2
	dd	_231
	dd	_249
	dd	-4
	dd	0
	align	4
_250:
	dd	3
	dd	0
	dd	0
_255:
	db	"RGBColor",0
	align	4
_254:
	dd	1
	dd	_255
	dd	2
	dd	_231
	dd	_249
	dd	-4
	dd	0
	align	4
_253:
	dd	_173
	dd	17
	dd	3
_264:
	db	"CMYColor",0
	align	4
_263:
	dd	1
	dd	_264
	dd	2
	dd	_231
	dd	_249
	dd	-4
	dd	0
	align	4
_256:
	dd	_173
	dd	21
	dd	3
	align	4
_709:
	dd	0x3f800000
	align	4
_710:
	dd	0x3f800000
	align	4
_711:
	dd	0x3f800000
_20:
	db	"TCMYColor",0
_21:
	db	"_cyn",0
_22:
	db	"_mag",0
_23:
	db	"_yel",0
	align	4
_19:
	dd	2
	dd	_20
	dd	3
	dd	_21
	dd	_16
	dd	8
	dd	3
	dd	_22
	dd	_16
	dd	12
	dd	3
	dd	_23
	dd	_16
	dd	16
	dd	0
	align	4
_bb_TCMYColor:
	dd	_bb_TColor
	dd	_bbObjectFree
	dd	_19
	dd	20
	dd	__bb_TCMYColor_New
	dd	__bb_TCMYColor_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TCMYColor_RGBColor
	dd	__bb_TCMYColor_CMYColor
	dd	__bb_TCMYColor_HSVColor
	dd	__bb_TCMYColor_CYAN
	dd	__bb_TCMYColor_MAGENTA
	dd	__bb_TCMYColor_YELLOW
	dd	__bb_TCMYColor_CreateCMY
_349:
	db	"HSVColor",0
_350:
	db	"hmin",0
_351:
	db	"hmax",0
_352:
	db	"hue",0
_353:
	db	"delta",0
	align	4
_348:
	dd	1
	dd	_349
	dd	2
	dd	_231
	dd	_249
	dd	-4
	dd	2
	dd	_350
	dd	_16
	dd	-8
	dd	2
	dd	_351
	dd	_16
	dd	-12
	dd	2
	dd	_352
	dd	_16
	dd	-16
	dd	2
	dd	_353
	dd	_16
	dd	-20
	dd	0
	align	4
_265:
	dd	_173
	dd	25
	dd	3
	align	4
_269:
	dd	_173
	dd	26
	dd	3
	align	4
_276:
	dd	3
	dd	0
	dd	0
	align	4
_273:
	dd	_173
	dd	26
	dd	16
	align	4
_277:
	dd	_173
	dd	27
	dd	3
	align	4
_284:
	dd	3
	dd	0
	dd	0
	align	4
_281:
	dd	_173
	dd	27
	dd	16
	align	4
_285:
	dd	_173
	dd	28
	dd	3
	align	4
_289:
	dd	_173
	dd	29
	dd	3
	align	4
_296:
	dd	3
	dd	0
	dd	0
	align	4
_293:
	dd	_173
	dd	29
	dd	16
	align	4
_297:
	dd	_173
	dd	30
	dd	3
	align	4
_304:
	dd	3
	dd	0
	dd	0
	align	4
_301:
	dd	_173
	dd	30
	dd	16
	align	4
_305:
	dd	_173
	dd	31
	dd	3
	align	4
_308:
	dd	3
	dd	0
	dd	0
	align	4
_307:
	dd	_173
	dd	31
	dd	18
_25:
	db	"THSVColor",0
_26:
	db	"_hue",0
_27:
	db	"_sat",0
_28:
	db	"_val",0
	align	4
_24:
	dd	2
	dd	_25
	dd	3
	dd	_26
	dd	_16
	dd	8
	dd	3
	dd	_27
	dd	_16
	dd	12
	dd	3
	dd	_28
	dd	_16
	dd	16
	dd	0
	align	4
_bb_THSVColor:
	dd	_bb_TColor
	dd	_bbObjectFree
	dd	_24
	dd	20
	dd	__bb_THSVColor_New
	dd	__bb_THSVColor_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_THSVColor_RGBColor
	dd	__bb_THSVColor_CMYColor
	dd	__bb_THSVColor_HSVColor
	dd	__bb_THSVColor_Hue
	dd	__bb_THSVColor_Saturation
	dd	__bb_THSVColor_Value
	dd	__bb_THSVColor_CreateHSV
	align	4
_309:
	dd	_173
	dd	32
	dd	3
	align	4
_312:
	dd	_173
	dd	33
	dd	3
	align	4
_329:
	dd	3
	dd	0
	dd	0
	align	4
_324:
	dd	_173
	dd	34
	dd	13
	align	4
_335:
	dd	3
	dd	0
	dd	0
	align	4
_330:
	dd	_173
	dd	35
	dd	13
	align	4
_718:
	dd	0x40000000
	align	4
_341:
	dd	3
	dd	0
	dd	0
	align	4
_336:
	dd	_173
	dd	36
	dd	13
	align	4
_719:
	dd	0x40800000
	align	4
_342:
	dd	_173
	dd	38
	dd	3
	align	4
_720:
	dd	0x42700000
	align	4
_343:
	dd	_173
	dd	39
	dd	3
	align	4
_346:
	dd	3
	dd	0
	dd	0
	align	4
_345:
	dd	_173
	dd	39
	dd	12
	align	4
_721:
	dd	0x43b40000
	align	4
_347:
	dd	_173
	dd	40
	dd	3
	align	4
_357:
	dd	1
	dd	_212
	dd	2
	dd	_231
	dd	_249
	dd	-4
	dd	0
	align	4
_354:
	dd	_173
	dd	44
	dd	3
	align	4
_361:
	dd	1
	dd	_214
	dd	2
	dd	_231
	dd	_249
	dd	-4
	dd	0
	align	4
_358:
	dd	_173
	dd	48
	dd	3
	align	4
_365:
	dd	1
	dd	_215
	dd	2
	dd	_231
	dd	_249
	dd	-4
	dd	0
	align	4
_362:
	dd	_173
	dd	52
	dd	3
_379:
	db	"Set",0
_380:
	db	"r",0
_381:
	db	"g",0
_382:
	db	"b",0
	align	4
_378:
	dd	1
	dd	_379
	dd	2
	dd	_231
	dd	_249
	dd	-4
	dd	2
	dd	_380
	dd	_16
	dd	-8
	dd	2
	dd	_381
	dd	_16
	dd	-12
	dd	2
	dd	_382
	dd	_16
	dd	-16
	dd	0
	align	4
_366:
	dd	_173
	dd	56
	dd	3
	align	4
_370:
	dd	_173
	dd	57
	dd	3
	align	4
_374:
	dd	_173
	dd	58
	dd	3
_399:
	db	"CreateRGB",0
_400:
	db	"grn",0
_401:
	db	"blu",0
	align	4
_398:
	dd	1
	dd	_399
	dd	2
	dd	_212
	dd	_16
	dd	-4
	dd	2
	dd	_400
	dd	_16
	dd	-8
	dd	2
	dd	_401
	dd	_16
	dd	-12
	dd	2
	dd	_211
	dd	_249
	dd	-16
	dd	0
	align	4
_383:
	dd	_173
	dd	62
	dd	3
	align	4
_385:
	dd	_173
	dd	63
	dd	3
	align	4
_389:
	dd	_173
	dd	64
	dd	3
	align	4
_393:
	dd	_173
	dd	65
	dd	3
	align	4
_397:
	dd	_173
	dd	66
	dd	3
_415:
	db	":TCMYColor",0
	align	4
_414:
	dd	1
	dd	_230
	dd	2
	dd	_231
	dd	_415
	dd	-4
	dd	0
	align	4
_412:
	dd	3
	dd	0
	dd	0
	align	4
_402:
	dd	_173
	dd	73
	dd	2
	align	4
_413:
	dd	3
	dd	0
	dd	0
	align	4
_418:
	dd	1
	dd	_235
	dd	2
	dd	_231
	dd	_415
	dd	-4
	dd	0
	align	4
_416:
	dd	3
	dd	0
	dd	0
	align	4
_426:
	dd	1
	dd	_255
	dd	2
	dd	_231
	dd	_415
	dd	-4
	dd	0
	align	4
_419:
	dd	_173
	dd	76
	dd	3
	align	4
_787:
	dd	0x3f800000
	align	4
_788:
	dd	0x3f800000
	align	4
_789:
	dd	0x3f800000
	align	4
_428:
	dd	1
	dd	_264
	dd	2
	dd	_231
	dd	_415
	dd	-4
	dd	0
	align	4
_427:
	dd	_173
	dd	80
	dd	3
	align	4
_434:
	dd	1
	dd	_349
	dd	2
	dd	_231
	dd	_415
	dd	-4
	dd	0
	align	4
_429:
	dd	_173
	dd	84
	dd	3
	align	4
_438:
	dd	1
	dd	_217
	dd	2
	dd	_231
	dd	_415
	dd	-4
	dd	0
	align	4
_435:
	dd	_173
	dd	88
	dd	3
	align	4
_442:
	dd	1
	dd	_218
	dd	2
	dd	_231
	dd	_415
	dd	-4
	dd	0
	align	4
_439:
	dd	_173
	dd	92
	dd	3
	align	4
_446:
	dd	1
	dd	_219
	dd	2
	dd	_231
	dd	_415
	dd	-4
	dd	0
	align	4
_443:
	dd	_173
	dd	96
	dd	3
_463:
	db	"CreateCMY",0
_464:
	db	"cyn",0
_465:
	db	"mag",0
_466:
	db	"yel",0
	align	4
_462:
	dd	1
	dd	_463
	dd	2
	dd	_464
	dd	_16
	dd	-4
	dd	2
	dd	_465
	dd	_16
	dd	-8
	dd	2
	dd	_466
	dd	_16
	dd	-12
	dd	2
	dd	_211
	dd	_415
	dd	-16
	dd	0
	align	4
_447:
	dd	_173
	dd	100
	dd	3
	align	4
_449:
	dd	_173
	dd	101
	dd	3
	align	4
_453:
	dd	_173
	dd	102
	dd	3
	align	4
_457:
	dd	_173
	dd	103
	dd	3
	align	4
_461:
	dd	_173
	dd	104
	dd	3
_480:
	db	":THSVColor",0
	align	4
_479:
	dd	1
	dd	_230
	dd	2
	dd	_231
	dd	_480
	dd	-4
	dd	0
	align	4
_477:
	dd	3
	dd	0
	dd	0
	align	4
_467:
	dd	_173
	dd	111
	dd	2
	align	4
_478:
	dd	3
	dd	0
	dd	0
	align	4
_483:
	dd	1
	dd	_235
	dd	2
	dd	_231
	dd	_480
	dd	-4
	dd	0
	align	4
_481:
	dd	3
	dd	0
	dd	0
_556:
	db	"h",0
_557:
	db	"i",0
_558:
	db	"p",0
_559:
	db	"q",0
_560:
	db	"t",0
	align	4
_555:
	dd	1
	dd	_255
	dd	2
	dd	_231
	dd	_480
	dd	-4
	dd	2
	dd	_556
	dd	_16
	dd	-8
	dd	2
	dd	_557
	dd	_16
	dd	-12
	dd	2
	dd	_16
	dd	_16
	dd	-16
	dd	2
	dd	_558
	dd	_16
	dd	-20
	dd	2
	dd	_559
	dd	_16
	dd	-24
	dd	2
	dd	_560
	dd	_16
	dd	-28
	dd	0
	align	4
_484:
	dd	_173
	dd	114
	dd	3
	align	4
_495:
	dd	3
	dd	0
	dd	0
	align	4
_488:
	dd	_173
	dd	114
	dd	14
	align	4
_496:
	dd	_173
	dd	115
	dd	3
	align	4
_832:
	dd	0x42700000
	align	4
_500:
	dd	_173
	dd	116
	dd	3
	align	4
_502:
	dd	_173
	dd	117
	dd	3
	align	4
_504:
	dd	_173
	dd	118
	dd	3
	align	4
_833:
	dd	0x3f800000
	align	4
_510:
	dd	_173
	dd	119
	dd	3
	align	4
_834:
	dd	0x3f800000
	align	4
_516:
	dd	_173
	dd	120
	dd	3
	align	4
_835:
	dd	0x3f800000
	align	4
_836:
	dd	0x3f800000
	align	4
_522:
	dd	_173
	dd	121
	dd	3
	align	4
_534:
	dd	3
	dd	0
	dd	0
	align	4
_531:
	dd	_173
	dd	122
	dd	10
	align	4
_538:
	dd	3
	dd	0
	dd	0
	align	4
_535:
	dd	_173
	dd	123
	dd	10
	align	4
_542:
	dd	3
	dd	0
	dd	0
	align	4
_539:
	dd	_173
	dd	124
	dd	10
	align	4
_546:
	dd	3
	dd	0
	dd	0
	align	4
_543:
	dd	_173
	dd	125
	dd	10
	align	4
_550:
	dd	3
	dd	0
	dd	0
	align	4
_547:
	dd	_173
	dd	126
	dd	10
	align	4
_554:
	dd	3
	dd	0
	dd	0
	align	4
_551:
	dd	_173
	dd	127
	dd	10
	align	4
_566:
	dd	1
	dd	_264
	dd	2
	dd	_231
	dd	_480
	dd	-4
	dd	0
	align	4
_561:
	dd	_173
	dd	132
	dd	3
	align	4
_568:
	dd	1
	dd	_349
	dd	2
	dd	_231
	dd	_480
	dd	-4
	dd	0
	align	4
_567:
	dd	_173
	dd	136
	dd	3
_573:
	db	"Hue",0
	align	4
_572:
	dd	1
	dd	_573
	dd	2
	dd	_231
	dd	_480
	dd	-4
	dd	0
	align	4
_569:
	dd	_173
	dd	140
	dd	3
_578:
	db	"Saturation",0
	align	4
_577:
	dd	1
	dd	_578
	dd	2
	dd	_231
	dd	_480
	dd	-4
	dd	0
	align	4
_574:
	dd	_173
	dd	144
	dd	3
_583:
	db	"Value",0
	align	4
_582:
	dd	1
	dd	_583
	dd	2
	dd	_231
	dd	_480
	dd	-4
	dd	0
	align	4
_579:
	dd	_173
	dd	148
	dd	3
_608:
	db	"CreateHSV",0
_609:
	db	"sat",0
_610:
	db	"val",0
	align	4
_607:
	dd	1
	dd	_608
	dd	2
	dd	_352
	dd	_16
	dd	-4
	dd	2
	dd	_609
	dd	_16
	dd	-8
	dd	2
	dd	_610
	dd	_16
	dd	-12
	dd	2
	dd	_211
	dd	_480
	dd	-16
	dd	0
	align	4
_584:
	dd	_173
	dd	152
	dd	3
	align	4
_587:
	dd	3
	dd	0
	dd	0
	align	4
_586:
	dd	_173
	dd	152
	dd	12
	align	4
_893:
	dd	0x43b40000
	align	4
_588:
	dd	_173
	dd	153
	dd	3
	align	4
_894:
	dd	0x43b40000
	align	4
_591:
	dd	3
	dd	0
	dd	0
	align	4
_590:
	dd	_173
	dd	153
	dd	15
	align	4
_895:
	dd	0x43b40000
	align	4
_592:
	dd	_173
	dd	154
	dd	3
	align	4
_594:
	dd	_173
	dd	155
	dd	3
	align	4
_598:
	dd	_173
	dd	156
	dd	3
	align	4
_602:
	dd	_173
	dd	157
	dd	3
	align	4
_606:
	dd	_173
	dd	158
	dd	3
	align	4
_612:
	dd	1
	dd	_255
	dd	2
	dd	_212
	dd	_16
	dd	-4
	dd	2
	dd	_400
	dd	_16
	dd	-8
	dd	2
	dd	_401
	dd	_16
	dd	-12
	dd	0
	align	4
_611:
	dd	_173
	dd	185
	dd	2
	align	4
_614:
	dd	1
	dd	_264
	dd	2
	dd	_464
	dd	_16
	dd	-4
	dd	2
	dd	_465
	dd	_16
	dd	-8
	dd	2
	dd	_466
	dd	_16
	dd	-12
	dd	0
	align	4
_613:
	dd	_173
	dd	194
	dd	2
	align	4
_616:
	dd	1
	dd	_349
	dd	2
	dd	_352
	dd	_16
	dd	-4
	dd	2
	dd	_609
	dd	_16
	dd	-8
	dd	2
	dd	_610
	dd	_16
	dd	-12
	dd	0
	align	4
_615:
	dd	_173
	dd	203
	dd	2
_623:
	db	"ColorRed",0
	align	4
_622:
	dd	1
	dd	_623
	dd	2
	dd	_211
	dd	_213
	dd	-4
	dd	0
	align	4
_617:
	dd	_173
	dd	211
	dd	2
_630:
	db	"ColorGreen",0
	align	4
_629:
	dd	1
	dd	_630
	dd	2
	dd	_211
	dd	_213
	dd	-4
	dd	0
	align	4
_624:
	dd	_173
	dd	219
	dd	2
_637:
	db	"ColorBlue",0
	align	4
_636:
	dd	1
	dd	_637
	dd	2
	dd	_211
	dd	_213
	dd	-4
	dd	0
	align	4
_631:
	dd	_173
	dd	227
	dd	2
_644:
	db	"ColorCyan",0
	align	4
_643:
	dd	1
	dd	_644
	dd	2
	dd	_211
	dd	_213
	dd	-4
	dd	0
	align	4
_638:
	dd	_173
	dd	235
	dd	2
_651:
	db	"ColorMagenta",0
	align	4
_650:
	dd	1
	dd	_651
	dd	2
	dd	_211
	dd	_213
	dd	-4
	dd	0
	align	4
_645:
	dd	_173
	dd	243
	dd	2
_658:
	db	"ColorYellow",0
	align	4
_657:
	dd	1
	dd	_658
	dd	2
	dd	_211
	dd	_213
	dd	-4
	dd	0
	align	4
_652:
	dd	_173
	dd	251
	dd	2
_665:
	db	"ColorHue",0
	align	4
_664:
	dd	1
	dd	_665
	dd	2
	dd	_211
	dd	_213
	dd	-4
	dd	0
	align	4
_659:
	dd	_173
	dd	259
	dd	2
_672:
	db	"ColorSaturation",0
	align	4
_671:
	dd	1
	dd	_672
	dd	2
	dd	_211
	dd	_213
	dd	-4
	dd	0
	align	4
_666:
	dd	_173
	dd	267
	dd	2
_679:
	db	"ColorValue",0
	align	4
_678:
	dd	1
	dd	_679
	dd	2
	dd	_211
	dd	_213
	dd	-4
	dd	0
	align	4
_673:
	dd	_173
	dd	275
	dd	2
