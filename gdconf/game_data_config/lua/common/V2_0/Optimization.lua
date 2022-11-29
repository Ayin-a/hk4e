--[[
local vision_def = {
	{ vision_id = 11, enter = 100, leave = 101 },
	{ vision_id = 22, enter = 102, leave = 103 },
}

local vision_mutex = {
	{11,12}
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
	--如果服务器上不好修的话，要考虑自己维护一个次数的tempValueTable
end
-----------------------------------------------------
function action_enter_region(context, evt)
	local opt = ScriptLib.GetGroupTempValue(context, "optimize_"..context.uid, {})
	if opt ~= 1 then
		ScriptLib.SetGroupTempValue(context, "optimize_"..context.uid, 10, {})
		for k,v in pairs(vision_def) do
			if evt.param1 == v.enter then
				local result = 1
				--用于处理高炉内外视野互斥的问题
				for p,q in ipairs(vision_mutex) do
					for m,n in ipairs(q) do
						if q[1] == v.vision_id then
							ScriptLib.PrintContextLog(context, "## opt_log1: add vision "..q[1])
							ScriptLib.AddPlayerGroupVisionType(context, {context.uid}, {q[1]})
							ScriptLib.DelPlayerGroupVisionType(context, {context.uid}, {q[2]})
							result = 0
						end
						if q[2] == v.vision_id then
							local eid = ScriptLib.GetAvatarEntityIdByUid(context, context.uid)
							local pos = ScriptLib.GetPosByEntityId(context, eid)
							for each,vision in pairs(vision_def) do
								if vision.vision_id == q[1] then
									if LF_Check_Avatar_In_Region(context, pos, regions[vision.enter]) == false then
										ScriptLib.PrintContextLog(context, "## opt_log2: add vision "..q[2])
										ScriptLib.AddPlayerGroupVisionType(context, {context.uid}, {q[2]})
									else
										ScriptLib.PrintContextLog(context, "## opt_log2: del vision "..q[2])
										ScriptLib.DelPlayerGroupVisionType(context, {context.uid}, {q[2]})
									end
									result = 0
								end
							end
						end
					end
				end
				if result == 1 then
					ScriptLib.PrintContextLog(context, "## opt_log: add vision "..v.vision_id)
					ScriptLib.AddPlayerGroupVisionType(context, {context.uid}, {v.vision_id})
				end
				break
			end
		end
	end
	return 0
end

function action_leave_region(context, evt)
	local opt = ScriptLib.GetGroupTempValue(context, "optimize_"..context.uid, {})
	if opt ~= 1 then
		ScriptLib.SetGroupTempValue(context, "optimize_"..context.uid, 10, {})
		LF_ReCalculate_VisionType(context, context.uid)
	end
	return 0
end

function action_variable_change(context, evt)
	if evt.param1 == 0 then
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
			table.insert(vision, v.vision_id)
		end
	end
	--重算一次vision互斥，以每个互斥二元组中第一个查到的为准
	for i,v in ipairs(vision) do
		for m,n in ipairs(vision_mutex) do
			if n[1] == v then
				for p,q in ipairs(vision) do
					if q == n[2] then
						table.remove(vision, p)
					end
				end
			end
		end
	end
	ScriptLib.SetPlayerGroupVisionType(context, {uid}, vision)
end

function LF_Check_Avatar_In_Region(context, pos, region)
	if region.shape == RegionShape.SPHERE then
		local X = pos.x - region.pos.x
		local Y = pos.y - region.pos.y
		local Z = pos.z - region.pos.z
		if math.sqrt(X*X+Y*Y+Z*Z) > region.radius then
			return false
		else 
			ScriptLib.PrintContextLog(context, "## opt_log: in region "..region.config_id)
			return true
		end
	elseif region.shape == RegionShape.CUBIC then
		if math.abs(pos.x-region.pos.x) > region.size.x/2 then
			return false
		elseif math.abs(pos.y-region.pos.y) > region.size.y/2 then
			return false
		elseif math.abs(pos.z-region.pos.z) > region.size.z/2 then
			return false
		end
			ScriptLib.PrintContextLog(context, "## opt_log: in region "..region.config_id)
		return true
	end
	return false
end
---------------------------------
Initialize()