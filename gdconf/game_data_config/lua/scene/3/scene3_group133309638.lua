-- 基础信息
local base_info = {
	group_id = 133309638
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
	{ config_id = 638001, gadget_id = 70330442, pos = { x = -2398.183, y = 31.130, z = 5534.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 27 },
	{ config_id = 638002, gadget_id = 70330283, pos = { x = -2398.183, y = 21.592, z = 5539.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100004, SGV_CHAINLEVEL = 5}, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1638003, name = "SELECT_OPTION_638003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_638003", action = "action_EVENT_SELECT_OPTION_638003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1638004, name = "GADGET_STATE_CHANGE_638004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_638004", action = "action_EVENT_GADGET_STATE_CHANGE_638004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1638005, name = "GROUP_LOAD_638005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_638005", action = "action_EVENT_GROUP_LOAD_638005", trigger_count = 0 },
	{ config_id = 1638006, name = "QUEST_START_638006", event = EventType.EVENT_QUEST_START, source = "7308308", condition = "condition_EVENT_QUEST_START_638006", action = "action_EVENT_QUEST_START_638006", trigger_count = 0 }
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
		gadgets = { 638001, 638002 },
		regions = { },
		triggers = { "SELECT_OPTION_638003", "GADGET_STATE_CHANGE_638004", "GROUP_LOAD_638005", "QUEST_START_638006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_638003(context, evt)
	-- 判断是gadgetid 638002 option_id 449
	if 638002 ~= evt.param1 then
		return false	
	end
	
	if 449 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_638003(context, evt)
	-- 将configid为 638002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 638002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_638004(context, evt)
	if 638002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_638004(context, evt)
	-- 将configid为 638001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 638001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "active4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active4", 1, 133309031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_638005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133309638, 638002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_638005(context, evt)
	-- 将configid为 638001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 638001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "active4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active4", 1, 133309031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_638006(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133309638, 638002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_638006(context, evt)
	-- 将configid为 638002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 638002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"