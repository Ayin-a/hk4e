-- 基础信息
local base_info = {
	group_id = 133308234
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {431}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 234001, monster_id = 24040201, pos = { x = -1459.640, y = 1.422, z = 4753.357 }, rot = { x = 0.000, y = 11.766, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 234003, gadget_id = 70330416, pos = { x = -1460.851, y = 1.588, z = 4746.685 }, rot = { x = 0.000, y = 8.392, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 234004, gadget_id = 70330283, pos = { x = -1456.015, y = 1.422, z = 4748.722 }, rot = { x = 0.000, y = 10.499, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100006, SGV_CHAINLEVEL = 1}, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1234005, name = "SELECT_OPTION_234005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_234005", action = "action_EVENT_SELECT_OPTION_234005", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1234006, name = "GADGET_STATE_CHANGE_234006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_234006", action = "action_EVENT_GADGET_STATE_CHANGE_234006", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1234007, name = "GROUP_LOAD_234007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_234007", action = "action_EVENT_GROUP_LOAD_234007", trigger_count = 0 },
	{ config_id = 1234008, name = "ANY_MONSTER_DIE_234008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_234008", action = "action_EVENT_ANY_MONSTER_DIE_234008", trigger_count = 0 },
	{ config_id = 1234009, name = "GROUP_LOAD_234009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_234009", action = "action_EVENT_GROUP_LOAD_234009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monsterdie", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 234002, monster_id = 24040201, pos = { x = -1463.686, y = 1.656, z = 4754.204 }, rot = { x = 0.000, y = 7.472, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1004, area_id = 26 }
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
		monsters = { 234001 },
		gadgets = { 234003, 234004 },
		regions = { },
		triggers = { "SELECT_OPTION_234005", "GADGET_STATE_CHANGE_234006", "GROUP_LOAD_234007", "ANY_MONSTER_DIE_234008", "GROUP_LOAD_234009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_234005(context, evt)
	-- 判断是gadgetid 234004 option_id 431
	if 234004 ~= evt.param1 then
		return false	
	end
	
	if 431 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_234005(context, evt)
	-- 将configid为 234004 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 234004, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_234006(context, evt)
	if 234004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_234006(context, evt)
	-- 将configid为 234003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 234003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_234007(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308234, 234004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_234007(context, evt)
	-- 将configid为 234003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 234003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_234008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133308234) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_234008(context, evt)
	-- 将本组内变量名为 "monsterdie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 234004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 234004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_234009(context, evt)
	-- 判断变量"monsterdie"为1
	if ScriptLib.GetGroupVariableValue(context, "monsterdie") ~= 1 then
			return false
	end
	
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133308234, 234004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_234009(context, evt)
	-- 将configid为 234004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 234004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/PermissonOperator"