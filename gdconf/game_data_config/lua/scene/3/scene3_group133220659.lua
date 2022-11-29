-- 基础信息
local base_info = {
	group_id = 133220659
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 659001, gadget_id = 70360122, pos = { x = -1857.865, y = 192.951, z = -4223.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, interact_id = 28, area_id = 11 },
	{ config_id = 659002, gadget_id = 70360122, pos = { x = -1861.698, y = 192.951, z = -4223.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, interact_id = 29, area_id = 11 },
	{ config_id = 659003, gadget_id = 70360122, pos = { x = -1861.803, y = 192.951, z = -4227.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, interact_id = 30, area_id = 11 },
	{ config_id = 659004, gadget_id = 70360122, pos = { x = -1857.828, y = 192.951, z = -4227.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, interact_id = 31, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1659005, name = "GADGET_STATE_CHANGE_659005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_659005", action = "action_EVENT_GADGET_STATE_CHANGE_659005", trigger_count = 0 },
	{ config_id = 1659006, name = "GROUP_LOAD_659006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_659006", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 659001, 659002, 659003, 659004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_659005", "GROUP_LOAD_659006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_659005(context, evt)
		if (659001 ~= evt.param2 and 
			659002 ~= evt.param2 and
			659003 ~= evt.param2 and
			659004 ~= evt.param2 ) 
			or (GadgetState.GearStart ~= evt.param1)  then
			return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_659005(context, evt)
	
		if(evt.param2 == 659001) then 
			ScriptLib.SetGroupVariableValueByGroup(context, "stone1", 1, 133220357)
		end
	
		if(evt.param2 == 659002) then 
			ScriptLib.SetGroupVariableValueByGroup(context, "stone2", 1, 133220357)
		end
		if(evt.param2 == 659003) then 
			ScriptLib.SetGroupVariableValueByGroup(context, "stone3", 1, 133220357)
		end
		if(evt.param2 == 659004) then 
			ScriptLib.SetGroupVariableValueByGroup(context, "stone4", 1, 133220357)
		end
		
		return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_659006(context, evt)
		local stonestate = {}
		local varname
		table.insert( stonestate, ScriptLib.GetGadgetStateByConfigId(context, 133220659, 659001))
		table.insert( stonestate, ScriptLib.GetGadgetStateByConfigId(context, 133220659, 659002))
		table.insert( stonestate, ScriptLib.GetGadgetStateByConfigId(context, 133220659, 659003))
		table.insert( stonestate, ScriptLib.GetGadgetStateByConfigId(context, 133220659, 659004))
	
		for n=1, 4 do
			varname = "stone"..n
			if stonestate[n] == GadgetState.GearStart then
				ScriptLib.SetGroupVariableValueByGroup(context, varname, 1, 133220357)
			end	
		end
	
		return 0
end