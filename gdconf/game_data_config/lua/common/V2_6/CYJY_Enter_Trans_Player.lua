--传送玩家到scene6
function SLC_Try_Trans_Player(context)
	ScriptLib.TransPlayerToPos(context, {uid_list = {context.uid}, pos = {x=1021, y= 1086, z=880}, radius = 2, rot = {x=0, y=250.4503, z=0},scene_id=6}) 
	return 0
end