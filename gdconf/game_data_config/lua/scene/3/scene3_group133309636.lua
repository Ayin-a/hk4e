-- 基础信息
local base_info = {
	group_id = 133309636
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {449}

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
	{ config_id = 636001, gadget_id = 70330442, pos = { x = -2318.180, y = 31.170, z = 5603.500 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 },
	{ config_id = 636002, gadget_id = 70330283, pos = { x = -2318.180, y = 21.592, z = 5597.358 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 5}, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1636003, name = "SELECT_OPTION_636003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_636003", action = "action_EVENT_SELECT_OPTION_636003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1636004, name = "GADGET_STATE_CHANGE_636004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_636004", action = "action_EVENT_GADGET_STATE_CHANGE_636004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1636005, name = "GROUP_LOAD_636005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_636005", action = "action_EVENT_GROUP_LOAD_636005", trigger_count = 0 },
	{ config_id = 1636006, name = "QUEST_START_636006", event = EventType.EVENT_QUEST_START, source = "7308308", condition = "condition_EVENT_QUEST_START_636006", action = "action_EVENT_QUEST_START_636006", trigger_count = 0 }
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
		gadgets = { 636001, 636002 },
		regions = { },
		triggers = { "SELECT_OPTION_636003", "GADGET_STATE_CHANGE_636004", "GROUP_LOAD_636005", "QUEST_START_636006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_636003(context, evt)
	-- 判断是gadgetid 636002 option_id 449
	if 636002 ~= evt.param1 then
		return false	
	end
	
	if 449 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_636003(context, evt)
	-- 将configid为 636002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 636002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_636004(context, evt)
	if 636002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_636004(context, evt)
	-- 将configid为 636001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 636001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "active2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active2", 1, 133309031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_636005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309636, 636002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_636005(context, evt)
	-- 将configid为 636001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 636001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "active2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active2", 1, 133309031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_636006(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133309636, 636002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_636006(context, evt)
	-- 将configid为 636002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 636002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"