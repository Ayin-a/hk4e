--[[
local vision_def = {
	[1] = { enter = 100, leave = 101 },
	[2] = { enter = 102, leave = 103 },
}
--]]

local Tri = {
	{ name = "enter_region", config_id = 8000001, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0, forbid_guest = false },
	{ name = "leave_region", config_id = 8000002, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0, forbid_guest = false },
	{ name = "variable_change", config_id = 8000003, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0 }
}

function Initialize()
	for i,v in ipairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end
-----------------------------------------------------
function action_enter_region(context, evt)
	local opt = ScriptLib.GetGroupTempValue(context, "optimize_"..context.uid, {})
	if opt ~= 1 then
		if opt == -1 then
			ScriptLib.SetGroupTempValue(context, "optimize_"..context.uid, 0, {})
		end
		for k,v in pairs(vision_def) do
			if evt.param1 == v.enter then
				ScriptLib.AddPlayerGroupVisionType(context, {context.uid}, {k})
				break
			end
		end
	end
	return 0
end

function action_leave_region(context, evt)
	local opt = ScriptLib.GetGroupTempValue(context, "optimize_"..context.uid, {})
	if opt ~= 1 then
		if opt == -1 then
			ScriptLib.SetGroupTempValue(context, "optimize_"..context.uid, 0, {})
		end
		for k,v in pairs(vision_def) do
			if evt.param1 == v.leave then
				ScriptLib.DelPlayerGroupVisionType(context, {context.uid}, {k})
				break
			end
		end
	end
	return 0
end

function action_variable_change(context, evt)
	if evt.param2 == 1 and evt.param1 == 0 then
	local uid_list = ScriptLib.GetSceneUidList(context)
		for i,v in ipairs(uid_list) do
			if "optimize_"..v == evt.source_name then
				LF_ReCalculate_VisionType(context, v)
			end
		end
	end
	return 0
end

function LF_ReCalculate_VisionType(context, uid)
	local eid = ScriptLib.GetAvatarEntityIdByUid(context, uid)
	local pos = ScriptLib.GetPosByEntityId(context, eid)
	local vision = {1}
	for k,v in pairs(vision_def) do
		if LF_Check_Avatar_In_Region(context, pos, regions[v.leave]) == true then
			table.insert(vision, k)
		end
	end
	ScriptLib.SetPlayerGroupVisionType(context, {uid}, vision)
end

function LF_Check_Avatar_In_Region(context, pos, region)
	ScriptLib.PrintContextLog(context, "## optimization : region_id = "..region.config_id)
	if region.shape == RegionShape.SPHERE then
		local X = pos.x - region.pos.x
		local Y = pos.y - region.pos.y
		local Z = pos.z - region.pos.z
		if math.sqrt(X*X+Y*Y+Z*Z) > region.radius then
			return false
		else return true
		end
	elseif region.shape == RegionShape.CUBIC then
		if math.abs(pos.x-region.pos.x) > region.size.x/2 then
			return false
		elseif math.abs(pos.y-region.pos.y) > region.size.y/2 then
			return false
		elseif math.abs(pos.z-region.pos.z) > region.size.z/2 then
			return false
		end
		return true
	end
	return false
end
---------------------------------
Initialize()