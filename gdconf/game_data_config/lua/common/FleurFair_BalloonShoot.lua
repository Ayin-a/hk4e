--[[
local defs = {
	gallery_id = 1,
	gadget_entry = 1,
	balloon_clear_state = 202,
	suite_clear_index = 10,
	random_time_axis = {10,20,30},
	random_clear_time_axis = {7,17,27,37},
	static_start_suite = 2,
	static_suite_list = {3,4,5},
	static_time_axis = {10,20,30},
	static_clear_time_axis = {7,17,27,37},
}

local balloon_config = {
	{ gadget_id = xxx, min = xxx, max = xxx},
	{ gadget_id = xxx, min = xxx, max = xxx}
}

local point_array_defs = {
	[1] = {point_array_id = 1, point_id_list = {}, route_type = 2},
	[2] = {point_array_id = 2, point_id_list = {}, route_type = 1}
}
--]]
-----------------------
local Tri = {
	{name = "time_axis_pass", config_id = 800001, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
	{name = "gallery_start", config_id = 800002, event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_gallery_start", trigger_count = 0},
	{name = "gallery_stop", config_id = 800003, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
	{name = "group_will_unload", config_id = 800004, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
	{name = "enter_region", config_id = 800005,event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0, forbid_guest = false }
}

local Var = {
	--{name = "is_in_gallery", value = 0, no_refresh = false}
}

function Initialize()
	for i,v in ipairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	local suite_sum = #suites
	suites[suite_sum+1] = {monsters={},gadgets={},regions={},triggers={},rand_weight=0}
	for i=1,balloon_config[1].max do
		local temp_gadget = {config_id = 1000000+i, gadget_id=balloon_config[1].gadget_id, level=1, pos = gadgets[defs.gadget_entry].pos, rot = gadgets[defs.gadget_entry].rot, area_id = gadgets[defs.gadget_entry].area_id}
		gadgets[temp_gadget.config_id] = temp_gadget
		table.insert(suites[suite_sum+1].gadgets, temp_gadget.config_id)
	end
	suites[suite_sum+2] = {monsters={},gadgets={},regions={},triggers={},rand_weight=0}
	for i=1,balloon_config[2].max do
		local temp_gadget = {config_id = 1000000+balloon_config[1].max+i, gadget_id=balloon_config[2].gadget_id, level=1, pos = gadgets[defs.gadget_entry].pos, rot = gadgets[defs.gadget_entry].rot, area_id = gadgets[defs.gadget_entry].area_id}
		gadgets[temp_gadget.config_id] = temp_gadget
		table.insert(suites[suite_sum+2].gadgets, temp_gadget.config_id)
	end
	local garbages = {gadgets={}}
	for i=1,10 do
		garbages.gadgets[i] = {config_id=100000+i}
	end
end

function action_time_axis_pass(context, evt)
	if evt.source_name == "static" then
		LF_CREATE_NEXT_STATIC_BALLOON(context, evt.param1)
	elseif evt.source_name == "random" then
		LF_CREATE_NEXT_RANDOM_BALLOON(context, evt.param1)
	elseif evt.source_name == "random_clear" then
		LF_CLEAR_CUR_RANDOM_BALLOON(context, evt.param1)
	elseif evt.source_name == "static_clear" then
		LF_CLEAR_CUR_STATIC_BALLOON(context, evt.param1)
	end	
	return 0
end

function action_gallery_start(context, evt)
	ScriptLib.PrintContextLog(context, "------------- version 8 --------------")
	--ScriptLib.GetGroupVariableValue(context, "timer_ptr")
	if evt.param1 ~= defs.gallery_id then
		return -1
	end
	ScriptLib.SetGroupTempValue(context, "is_in_gallery", 1, {})
	local act_time = ScriptLib.GetActivityOpenAndCloseTimeByScheduleId(context, 2003001)
	local cur_time = ScriptLib.GetServerTime(context)
	if cur_time >= act_time[1] and cur_time < act_time[2] - 86400*7 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.operator_group_id, defs.gadget_operator, 901)
	end
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetPlayerGroupVisionType(context, uid_list, {0})
	LF_CREATE_NEXT_RANDOM_BALLOON(context, 0)
	LF_CREATE_NEXT_STATIC_BALLOON(context, 0)
	ScriptLib.InitTimeAxis(context, "random", defs.random_time_axis, false)
	ScriptLib.InitTimeAxis(context, "random_clear", defs.random_clear_time_axis, false)
	ScriptLib.InitTimeAxis(context, "static", defs.static_time_axis, false)
	ScriptLib.InitTimeAxis(context, "static_clear", defs.static_clear_time_axis, false)
	return 0
end

function action_gallery_stop(context, evt)
	if evt.param1 ~= defs.gallery_id then
		return -1
	end
	ScriptLib.SetGroupTempValue(context, "is_in_gallery", 0, {})
	local act_time = ScriptLib.GetActivityOpenAndCloseTimeByScheduleId(context, 2003001)
	local cur_time = ScriptLib.GetServerTime(context)
	if cur_time >= act_time[1] and cur_time < act_time[2] - 86400*7 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.operator_group_id, defs.gadget_operator, 0)
	end
	ScriptLib.EndTimeAxis(context, "random")
	ScriptLib.EndTimeAxis(context, "random_clear")
	ScriptLib.EndTimeAxis(context, "static")
	ScriptLib.EndTimeAxis(context, "random_clear")
	ScriptLib.RemoveExtraGroupSuite(context, 0, defs.suite_clear_index)
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetPlayerGroupVisionType(context, uid_list, {1})
	return 0
end

function action_group_will_unload(context, evt)
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetPlayerGroupVisionType(context, uid_list, {1})
	return 0
end

function action_enter_region(context, evt)
	if 1 == ScriptLib.GetGroupTempValue(context, "is_in_gallery", {}) then
		local uid_list = ScriptLib.GetSceneUidList(context)
		ScriptLib.SetPlayerGroupVisionType(context, uid_list, {0})
	end
	return 0
end
-----------------------------------

function LF_CREATE_NEXT_STATIC_BALLOON(context, wave)
	ScriptLib.PrintContextLog(context, "## balloon_log : wave="..wave)
	local balloons = {}
	if wave == 0 then
		balloons = suites[defs.static_start_suite].gadgets
		ScriptLib.AddExtraGroupSuite(context, 0, defs.static_start_suite)
	else 
		balloons = suites[defs.static_suite_list[wave]].gadgets
		--防止策划配错，强制移除
		ScriptLib.RemoveExtraGroupSuite(context, 0, defs.static_suite_list[wave])
		ScriptLib.AddExtraGroupSuite(context, 0, defs.static_suite_list[wave])
	end
	ScriptLib.PrintContextLog(context, "## balloon_log : #balloons="..#balloons)
	
	--调整蛋道
	for i,v in ipairs(balloons) do
		if  point_array_defs[v] ~= nil then
			local ret = ScriptLib.SetPlatformPointArray(context, v, point_array_defs[v].point_array_id, point_array_defs[v].point_id_list, {route_type = point_array_defs[v].route_type})
			ScriptLib.PrintContextLog(context, "## balloon_log : i->"..i.." | ret->"..ret)
		end
	end
end

function LF_CREATE_NEXT_RANDOM_BALLOON(context, wave)
	local balloons = {}
	math.randomseed(ScriptLib.GetServerTime(context)+wave)
	local g1_r = math.random(balloon_config[1].min, balloon_config[1].max)
	local g2_r = math.random(balloon_config[2].min, balloon_config[2].max)
	ScriptLib.PrintContextLog(context, "## balloon_log : g1_r="..g1_r.." | g2_r="..g2_r)
	for i=1,g1_r do
		table.insert(balloons, suites[#suites-1].gadgets[i])
	end
	for i=1,g2_r do
		table.insert(balloons, suites[#suites].gadgets[i])
	end
	ScriptLib.PrintContextLog(context, "## balloon_log : #balloons="..#balloons)
	--随机选一组points作为气球创建点
	local random_points = {}
	for k,v in pairs(points) do
		if v.isRandom == 1 then
			table.insert(random_points, k)
		end
	end
	ScriptLib.PrintContextLog(context, "## balloon_log : #random_points="..#random_points)
	local uid_list = ScriptLib.GetSceneUidList(context)
	local host_uid = uid_list[1]
	local seed = ScriptLib.GetServerTime(context)%host_uid
	ScriptLib.PrintContextLog(context, "## balloon_log : seed="..seed)
	for k,v in pairs(balloons) do
		local temp = seed%#random_points + 1
		ScriptLib.PrintContextLog(context, "## balloon_log : temp="..temp)
		ScriptLib.PrintContextLog(context, "## balloon_log : v="..v.." | random_points="..random_points[temp])
		ScriptLib.CreateGadgetByConfigIdByPos(context, v, points[random_points[temp]].pos, points[random_points[temp]].rot)
		table.remove(random_points, temp)
	end
end

function LF_CLEAR_CUR_STATIC_BALLOON(context, wave)
	if wave == 1 then
		for i,v in ipairs(suites[defs.static_start_suite].gadgets) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, defs.balloon_clear_state)
		end
	else
		for i,v in ipairs(suites[defs.static_suite_list[wave - 1]].gadgets) do
			ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, defs.balloon_clear_state)
		end
	end
end

function LF_CLEAR_CUR_RANDOM_BALLOON(context, wave)
	for i,v in ipairs(suites[#suites-1].gadgets) do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, defs.balloon_clear_state)
	end
	for i,v in ipairs(suites[#suites].gadgets) do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, v, defs.balloon_clear_state)
	end
end
---------------------------------
function ShootBalloonHighScore(context)
	ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["trigger_gadget_id"]=70350174})
	return 0
end

function ShootBalloonLowScore(context)
	ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["trigger_gadget_id"]=70350173})
	return 0
end

function ShootBalloonSubScore(context)
	ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["trigger_gadget_id"]=70350175})
	return 0
end

function ShootBalloonBombScore(context)
	ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["trigger_gadget_id"]=70350172})
	return 0
end
---------------------------------
Initialize()