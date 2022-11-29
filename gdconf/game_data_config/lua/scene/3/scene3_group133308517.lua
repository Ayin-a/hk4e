-- 基础信息
local base_info = {
	group_id = 133308517
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {431}

--常用ID：
--{431,432} 开/关门
--{433} 启动电梯
--{438,439} 开/关风扇（权限等级3）
--{440} 权限操作台解除物件锁定

local isQuest = 1

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
	{ config_id = 517001, gadget_id = 70330418, pos = { x = -1487.036, y = 86.470, z = 4464.614 }, rot = { x = 0.000, y = 9.393, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 26 },
	{ config_id = 517002, gadget_id = 70330283, pos = { x = -1479.584, y = 85.740, z = 4472.433 }, rot = { x = 0.000, y = 8.853, z = 0.000 }, level = 32, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100006, SGV_CHAINLEVEL = 1}, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1517003, name = "SELECT_OPTION_517003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_517003", action = "action_EVENT_SELECT_OPTION_517003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1517004, name = "GADGET_STATE_CHANGE_517004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_517004", action = "action_EVENT_GADGET_STATE_CHANGE_517004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1517005, name = "GROUP_LOAD_517005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_517005", action = "action_EVENT_GROUP_LOAD_517005", trigger_count = 0 },
	{ config_id = 1517006, name = "GADGET_CREATE_517006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_517006", action = "action_EVENT_GADGET_CREATE_517006", trigger_count = 0 }
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
	suite = 2,
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
		gadgets = { 517001, 517002 },
		regions = { },
		triggers = { "SELECT_OPTION_517003", "GADGET_STATE_CHANGE_517004", "GROUP_LOAD_517005", "GADGET_CREATE_517006" },
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
function condition_EVENT_SELECT_OPTION_517003(context, evt)
	-- 判断是gadgetid 517002 option_id 431
	if 517002 ~= evt.param1 then
		return false	
	end
	
	if 431 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_517003(context, evt)
	-- 将configid为 517002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 517002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知场景上的所有玩家播放名字为111 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 111, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_517004(context, evt)
	if 517002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_517004(context, evt)
	-- 将configid为 517001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 517001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_517005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308517, 517002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_517005(context, evt)
	-- 将configid为 517001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 517001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_517006(context, evt)
	if 517002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_517006(context, evt)
	LF_StOperatorState( context )
	
	return 0
end

require "V3_1/PermissonOperator"