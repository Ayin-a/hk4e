-- 基础信息
local base_info = {
	group_id = 133303446
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
	{ config_id = 446001, gadget_id = 70310201, pos = { x = -1879.939, y = 12.779, z = 3246.681 }, rot = { x = 0.000, y = 188.659, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 446002, gadget_id = 70900050, pos = { x = -1879.939, y = 9.759, z = 3246.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 446006, gadget_id = 70330255, pos = { x = -1879.944, y = 10.012, z = 3249.111 }, rot = { x = 0.000, y = 340.584, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 446007, gadget_id = 70330255, pos = { x = -1880.816, y = 10.012, z = 3259.917 }, rot = { x = 0.000, y = 347.124, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 446008, gadget_id = 70330255, pos = { x = -1883.510, y = 10.012, z = 3271.906 }, rot = { x = 0.000, y = 10.210, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 446009, gadget_id = 70330255, pos = { x = -1881.748, y = 11.750, z = 3286.473 }, rot = { x = 0.000, y = 10.405, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 446010, gadget_id = 70330255, pos = { x = -1877.434, y = 13.316, z = 3306.647 }, rot = { x = 0.000, y = 7.008, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 446011, gadget_id = 70310199, pos = { x = -1874.465, y = 11.996, z = 3346.514 }, rot = { x = 0.000, y = 176.174, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 446012, gadget_id = 70330255, pos = { x = -1874.772, y = 13.316, z = 3331.639 }, rot = { x = 0.000, y = 359.778, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 446015, gadget_id = 70330246, pos = { x = -1870.682, y = 6.960, z = 3243.318 }, rot = { x = 0.000, y = 306.901, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1446003, name = "GADGET_STATE_CHANGE_446003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_446003", action = "action_EVENT_GADGET_STATE_CHANGE_446003", trigger_count = 0 },
	{ config_id = 1446005, name = "GADGET_STATE_CHANGE_446005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_446005", action = "action_EVENT_GADGET_STATE_CHANGE_446005" },
	-- 保底
	{ config_id = 1446013, name = "GROUP_LOAD_446013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_446013", action = "action_EVENT_GROUP_LOAD_446013", trigger_count = 0 },
	-- 保底
	{ config_id = 1446014, name = "GROUP_LOAD_446014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_446014", action = "action_EVENT_GROUP_LOAD_446014" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 446004, gadget_id = 70330255, pos = { x = -1850.432, y = -0.946, z = 3232.444 }, rot = { x = 0.000, y = 303.663, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
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
		gadgets = { 446002, 446015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_446003", "GADGET_STATE_CHANGE_446005", "GROUP_LOAD_446013", "GROUP_LOAD_446014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 446001, 446006, 446007, 446008, 446009, 446010, 446011, 446012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 446006, 446007, 446008, 446009, 446010, 446012 },
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
function condition_EVENT_GADGET_STATE_CHANGE_446003(context, evt)
	if 446002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_446003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303446, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_446005(context, evt)
	if 446001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_446005(context, evt)
	-- 将configid为 446015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 446015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303446, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_446013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303446, 446002) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133303446, 446001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_446013(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303446, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_446014(context, evt)
	if 446001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_446014(context, evt)
	-- 将configid为 446015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 446015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303446, 3)
	
	return 0
end