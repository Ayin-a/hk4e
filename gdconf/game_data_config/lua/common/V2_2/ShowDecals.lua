--[[
--V2_2/ShowDecals
defs = {
	time_axis_decal = {0.2,0.4,0.6,0.8,1}, --decal出现的时间，不用改
	decalsList = {}--decal出现的configID，按顺序填
}
]]--
local Triggers_ShowDecals = {
	[1] = { name = "variable_change",config_id = 9000801, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0 },
	[2] = { name = "time_axis_pass", config_id = 9000802, event = EventType.EVENT_TIME_AXIS_PASS, source = "",condition = "",action = "action_time_axis_pass",trigger_count= 0},

}

--group的状态发生变化时开始按顺序刷Decal
function action_variable_change( context,evt )
	local var_name = evt.source_name
	local value_new = evt.param1
	if var_name == "isNeedNotify" then
		ScriptLib.InitTimeAxis(context, "decals", defs.time_axis_decal, false)
	end
	return 0
end

function action_time_axis_pass(context, evt)
	if evt.source_name == "decals" then
		ScriptLib.CreateGadget(context, { config_id = defs.decalsList[evt.param1] })
		if evt.param1 == #defs.time_axis_decal then
			ScriptLib.EndTimeAxis(context, "decals")
		end
	end	
	return 0
end

function Initialize_ShowDecals()
	for k,v in pairs(Triggers_ShowDecals) do
		table.insert(triggers, v)
		for k_,v_ in pairs(suites) do
			table.insert(v_.triggers, v.name)
		end
	end
	return 0
end

Initialize_ShowDecals()