-- --ServerUploadTool Save to [/root/env/data/lua/common/V3_1]
-- --[[
-- =====================================================================================================================
-- ||	Filename 	  ||	RotateStair
-- ||	RelVersion    ||	3.1
-- ||	Owner         ||	xudong.sun
-- ||	Description   ||	3.1旋转台阶
-- ||	LogName       ||    ## RotateStair_LOG
-- ||	Protection    ||	
-- =====================================================================================================================
-- local stairConfigID = 0
-- local turnOption = 0 
-- local cystalConfigID = 0

-- local operator_stair = {
-- 	[gadgetstate] = {stairconfigID, stairconfigID},
-- 	[gadgetstate] = {stairconfigID, stairconfigID},
-- }

-- =======================================================================================]]

-- local extrTriggers = {
-- 	initialtrigger = {
-- 		["Option_Down"] = { config_id = 80000001, name = "Option_Down", event= EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_option_down", trigger_count = 0},
-- 		["Group_Load"] = { config_id = 80000002, name = "Group_Load", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
-- 		["Time_Axis"] = { config_id = 80000003, name = "Time_Axis", event= EventType.EVENT_TIME_AXIS_PASS, source = "DelaySetOption", condition = "", action = "action_time_axis", trigger_count = 0},
-- 	}
-- }

-- function action_group_load( context, evt )

-- 	ScriptLib.SetWorktopOptionsByGroupId(context, 0, cystalConfigID, {turnOption})

-- 	return 0
-- end

-- function action_option_down( context, evt )
-- 	if evt.param2 == turnOption then

-- 		for i,v in ipairs(operator_stair[ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1)]) do
-- 			local curState = ScriptLib.GetGadgetStateByConfigId(context, 0, v)
-- 			local nextState = curState - 1
-- 			if nextState < 201 then
-- 				nextState = 204
-- 			end

-- 			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, nextState)
-- 		end

-- 		ScriptLib.DelWorktopOption(context, turnOption)
-- 		ScriptLib.InitTimeAxis(context, "DelaySetOption", {1}, false)

-- 		ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_SET_LIGHT", 1)

-- 	end

-- 	return 0
-- end

-- function action_time_axis( context, evt)
-- 	ScriptLib.SetWorktopOptionsByGroupId(context, 0, cystalConfigID, {turnOption})
-- 	ScriptLib.SetEntityServerGlobalValueByConfigId(context, cystalConfigID, "SGV_SET_LIGHT", 0)
-- 	return 0
-- end




-- function LF_Initialize_Group()
-- 	for k,v in pairs(extrTriggers.initialtrigger) do
-- 		table.insert(triggers, v)
-- 		table.insert(suites[init_config.suite].triggers, v.name)
-- 	end

-- 	return 0
-- end

-- LF_Initialize_Group()