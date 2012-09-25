*start
[cm]

@loadplugin module = wuvorbis.dll
@loadplugin module = extrans.dll

@laycount layers = 30
@laycount messages = "12"

@defstyle linespacing = 10 pitch = 0 linesize = 4
@deffont size = 22

; Marco Definitions

@macro name = defaultLoadImage
	@image layer = 25 page = back storage = %storage visible = true left = %left
@endmacro

@macro name = timeFunc
	@image layer = 25 page
@endmacro

@macro name = systemSettings
	[seopt volume = &sf.sevol]
	[bgmopt volume = &sf.bgmvol]
	[delay speed = &sf.speed]
	[eval exp = "kag.onFullScreenMenuItemClick(kag)" cond = "sf.window == 0"]
	[eval exp = "kag.onwindowedMenuItemClick(kag)" cond = "sf.window == 1"]
@endmacro

@macro name = rightButtonMenu
	[backlay]
	@image layer = 24 page = fore storage = "rightButtonMenu" visible = true left = 57 top = 600 opacity = 255
	@move layer = 24 time = 300 path = (57, 430, 255)
	@move layer = 17 time = 100 path = (57, 469, 255)
	[wait time = 120]
	[rclick call = true target = *rightButtonMenu storage = "assets" enabled = ture]
	[position layer = message0 left = 100 top = 470 width = 661 height = 100 marginl = 0 margint = 0 marginr = 0 marginb = 0 opacity = 0 visible = true]
	[layopt layer = message0 visible = true page = fore index = 240006]
	[eval exp = "f.savecan = 1"]
@endmacro