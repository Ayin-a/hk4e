-- 基础信息
local base_info = {
	group_id = 133301635
}

-- Trigger变量
local defs = {
	fquestid = 73113
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
	{ config_id = 635001, gadget_id = 70330229, pos = { x = -738.279, y = 299.905, z = 3271.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 23 },
	{ config_id = 635002, gadget_id = 70330251, pos = { x = -751.620, y = 303.010, z = 3266.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 23 },
	{ config_id = 635003, gadget_id = 70220103, pos = { x = -894.115, y = 363.739, z = 3268.601 }, rot = { x = 354.368, y = 354.049, z = 353.003 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635004, gadget_id = 70220103, pos = { x = -900.562, y = 338.556, z = 3319.690 }, rot = { x = 356.870, y = 1.865, z = 359.853 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635005, gadget_id = 70330229, pos = { x = -906.458, y = 334.449, z = 3351.055 }, rot = { x = 353.322, y = 359.517, z = 10.511 }, level = 30, persistent = true, mark_flag = 5, area_id = 23 },
	{ config_id = 635006, gadget_id = 70330251, pos = { x = -905.524, y = 335.755, z = 3343.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 23 },
	{ config_id = 635008, gadget_id = 70220103, pos = { x = -894.783, y = 345.148, z = 3293.344 }, rot = { x = 358.300, y = 352.551, z = 1.942 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635009, gadget_id = 70220103, pos = { x = -892.638, y = 377.767, z = 3249.121 }, rot = { x = 0.702, y = 343.875, z = 358.379 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635010, gadget_id = 70220103, pos = { x = -911.724, y = 389.678, z = 3231.732 }, rot = { x = 5.566, y = 352.416, z = 359.564 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635011, gadget_id = 70220103, pos = { x = -948.186, y = 416.086, z = 3189.976 }, rot = { x = 0.000, y = 352.772, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635012, gadget_id = 70220103, pos = { x = -905.524, y = 335.755, z = 3343.884 }, rot = { x = 358.445, y = 353.057, z = 357.431 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635018, gadget_id = 70220103, pos = { x = -931.919, y = 402.494, z = 3209.395 }, rot = { x = 7.426, y = 19.613, z = 359.531 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635019, gadget_id = 70220103, pos = { x = -867.456, y = 364.523, z = 3238.469 }, rot = { x = 8.284, y = 12.010, z = 0.470 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635020, gadget_id = 70220103, pos = { x = -839.718, y = 355.808, z = 3238.639 }, rot = { x = 4.281, y = 14.171, z = 359.540 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635021, gadget_id = 70220103, pos = { x = -810.461, y = 336.317, z = 3245.931 }, rot = { x = 6.259, y = 1.958, z = 1.399 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635022, gadget_id = 70220103, pos = { x = -779.962, y = 323.668, z = 3257.757 }, rot = { x = 358.524, y = 5.879, z = 356.469 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 635025, gadget_id = 70220103, pos = { x = -751.620, y = 303.010, z = 3266.310 }, rot = { x = 3.850, y = 12.443, z = 354.477 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	-- 观察到任一黑烟后
	{ config_id = 635014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -949.981, y = 411.466, z = 3187.820 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 勾爪创建，发射器201
	{ config_id = 1635007, name = "GADGET_CREATE_635007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_635007", action = "action_EVENT_GADGET_CREATE_635007", trigger_count = 0 },
	{ config_id = 1635013, name = "GADGET_STATE_CHANGE_635013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_635013", action = "action_EVENT_GADGET_STATE_CHANGE_635013" },
	-- 观察到任一黑烟后
	{ config_id = 1635014, name = "ENTER_REGION_635014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_635014", action = "action_EVENT_ENTER_REGION_635014", trigger_count = 0 },
	{ config_id = 1635015, name = "GADGET_STATE_CHANGE_635015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_635015", action = "action_EVENT_GADGET_STATE_CHANGE_635015" },
	{ config_id = 1635016, name = "GROUP_LOAD_635016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_635016", action = "action_EVENT_GROUP_LOAD_635016", trigger_count = 0 },
	{ config_id = 1635017, name = "GROUP_LOAD_635017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_635017", action = "action_EVENT_GROUP_LOAD_635017", trigger_count = 0 },
	-- 勾爪创建，发射器201
	{ config_id = 1635023, name = "GADGET_CREATE_635023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_635023", action = "action_EVENT_GADGET_CREATE_635023", trigger_count = 0 }
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
		regions = { 635014 },
		triggers = { "ENTER_REGION_635014", "GROUP_LOAD_635016", "GROUP_LOAD_635017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 635003, 635004, 635008, 635009, 635010, 635011, 635012, 635018, 635019, 635020, 635021, 635022, 635025 },
		regions = { },
		triggers = { "GADGET_CREATE_635007", "GADGET_CREATE_635023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 635001, 635002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_635013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 635005, 635006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_635015" },
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
function condition_EVENT_GADGET_CREATE_635007(context, evt)
	if 635003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_635007(context, evt)
	-- 将configid为 635001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 635001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_635013(context, evt)
	if 635001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_635013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301635, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_635014(context, evt)
	if evt.param1 ~= 635014 then return false end
	
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
function action_EVENT_ENTER_REGION_635014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301635, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_635015(context, evt)
	if 635005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_635015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301635, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_635016(context, evt)
	-- 判断变量"first"为1
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_635016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301635, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_635017(context, evt)
	-- 判断变量"second"为1
	if ScriptLib.GetGroupVariableValue(context, "second") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_635017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301635, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_635023(context, evt)
	if 635003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_635023(context, evt)
	-- 将configid为 635005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 635005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end