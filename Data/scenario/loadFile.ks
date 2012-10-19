*rightButtonMenu
@backlay
@eval exp='getdate()'
@position layer=message3 page=fore visible=true opacity=0 top=0 height=1200 left=0 width=1600 marginl=0 margint=0 marginr=0 marginb=0 frame=''
@layopt layer=message3 page=fore visible=true
@current layer=message3 page=fore
@er
@locate x=800 y=164

*dsys
@move layer=message3 time=80 path='(-522,0,255)'
@wm
@move layer=message3 time=600 path='(0,0,255)'
@wm
@rclick call=true target=*rightButtonMenu enabled=true
@current layer=message3 page=fore
@return