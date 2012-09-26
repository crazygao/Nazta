*start
[cm]

@loadplugin module = wuvorbis.dll
@loadplugin module = extrans.dll

@laycount layers = 30
@laycount messages = "12"

@defstyle linespacing = 10 pitch = 0 linesize = 4
@deffont size = 22

; Marco Definitions

@macro name = systemSettings
	[seopt volume = &sf.sevol]
	[bgmopt volume = &sf.bgmvol]
	[delay speed = &sf.speed]
	[eval exp = "kag.onFullScreenMenuItemClick(kag)" cond = "sf.window == 0"]
	[eval exp = "kag.onWindowedMenuItemClick(kag)" cond = "sf.window == 1"]
@endmacro
[return]