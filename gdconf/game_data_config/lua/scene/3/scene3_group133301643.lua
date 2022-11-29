-- 基础信息
local base_info = {
	group_id = 133301643
}

-- Trigger变量
local defs = {
	fquestid = 73114
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
	{ config_id = 643001, gadget_id = 70330229, pos = { x = -794.279, y = 181.160, z = 3724.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, persistent = true, mark_flag = 3, area_id = 23 },
	{ config_id = 643002, gadget_id = 70330251, pos = { x = -940.497, y = 283.658, z = 3740.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, mark_flag = 3, area_id = 23 },
	{ config_id = 643003, gadget_id = 70220103, pos = { x = -923.269, y = 235.748, z = 3747.642 }, rot = { x = 0.000, y = 359.292, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 643004, gadget_id = 70220103, pos = { x = -996.861, y = 293.520, z = 3779.091 }, rot = { x = 0.000, y = 359.292, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 643005, gadget_id = 70330229, pos = { x = -820.509, y = 238.221, z = 3566.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 23 },
	{ config_id = 643006, gadget_id = 70330251, pos = { x = -1072.341, y = 278.083, z = 3645.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 23 },
	{ config_id = 643008, gadget_id = 70220103, pos = { x = -887.917, y = 220.097, z = 3741.408 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 643009, gadget_id = 70220103, pos = { x = -936.752, y = 259.785, z = 3719.736 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 643010, gadget_id = 70220103, pos = { x = -914.680, y = 258.008, z = 3693.739 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 643011, gadget_id = 70220103, pos = { x = -904.313, y = 260.636, z = 3665.368 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 643012, gadget_id = 70220103, pos = { x = -1009.376, y = 296.300, z = 3804.315 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 643018, gadget_id = 70220103, pos = { x = -853.525, y = 215.415, z = 3735.701 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 643019, gadget_id = 70220103, pos = { x = -823.111, y = 198.876, z = 3727.635 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 643020, gadget_id = 70220103, pos = { x = -887.951, y = 254.934, z = 3637.753 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 643021, gadget_id = 70220103, pos = { x = -860.570, y = 268.057, z = 3614.615 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 643022, gadget_id = 70220103, pos = { x = -835.135, y = 256.358, z = 3593.963 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 643023, gadget_id = 70220103, pos = { x = -827.687, y = 247.194, z = 3577.924 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 643024, gadget_id = 70220103, pos = { x = -807.486, y = 190.194, z = 3724.655 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 643025, gadget_id = 70220103, pos = { x = -958.310, y = 261.921, z = 3748.067 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 33, persistent = true, area_id = 23 },
	{ config_id = 643026, gadget_id = 70220103, pos = { x = -982.553, y = 283.837, z = 3762.035 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 643028, gadget_id = 70220103, pos = { x = -947.307, y = 254.963, z = 3730.867 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 643029, gadget_id = 70220103, pos = { x = -935.859, y = 254.963, z = 3750.318 }, rot = { x = 0.000, y = 334.926, z = 0.000 }, level = 33, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	-- 观察到任一黑烟后
	{ config_id = 643014, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1009.124, y = 291.553, z = 3806.800 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 勾爪创建，发射器201
	{ config_id = 1643007, name = "GADGET_CREATE_643007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_643007", action = "action_EVENT_GADGET_CREATE_643007", trigger_count = 0 },
	{ config_id = 1643013, name = "GADGET_STATE_CHANGE_643013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_643013", action = "action_EVENT_GADGET_STATE_CHANGE_643013" },
	-- 观察到任一黑烟后
	{ config_id = 1643014, name = "ENTER_REGION_643014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_643014", action = "action_EVENT_ENTER_REGION_643014", trigger_count = 0 },
	{ config_id = 1643015, name = "GADGET_STATE_CHANGE_643015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_643015", action = "action_EVENT_GADGET_STATE_CHANGE_643015" },
	{ config_id = 1643016, name = "GROUP_LOAD_643016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_643016", action = "action_EVENT_GROUP_LOAD_643016", trigger_count = 0 },
	{ config_id = 1643017, name = "GROUP_LOAD_643017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_643017", action = "action_EVENT_GROUP_LOAD_643017", trigger_count = 0 },
	-- 勾爪创建，发射器201
	{ config_id = 1643027, name = "GADGET_CREATE_643027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_643027", action = "action_EVENT_GADGET_CREATE_643027", trigger_count = 0 }
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
		regions = { 643014 },
		triggers = { "ENTER_REGION_643014", "GROUP_LOAD_643016", "GROUP_LOAD_643017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 643003, 643004, 643008, 643009, 643010, 643011, 643012, 643018, 643019, 643020, 643021, 643022, 643023, 643024, 643025, 643026, 643028, 643029 },
		regions = { },
		triggers = { "GADGET_CREATE_643007", "GADGET_CREATE_643027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 643001, 643002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_643013" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 643005, 643006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_643015" },
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
function condition_EVENT_GADGET_CREATE_643007(context, evt)
	if 643003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_643007(context, evt)
	-- 将configid为 643001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 643001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_643013(context, evt)
	if 643001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_643013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301643, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_643014(context, evt)
	if evt.param1 ~= 643014 then return false end
	
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
function action_EVENT_ENTER_REGION_643014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301643, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_643015(context, evt)
	if 643005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_643015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301643, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_643016(context, evt)
	-- 判断变量"first"为1
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_643016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301643, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_643017(context, evt)
	-- 判断变量"second"为1
	if ScriptLib.GetGroupVariableValue(context, "second") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_643017(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301643, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_643027(context, evt)
	if 643003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_643027(context, evt)
	-- 将configid为 643005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 643005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end