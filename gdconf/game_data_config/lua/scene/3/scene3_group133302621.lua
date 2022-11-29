-- 基础信息
local base_info = {
	group_id = 133302621
}

-- Trigger变量
local defs = {
	fquestid = 73115
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
	{ config_id = 621001, gadget_id = 70330229, pos = { x = -765.862, y = 225.538, z = 2217.052 }, rot = { x = 9.737, y = 1.263, z = 14.745 }, level = 27, persistent = true, mark_flag = 3, area_id = 24 },
	{ config_id = 621002, gadget_id = 70330251, pos = { x = -776.506, y = 222.650, z = 2234.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 24 },
	{ config_id = 621003, gadget_id = 70220103, pos = { x = -993.105, y = 265.853, z = 2335.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621004, gadget_id = 70220103, pos = { x = -961.854, y = 251.000, z = 2329.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621005, gadget_id = 70330229, pos = { x = -669.822, y = 221.330, z = 2442.084 }, rot = { x = 2.240, y = 0.295, z = 350.235 }, level = 27, persistent = true, mark_flag = 5, area_id = 24 },
	{ config_id = 621006, gadget_id = 70330251, pos = { x = -682.691, y = 228.424, z = 2432.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 5, area_id = 24 },
	{ config_id = 621007, gadget_id = 70220103, pos = { x = -931.872, y = 241.000, z = 2323.707 }, rot = { x = 0.000, y = 5.505, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621008, gadget_id = 70220103, pos = { x = -898.529, y = 231.000, z = 2311.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621009, gadget_id = 70220103, pos = { x = -826.352, y = 211.083, z = 2294.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621010, gadget_id = 70220103, pos = { x = -797.633, y = 218.000, z = 2263.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621011, gadget_id = 70220103, pos = { x = -776.506, y = 222.807, z = 2234.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621012, gadget_id = 70220103, pos = { x = -775.071, y = 266.115, z = 2313.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621018, gadget_id = 70220103, pos = { x = -797.016, y = 215.000, z = 2321.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621019, gadget_id = 70220103, pos = { x = -777.920, y = 219.000, z = 2354.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621020, gadget_id = 70220103, pos = { x = -733.110, y = 224.862, z = 2415.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621021, gadget_id = 70220103, pos = { x = -705.443, y = 228.957, z = 2424.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621022, gadget_id = 70220103, pos = { x = -860.261, y = 221.000, z = 2306.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621023, gadget_id = 70220103, pos = { x = -757.778, y = 223.000, z = 2387.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 621024, gadget_id = 70220103, pos = { x = -682.691, y = 228.557, z = 2432.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
	-- 观察到任一黑烟后
	{ config_id = 621014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -993.015, y = 260.910, z = 2334.498 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1621013, name = "GADGET_STATE_CHANGE_621013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_621013", action = "action_EVENT_GADGET_STATE_CHANGE_621013" },
	-- 观察到任一黑烟后
	{ config_id = 1621014, name = "ENTER_REGION_621014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_621014", action = "action_EVENT_ENTER_REGION_621014", trigger_count = 0 },
	{ config_id = 1621015, name = "GADGET_STATE_CHANGE_621015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_621015", action = "action_EVENT_GADGET_STATE_CHANGE_621015" },
	{ config_id = 1621016, name = "GROUP_LOAD_621016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_621016", action = "action_EVENT_GROUP_LOAD_621016", trigger_count = 0 },
	{ config_id = 1621017, name = "GROUP_LOAD_621017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_621017", action = "action_EVENT_GROUP_LOAD_621017", trigger_count = 0 },
	-- 勾爪创建，发射器201
	{ config_id = 1621025, name = "GADGET_CREATE_621025", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_621025", action = "action_EVENT_GADGET_CREATE_621025", trigger_count = 0 },
	-- 勾爪创建，发射器201
	{ config_id = 1621026, name = "GADGET_CREATE_621026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_621026", action = "action_EVENT_GADGET_CREATE_621026", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "first", value = 0, no_refresh = true },
	{ config_id = 2, name = "second", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 5,
	end_suite = 1,
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
		gadgets = { },
		regions = { 621014 },
		triggers = { "ENTER_REGION_621014", "GROUP_LOAD_621016", "GROUP_LOAD_621017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 621003, 621004, 621007, 621008, 621009, 621010, 621011, 621012, 621018, 621019, 621020, 621021, 621022, 621023, 621024 },
		regions = { },
		triggers = { "GADGET_CREATE_621025", "GADGET_CREATE_621026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 621001, 621002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_621013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 621005, 621006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_621015" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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
function condition_EVENT_GADGET_STATE_CHANGE_621013(context, evt)
	if 621001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_621013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302621, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_621014(context, evt)
	if evt.param1 ~= 621014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,defs.fquestid*100+3)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState == 3 then
	   return true
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,defs.fquestid*100+5)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState == 3 then
	   return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_ENTER_REGION_621014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302621, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_621015(context, evt)
	if 621005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_621015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302621, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_621016(context, evt)
	-- 判断变量"first"为1
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_621016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302621, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_621017(context, evt)
	-- 判断变量"second"为1
	if ScriptLib.GetGroupVariableValue(context, "second") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_621017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302621, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_621025(context, evt)
	if 621003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_621025(context, evt)
	-- 将configid为 621001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_621026(context, evt)
	if 621003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_621026(context, evt)
	-- 将configid为 621005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 621005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end