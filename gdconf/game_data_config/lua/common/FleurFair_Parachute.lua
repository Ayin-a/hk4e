--[[
local defs = {
	gallery_id = 1,
	option_1 = 7,
	option_2 = 2905,
	gadget_final = 453012,
	gadget_operator = 453001,
	group_list = {133004454,133004455,133004456,133004457,133004458},
	trans_pos = {x=2771,y=436,z=12},
	top = 453009,
	bottom = 453004,
	region_list = {453004,453006,453007,453008,453009}
}
--]]
-----------------------
local Tri = {
	--{ config_id = 8000001, name = "select_option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
	{ config_id = 8000002, name = "enter_region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0, forbid_guest = false },
	{ config_id = 8000003, name = "leave_region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_leave_region", action = "action_leave_region", trigger_count = 0, forbid_guest = false },
	{ config_id = 8000004, name = "gadget_create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_gadget_create", action = "action_gadget_create", trigger_count = 0 },
	{ config_id = 8000005, name = "gallery_start", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_gallery_start", trigger_count = 0},
	{ config_id = 8000006, name = "gallery_stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
	{ config_id = 8000007, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0}
}

local Var = {
	--{name = "timer_ptr", value = 0, no_refresh = false}
}

function Initialize()
	for i,v in ipairs(Tri) do
		table.insert(triggers, v)
		if v.name == "enter_region" or v.name == "leave_region" then
			table.insert(suites[2].triggers, v.name)
		else
			table.insert(suites[1].triggers, v.name)
		end
	end
end

--[[function action_select_option(context, evt)
	if evt.param1 ~= defs.gadget_operator then
		return -1
	end
	if evt.param2 == defs.option_1 then
		ScriptLib.StartGallery(context, defs.gallery_id)
		return 0
	elseif evt.param2 == defs.option_2 then
		ScriptLib.StopGallery(context, defs.gallery_id, false)
	end
	return 0
end--]]

function action_enter_region(context, evt)
	if context.uid == 0 then
		return -1
	end
	local position = ScriptLib.GetPosByEntityId(context, context.target_entity_id)
	for i,v in ipairs(regions) do
		if math.abs(v.pos.y - position.y) <= v.size.y/2 then
			return LF_SET_VISION_TYPE(context, v.config_id)
		end 
	end
	return -1
end

function condition_leave_region(context, evt)
	if context.uid == 0 then
		return false
	end
	local position = ScriptLib.GetPosByEntityId(context, context.target_entity_id)
	local bottom = 0
	local top = 0
	for i,v in ipairs(regions) do
		if v.config_id == defs.bottom then
			bottom = i
		end
		if v.config_id == defs.top then
			top = i
		end
	end
	if position.y <= regions[bottom].pos.y - regions[bottom].size.y/2 then
		return true
	elseif position.y >= regions[top].pos.y + regions[top].size.y/2 then
		return true
	elseif math.abs(position.x - regions[top].pos.x) >= regions[top].size.x/2 then
		return true
	elseif math.abs(position.z - regions[bottom].pos.z) >= regions[bottom].size.z/2 then
		return true
	end
	return false
end

function action_leave_region(context, evt)
	-- 将玩家的GroupVisionType设为1
	if 0 ~= ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1}) then
	  return -1
	end

	return 0
end

function condition_gadget_create(context, evt)
	if evt.param1 ~= defs.gadget_operator then
		return false
	end

	return true
end

function action_gadget_create(context, evt)
	--ScriptLib.SetGadgetEnableInteract(context, 0, defs.gadget_operator, true)
	return 0
end

function action_gallery_start(context, evt)
	if evt.param1 ~= defs.gallery_id then
		return -1
	end
	local act_time = ScriptLib.GetActivityOpenAndCloseTimeByScheduleId(context, 2003001)
	local cur_time = ScriptLib.GetServerTime(context)
	if cur_time >= act_time[1] and cur_time < act_time[2] - 86400*7 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.operator_group_id, defs.gadget_operator, 901)
	end
	LF_GALLERY_START(context, evt)
	return 0
end

function action_gallery_stop(context, evt)
	local act_time = ScriptLib.GetActivityOpenAndCloseTimeByScheduleId(context, 2003001)
	local cur_time = ScriptLib.GetServerTime(context)
	if cur_time >= act_time[1] and cur_time < act_time[2] - 86400*7 then
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.operator_group_id, defs.gadget_operator, 0)
	end
	LF_GALLERY_STOP(context, evt)
	return 0
end

function action_group_load(context, evt)
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_airwall})
	--ScriptLib.SetGadgetEnableInteract(context, 0, defs.gadget_operator, true)
	return 0
end
--------------------------
function LF_SET_VISION_TYPE(context, cid)
	local layer = 0
	for i,v in ipairs(defs.region_list) do
		if v == cid then
			layer = i
			break
		end
	end
	if layer < 1 or layer > #defs.region_list then
		return -1
	end
	local array = {}
	--[[
	--常规的区间分布
	for i=-1,0,1 do
		if layer+i >= 1 and layer+i <= #defs.region_list then
			table.insert(array,layer+i+10)
		end
	end
	for i,v in ipairs(array) do
		ScriptLib.PrintContextLog(context, "## uid = "..context.uid.." | vision = "..v)
	end
	--]]
	if layer == 1 then
		array = {11}
	elseif layer >= 2 and layer < #defs.region_list then
		array = {9+layer,10+layer}
	elseif layer == #defs.region_list then
		array = {16}
	end
	return ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, array)
end

function LF_GALLERY_START(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, defs.gadget_airwall)
	--local uid_arr = ScriptLib.GetSceneUidList(context)
	--ScriptLib.TransPlayerToPos(context, {uid_list=uid_arr, pos = defs.trans_pos, rot = {x=0,y=0,z=0}})
	--ScriptLib.SetGadgetEnableInteract(context, 0, defs.gadget_operator, false)
	ScriptLib.AddExtraGroupSuite(context, 0, 2)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, defs.gadget_final) then
		return -1
	end
	for i,v in ipairs(defs.group_list) do	
		ScriptLib.AddExtraGroupSuite(context, v, 2)
	end
end

function LF_GALLERY_STOP(context, evt)
	ScriptLib.CreateGadget(context, {config_id = defs.gadget_airwall})
	--ScriptLib.SetGadgetEnableInteract(context, 0, defs.gadget_operator, true)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 2)
	for i,v in ipairs(defs.group_list) do	
		ScriptLib.RemoveExtraGroupSuite(context, v, 2)
	end
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetPlayerGroupVisionType(context, uid_list, {1})
end

-------------------------------------------
function FlyBalloonDestinationScore(context)
	ScriptLib.PrintContextLog(context, "## FlyBalloonDestinationScore | uid -> "..context.uid.." | source -> "..context.source_entity_id.." | target -> "..context.target_entity_id)
	--ScriptLib.AddTeamEntityGlobalFloatValue(context, {context.uid}, "has_end_game", 1)		
	ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["trigger_gadget_id"]=70360139,["has_end_game"]=true})
	return 0
end

function FlyBalloonHighScore(context)
	ScriptLib.PrintContextLog(context, "## FlyBalloonHighScore | uid -> "..context.uid.." | source -> "..context.source_entity_id.." | target -> "..context.target_entity_id)
	ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["trigger_gadget_id"]=70360138})
	return 0
end

function FlyBalloonLowScore(context)
	ScriptLib.PrintContextLog(context, "## FlyBalloonLowScore | uid -> "..context.uid.." | source -> "..context.source_entity_id.." | target -> "..context.target_entity_id)
	ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["trigger_gadget_id"]=70360137})
	return 0
end

function FlyBalloonLanding(context)
	ScriptLib.PrintContextLog(context, "## FlyBalloonLanding | uid -> "..context.uid.." | source -> "..context.source_entity_id.." | target -> "..context.target_entity_id)
	local eid = ScriptLib.GetAvatarEntityIdByUid(context, context.uid)
	local pos = ScriptLib.GetPosByEntityId(context, eid)
	if defs.landing_Y == nil or pos.y <= defs.landing_Y then
		--ScriptLib.AddTeamEntityGlobalFloatValue(context, {context.uid}, "has_end_game", 1)
		ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["has_end_game"]=true})
		return 0
	end
	return -1
end
-------------------------------------------
Initialize()