import brl.blitz
import brl.appstub
import brl.audio
import brl.bank
import brl.bankstream
import brl.basic
import brl.bmploader
import brl.cocoamaxgui
import brl.d3d7max2d
import brl.eventqueue
import brl.fltkmaxgui
import brl.freeaudioaudio
import brl.freetypefont
import brl.gnet
import brl.jpgloader
import brl.maxgui
import brl.maxutil
import brl.oggloader
import brl.pngloader
import brl.retro
import brl.tgaloader
import brl.timer
import brl.wavloader
import brl.win32maxgui
import pub.freejoy
import pub.freeprocess
import pub.glew
import pub.lua
import pub.luascript
TColor^Object{
-New%()="_bb_TColor_New"
-Delete%()="_bb_TColor_Delete"
-RGBColor:TRGBColor()A="brl_blitz_NullMethodError"
-CMYColor:TCMYColor()A="brl_blitz_NullMethodError"
-HSVColor:THSVColor()A="brl_blitz_NullMethodError"
}A="bb_TColor"
TRGBColor^TColor{
._red#&
._grn#&
._blu#&
-New%()="_bb_TRGBColor_New"
-Delete%()="_bb_TRGBColor_Delete"
-RGBColor:TRGBColor()="_bb_TRGBColor_RGBColor"
-CMYColor:TCMYColor()="_bb_TRGBColor_CMYColor"
-HSVColor:THSVColor()="_bb_TRGBColor_HSVColor"
-RED#()="_bb_TRGBColor_RED"
-GREEN#()="_bb_TRGBColor_GREEN"
-BLUE#()="_bb_TRGBColor_BLUE"
-Set%(r#,g#,b#)="_bb_TRGBColor_Set"
+CreateRGB:TRGBColor(RED#,grn#,blu#)="_bb_TRGBColor_CreateRGB"
}="bb_TRGBColor"
TCMYColor^TColor{
._cyn#&
._mag#&
._yel#&
-New%()="_bb_TCMYColor_New"
-Delete%()="_bb_TCMYColor_Delete"
-RGBColor:TRGBColor()="_bb_TCMYColor_RGBColor"
-CMYColor:TCMYColor()="_bb_TCMYColor_CMYColor"
-HSVColor:THSVColor()="_bb_TCMYColor_HSVColor"
-CYAN#()="_bb_TCMYColor_CYAN"
-MAGENTA#()="_bb_TCMYColor_MAGENTA"
-YELLOW#()="_bb_TCMYColor_YELLOW"
+CreateCMY:TCMYColor(cyn#,mag#,yel#)="_bb_TCMYColor_CreateCMY"
}="bb_TCMYColor"
THSVColor^TColor{
._hue#&
._sat#&
._val#&
-New%()="_bb_THSVColor_New"
-Delete%()="_bb_THSVColor_Delete"
-RGBColor:TRGBColor()="_bb_THSVColor_RGBColor"
-CMYColor:TCMYColor()="_bb_THSVColor_CMYColor"
-HSVColor:THSVColor()="_bb_THSVColor_HSVColor"
-Hue#()="_bb_THSVColor_Hue"
-Saturation#()="_bb_THSVColor_Saturation"
-Value#()="_bb_THSVColor_Value"
+CreateHSV:THSVColor(hue#,sat#,val#)="_bb_THSVColor_CreateHSV"
}="bb_THSVColor"
RGBColor:TRGBColor(RED#,grn#,blu#)="bb_RGBColor"
CMYColor:TCMYColor(cyn#,mag#,yel#)="bb_CMYColor"
HSVColor:THSVColor(hue#,sat#,val#)="bb_HSVColor"
ColorRed#(color:TColor)="bb_ColorRed"
ColorGreen#(color:TColor)="bb_ColorGreen"
ColorBlue#(color:TColor)="bb_ColorBlue"
ColorCyan#(color:TColor)="bb_ColorCyan"
ColorMagenta#(color:TColor)="bb_ColorMagenta"
ColorYellow#(color:TColor)="bb_ColorYellow"
ColorHue#(color:TColor)="bb_ColorHue"
ColorSaturation#(color:TColor)="bb_ColorSaturation"
ColorValue#(color:TColor)="bb_ColorValue"
RED:TColor&=mem:p("bb_RED")
GREEN:TColor&=mem:p("bb_GREEN")
BLUE:TColor&=mem:p("bb_BLUE")
ORANGE:TColor&=mem:p("bb_ORANGE")
CYAN:TColor&=mem:p("bb_CYAN")
MAGENTA:TColor&=mem:p("bb_MAGENTA")
YELLOW:TColor&=mem:p("bb_YELLOW")
BLACK:TColor&=mem:p("bb_BLACK")
WHITE:TColor&=mem:p("bb_WHITE")
GRAY:TColor&=mem:p("bb_GRAY")
DARKGRAY:TColor&=mem:p("bb_DARKGRAY")
LIGHTGRAY:TColor&=mem:p("bb_LIGHTGRAY")
