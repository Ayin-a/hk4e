local retransTriggers = {
	initialtrigger = {
		--["Gallery_Start"] = {name = "Gallery_Start", config_id = 8000001, event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_gallery_start", trigger_count = 0},
		--["Gallery_Stop"] = {name = "Gallery_Start", config_id = 8000002, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
		["Time_Axis_ReTrans"] = {name = "Time_Axis_ReTrans", config_id = 5001003, event = EventType.EVENT_TIME_AXIS_PASS, source = "retranstimer", condition = "", action = "action_time_axis_retrans", trigger_count = 0}
	}
}


function StartReTransCheck( context, prev_context )
	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : ReCheck TimeAxis Start")
	ScriptLib.InitTimeAxis(context, "retranstimer", {10}, true)

	return 0
end

function StopReTransCheck( context, prev_context )
	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : ReCheck TimeAxis Stop")
	ScriptLib.EndTimeAxis(context, "retranstimer")

	return 0
end

function action_time_axis_retrans( context, evt )
	local UidList = ScriptLib.GetSceneUidList(context)
	local CenterPoint = regions[regionIndex].pos
	local CenterSize = regions[regionIndex].size

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : ReCheck Triggered")

	for i,v in ipairs(UidList) do	
		local PlayerPos = ScriptLib.GetPosByEntityId(context, ScriptLib.GetAvatarEntityIdByUid(context, v))
		if math.abs(PlayerPos.x - CenterPoint.x) > (CenterSize.x/2) or math.abs(PlayerPos.y - CenterPoint.y) > (CenterSize.y/2) or math.abs(PlayerPos.z - CenterPoint.z) > (CenterSize.z/2) then
			ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Player "..v.." ReTrans")
			ScriptLib.ExecuteGroupLua(context, 235800001, "ReTrans", {v})
		end
	end

	return 0
end

function ReTransInitialize_Group()
	for k,v in pairs(retransTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	return 0
end

ReTransInitialize_Group()