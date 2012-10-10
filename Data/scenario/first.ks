*start
*logo
@menul
@wait time = 1000

@call storage = evManage.ks
[if exp="sf.start == 0"]
	@eval exp="sf.start = 1"
	@eval exp="sf.sevol = 70"
	@eval exp="sf.bgmvol = 70"
	@eval exp="sf.speed = 70"
	@eval exp="sf.window = 1"
	@eval exp="sf.cg=[]"
	@eval exp="sf.cg=[]"
[endif]
@systemSettings

*menu
@clickskip enabled = false
@rclick enabled = false
[backlay]
@image layer=base page=back storage=home_of_Baedela visible=true left=0 top=0 opacity=255
@trans time = 2000 method = crossfade layer = base
@wt
@font size=32
@nowait
@locate x=120 y=180
@button normal=New_Game.png target=*scenario storage=Collapsed_1_Carcass_City.ks clickse='l1' enterse='l4' recthit=true
@locate x=120 y=250
@button normal=Load_Game.png target=*scenario storage=Collapsed_1_Carcass_City.ks clickse='l1' enterse='l4' recthit=true
@locate x=120 y=320
@button normal=Exit_Game.png exp="exitgame" clickse='l1' enterse='l4' recthit=true
@resetfont
@endnowait
@clickskip enabled=true
@s

*exitgame


