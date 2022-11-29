-- 基础信息
local base_info = {
	group_id = 133310140
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 140001, monster_id = 25210203, pos = { x = -3208.233, y = 262.287, z = 4798.500 }, rot = { x = 0.000, y = 61.334, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9503, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 140002, gadget_id = 70710221, pos = { x = -3208.447, y = 261.795, z = 4795.945 }, rot = { x = 0.000, y = 92.775, z = 0.000 }, level = 1, persistent = true, area_id = 28 },
	{ config_id = 140009, gadget_id = 70360001, pos = { x = -3207.685, y = 262.116, z = 4795.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1140005, name = "ANY_MONSTER_DIE_140005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_140005", action = "action_EVENT_ANY_MONSTER_DIE_140005" },
	{ config_id = 1140006, name = "GROUP_LOAD_140006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_140006", action = "action_EVENT_GROUP_LOAD_140006", trigger_count = 0 },
	{ config_id = 1140007, name = "GROUP_LOAD_140007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_140007", action = "action_EVENT_GROUP_LOAD_140007", trigger_count = 0 },
	{ config_id = 1140008, name = "SELECT_OPTION_140008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_140008", action = "action_EVENT_SELECT_OPTION_140008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "nomonster", value = 0, no_refresh = true },
	{ config_id = 2, name = "opengate", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1140003, name = "ANY_MONSTER_DIE_140003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_140003", action = "action_EVENT_ANY_MONSTER_DIE_140003" },
		{ config_id = 1140004, name = "GROUP_LOAD_140004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_140004", action = "action_EVENT_GROUP_LOAD_140004", trigger_count = 0 }
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
		monsters = { 140001 },
		gadgets = { 140002, 140009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_140005", "GROUP_LOAD_140006", "GROUP_LOAD_140007", "SELECT_OPTION_140008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_140005(context, evt)
	--判断死亡怪物的configid是否为 140001
	if evt.param1 ~= 140001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_140005(context, evt)
	-- 将本组内变量名为 "nomonster" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "nomonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310140, 140009, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_140006(context, evt)
	-- 判断变量"nomonster"为1
	if ScriptLib.GetGroupVariableValue(context, "nomonster") ~= 1 then
			return false
	end
	
	-- 判断变量"opengate"为0
	if ScriptLib.GetGroupVariableValue(context, "opengate") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_140006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310140, 140009, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_140007(context, evt)
	-- 判断变量"opengate"为1
	if ScriptLib.GetGroupVariableValue(context, "opengate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_140007(context, evt)
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133310033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 140002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_140008(context, evt)
	-- 判断是gadgetid 140009 option_id 1
	if 140009 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_140008(context, evt)
	-- 将configid为 140002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133310033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "opengate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "opengate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133310140 ；指定config：140009；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133310140, 140009, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end