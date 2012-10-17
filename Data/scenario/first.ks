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
@button normal=Load_Game.png target=*cg clickse='l1' enterse='l4' recthit=true
@locate x=120 y=390
@button normal=Exit_Game.png target=*exitgame clickse='l1' enterse='l4' recthit=true
@resetfont
@endnowait
@clickskip enabled=true
@s

*loadgame


*cg
@rclick enabled=true
@freeimage layer=2 page=back
@freeimage layer=3 page=back
@freeimage layer=4 page=back
@freeimage layer=5 page=back
@freeimage layer=6 page=back
@freeimage layer=7 page=back
@image layer=base page=back storage="black_800_600" visible=true left=0 top=0 opacity=255
[position layer=message1 page=back visible=true opacity=0 top=0 height=600 left=0 width=800 margnl=0 margint=0 marginr=0 marginb=0 frame=""]
[current layer=message1 page=back]
[er]
;should be a loop here
@locate x=50 y=50
@button graphic=cg_1_100_75 target=*cg_1 clickse="l1" enterse="l4" recthit=true exp="tf.temp=1"
@locate x=450 y=50
@button graphic=cg_2_100_75 target=*cg_1 clickse="l1" enterse="l4" recthit=true exp="tf.temp=2"
@trans method=universal rule="6" vague=10 time=500
@wt
@s

*cg_1
[current layer=message1 page=back][er]
@position layer=message1 visible=true opacity=0 top=0 height=600 left=0 width=800 marginl=0 margint=0 marginr =0 marginb=0 page=back frame="City_of_Sallude_800_600" cond="tf.temp==1"
@position layer=message1 visible=true opacity=0 top=0 height=600 left=0 width=800 marginl=0 margint=0 marginr =0 marginb=0 page=back frame="City_of_Sallude_Avenue_800_600" cond="tf.temp==2"
@trans method=universal rule="5" vague=10 time=500
@wt
@rclick jump=true target=*cg storage=first.ks enable=true
@s

*exitgame
@eval exp="kag.close()"
@jump *menu