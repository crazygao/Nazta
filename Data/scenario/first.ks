*start
*logo
@menul
@wait time = 1000

[if exp="sf.start == 0"]
@eval exp="sf.start = 1"
@eval exp="sf.sevol = 70"
@eval exp="sf.bgmvol = 70"
@eval exp="sf.speed = 70"
@eval exp="sf.window = 1"
@eval exp="sf.cg=[]"
[endif]


*menu
@clickskip enabled=false
@startanchor
@menul
@bg storage=home_of_Baedela time=2000
@wait time=100
@font size=32
@nowait
@locate x=120 y=180
@link storage=Collapsed_1_Carcass_City.ks target=*scenario
新游戏
@endlink
@locate x=120 y=250
@link exp="kag.close()"
结束游戏
@endlink
@resetfont
@endnowait
@clickskip enabled=true
@s