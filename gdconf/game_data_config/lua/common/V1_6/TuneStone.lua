--[[
local defs = {
	gadget_up = 1,						--向上压板
	gadget_down = 2,					--向下压板
	gadget_water = 7001,				--水片
	point_array  = 400100010,			
	point_list = {1,2,3,4,5},
	gadget_list = {1,2,3,4,5},			--刻痕
	point_xz = {x=100,z=100},			--point坐标
	point_y = {100,110,120,130,140},	--point坐标
	start_level = 3,					--初始水位
	is_abnormal = 0,
	abnormal_height = 90,				--上涨高度
}
--]]
-------------------
local Tri = {
	[1] = { name = "gadget_state_change", config_id = 8000001, event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadget_state_change", trigger_count = 0 },
	[2] = { name = "platform_reach_point", config_id = 8000002, event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "", action = "action_platform_reach_point", trigger_count = 0 },
	[3] = { name = "group_load", config_id = 8000003, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	[4] = { name = "group_refresh", config_id = 8000004, event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_group_refresh", trigger_count = 0 },
	[5] = { name = "variable_change", config_id = 8000005, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0 }
}

local Var = {
	[1] = { config_id=50000001,name = "Water_Level", value = 0, no_refresh = true },
	[2] = { config_id=50000002,name = "tune", value = 0, no_refresh = true },
	[3] = { config_id=50000003,name = "first_play", value = 1, no_refresh = true },
}

function Initialize()
	for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	for k,v in pairs(Var) do
		table.insert(variables, v)
	end
end
--------------------------------------
function action_gadget_state_change(context, evt)
	ScriptLib.PrintContextLog(context, "## TuneStone : State_Change : "..evt.param2.." | "..evt.param3.." -> "..evt.param1)
	if evt.param1 == 201 and evt.param3 == 0 then
		local water = ScriptLib.GetGroupVariableValue(context, "Water_Level")
		if evt.param2 == defs.gadget_up then
			if water < #defs.point_list and 0 == ScriptLib.GetGroupTempValue(context, "motion", {}) then
				LF_Modify_Water(context, water, 1)
			end
		elseif evt.param2 == defs.gadget_down and 0 == ScriptLib.GetGroupTempValue(context, "motion", {}) then
			if water > 1 then
				LF_Modify_Water(context, water, -1)
			end
		end
	--elseif evt.param1 == 0 and evt.param3 == 201 then
	--	if evt.param2 == defs.gadget_up or evt.param2 == defs.gadget_down then
	--		LF_Check_Water_To_Motion(context, evt)
	--	end
	end
	return 0
end

function action_platform_reach_point(context, evt)
	ScriptLib.PrintContextLog(context, "## TuneStone : Reach_Point | "..evt.param1.." | "..evt.param2)
	local water = ScriptLib.GetGroupVariableValue(context, "Water_Level")
	ScriptLib.ScenePlaySound(context, {play_pos = defs.audio_xyz, sound_name = defs.audio_list[water], play_type=1, is_broadcast=true})	
	ScriptLib.SetGroupTempValue(context, "motion", 0, {})
	--if evt.param1 == defs.gadget_water then
	--	LF_Check_Water_To_Motion(context, evt)
	--end
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_list[water], 201)
	ScriptLib.SetGroupVariableValue(context, "tune", water)
	return 0
end

function action_group_load(context, evt)
	ScriptLib.PrintContextLog(context, "## TuneStone : Group_Load")
	LF_Init_Water(context, evt)
	return 0
end

function action_group_refresh(context, evt)
	ScriptLib.PrintContextLog(context, "## TuneStone : Group_Refresh")
	LF_Init_Water(context, evt)
	return 0
end

function action_variable_change(context, evt)
	if evt.param1 == evt.param2 then
		return -1
	end
	ScriptLib.PrintContextLog(context, "## TuneStone : Variable : "..evt.source_name.." : "..evt.param2.." -> "..evt.param1)
	return 0
end

function LF_Init_Water(context, evt)
	ScriptLib.PrintContextLog(context, "## TuneStone : LF_Init_Water")
	--根据存档还原水位
	local water = ScriptLib.GetGroupVariableValue(context, "Water_Level")
	local pos = defs.point_xz
	if defs.is_abnormal == 1 and 1 == ScriptLib.GetGroupVariableValue(context, "first_play") then
		pos.y = defs.abnormal_height
		ScriptLib.CreateGadgetByConfigIdByPos(context, defs.gadget_water, pos, {x=0,y=0,z=0})
		ScriptLib.SetGroupTempValue(context, "motion", 1, {})
		ScriptLib.SetPlatformPointArray(context, defs.gadget_water, defs.point_array, {defs.point_list[defs.start_level]}, {route_type = 0, turn_mode = false})
		ScriptLib.SetGroupVariableValue(context, "first_play", 0)
		ScriptLib.SetGroupVariableValue(context, "Water_Level", defs.start_level)
		return 0	
	end
	if water == 0 then
		water = defs.start_level
	end
	ScriptLib.SetGroupVariableValue(context, "Water_Level", water)
	ScriptLib.SetGroupVariableValue(context, "tune", water)
	pos.y = defs.point_y[water]
	ScriptLib.CreateGadgetByConfigIdByPos(context, defs.gadget_water, pos, {x=0,y=0,z=0})
	ScriptLib.SetGroupTempValue(context, "motion", 0, {})
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_list[water], 201)
	return 0
end

function LF_Modify_Water(context, water, delta)
	ScriptLib.PrintContextLog(context, "## TuneStone : LF_Modify_Water : level = "..water.." | delta = "..delta)
	ScriptLib.SetGroupTempValue(context, "motion", 1, {})
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_list[water], 0)
	--ScriptLib.ScenePlaySound(context, {play_pos = defs.audio_xyz, sound_name = defs.audio_list[water], play_type=2, is_broadcast=true})	
	local _water = water + delta
	ScriptLib.SetGroupVariableValue(context, "Water_Level", _water)
	ScriptLib.SetPlatformPointArray(context, defs.gadget_water, defs.point_array, {defs.point_list[_water]}, {route_type = 0, turn_mode = false})
end

function LF_Check_Water_To_Motion(context, evt)
	local up_state = ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_up)
	local down_state = ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_down)
	local water = ScriptLib.GetGroupVariableValue(context, "Water_Level")
	if up_state == 201 and down_state == 201 then
		--跳过
	elseif up_state == 201 and water < #defs.point_list then
		LF_Modify_Water(context, water, 1)
		water = water + 1
	elseif down_state == 201 and water > 1 then
		LF_Modify_Water(context, water, -1)
		water = water - 1
	end
	ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_list[water], 201)
	ScriptLib.SetGroupVariableValue(context, "tune", water)
end
--------------------------------------
Initialize()