-- 基础信息
local base_info = {
	group_id = 133308241
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {440}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 241001, monster_id = 24040201, pos = { x = -1297.533, y = 46.227, z = 4552.716 }, rot = { x = 0.000, y = 187.406, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1004, area_id = 26 },
	{ config_id = 241003, monster_id = 24040301, pos = { x = -1299.206, y = 46.227, z = 4541.642 }, rot = { x = 0.000, y = 18.631, z = 0.000 }, level = 32, drop_id = 1000100, affix = { 5246 }, pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 241005, gadget_id = 70330287, pos = { x = -1269.143, y = 44.585, z = 4541.179 }, rot = { x = 0.000, y = 9.575, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 241006, gadget_id = 70330283, pos = { x = -1298.489, y = 46.402, z = 4546.676 }, rot = { x = 0.000, y = 325.303, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100006, SGV_CHAINLEVEL = 1}, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 杀了一个怪保底
	{ config_id = 1241002, name = "GROUP_LOAD_241002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_241002", action = "action_EVENT_GROUP_LOAD_241002", trigger_count = 0 },
	-- 杀了两个怪保底
	{ config_id = 1241004, name = "GROUP_LOAD_241004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_241004", action = "action_EVENT_GROUP_LOAD_241004", trigger_count = 0 },
	-- 点击misc中配置的option1
	{ config_id = 1241007, name = "SELECT_OPTION_241007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_241007", action = "action_EVENT_SELECT_OPTION_241007", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1241008, name = "GADGET_STATE_CHANGE_241008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_241008", action = "action_EVENT_GADGET_STATE_CHANGE_241008", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1241009, name = "GROUP_LOAD_241009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_241009", action = "action_EVENT_GROUP_LOAD_241009", trigger_count = 0 },
	{ config_id = 1241010, name = "ANY_MONSTER_DIE_241010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_241010", action = "action_EVENT_ANY_MONSTER_DIE_241010" },
	{ config_id = 1241011, name = "ANY_MONSTER_DIE_241011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_241011", action = "action_EVENT_ANY_MONSTER_DIE_241011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monsterdie", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1241013, name = "GROUP_LOAD_241013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_241013", action = "action_EVENT_GROUP_LOAD_241013", trigger_count = 0 }
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
		monsters = { 241001 },
		gadgets = { 241005, 241006 },
		regions = { },
		triggers = { "GROUP_LOAD_241002", "GROUP_LOAD_241004", "SELECT_OPTION_241007", "GADGET_STATE_CHANGE_241008", "GROUP_LOAD_241009", "ANY_MONSTER_DIE_241010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 241003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_241011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_241002(context, evt)
	-- 判断变量"monsterdie"为1
	if ScriptLib.GetGroupVariableValue(context, "monsterdie") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_241002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308241, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_241004(context, evt)
	-- 判断变量"monsterdie"为2
	if ScriptLib.GetGroupVariableValue(context, "monsterdie") ~= 2 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133308241, 241006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_241004(context, evt)
	-- 将configid为 241006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_241007(context, evt)
	-- 判断是gadgetid 241006 option_id 440
	if 241006 ~= evt.param1 then
		return false	
	end
	
	if 440 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_241007(context, evt)
	-- 将configid为 241006 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241006, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_241008(context, evt)
	if 241006 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_241008(context, evt)
	-- 将configid为 241005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "isLook" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLook", 1, 133308724) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_241009(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308241, 241006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_241009(context, evt)
	-- 将configid为 241005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_241010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_241010(context, evt)
	-- 将本组内变量名为 "monsterdie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308241, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_241011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_241011(context, evt)
	-- 将本组内变量名为 "monsterdie" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 241006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 241006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"