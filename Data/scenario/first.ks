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
@startanchor
@bg storage=home_of_Baedela time = 2000 method = crossfade
@wt
@font size=32
@nowait
@locate x=120 y=180
@link storage=Collapsed_1_Carcass_City.ks target=*scenario
����Ϸ
@endlink
@locate x=120 y=250
@link exp="kag.close()"
������Ϸ
@endlink
@resetfont
@endnowait
@clickskip enabled=true
@s