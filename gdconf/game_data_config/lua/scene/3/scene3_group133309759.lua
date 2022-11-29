-- 基础信息
local base_info = {
	group_id = 133309759
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {437}

--常用ID：
--{431,432} 开/关门
--{433} 启动电梯
--{438,439} 开/关风扇（权限等级3）
--{440} 权限操作台解除物件锁定

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
	{ config_id = 759001, gadget_id = 70330282, pos = { x = -2360.200, y = 49.920, z = 5328.800 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_ChiWangLevelRequire = 4}, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 759002, gadget_id = 70330283, pos = { x = -2364.419, y = 49.592, z = 5326.686 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 4}, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 27 },
	{ config_id = 759006, gadget_id = 70950157, pos = { x = -2362.643, y = 62.995, z = 5328.824 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1759003, name = "SELECT_OPTION_759003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_759003", action = "action_EVENT_SELECT_OPTION_759003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1759004, name = "GADGET_STATE_CHANGE_759004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_759004", action = "action_EVENT_GADGET_STATE_CHANGE_759004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1759005, name = "GROUP_LOAD_759005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_759005", action = "action_EVENT_GROUP_LOAD_759005", trigger_count = 0 }
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
		gadgets = { 759001, 759002, 759006 },
		regions = { },
		triggers = { "SELECT_OPTION_759003", "GADGET_STATE_CHANGE_759004", "GROUP_LOAD_759005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_759003(context, evt)
	-- 判断是gadgetid 759002 option_id 437
	if 759002 ~= evt.param1 then
		return false	
	end
	
	if 437 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_759003(context, evt)
	-- 将configid为 759002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 759002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_759004(context, evt)
	if 759002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_759004(context, evt)
	ScriptLib.KillEntityByConfigId(context, { config_id = 759001 })
		
	ScriptLib.KillEntityByConfigId(context, { config_id = 759006 })
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_759005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309759, 759002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_759005(context, evt)
	ScriptLib.KillEntityByConfigId(context, { config_id = 759001 })
		
	ScriptLib.KillEntityByConfigId(context, { config_id = 759006 })
	
	return 0
end

require "V3_1/PermissonOperator"