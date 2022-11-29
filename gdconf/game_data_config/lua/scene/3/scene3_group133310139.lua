-- 基础信息
local base_info = {
	group_id = 133310139
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 139004, monster_id = 25210203, pos = { x = -3207.073, y = 269.470, z = 4760.568 }, rot = { x = 0.000, y = 49.031, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9502, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 139001, gadget_id = 70710221, pos = { x = -3205.522, y = 269.721, z = 4758.662 }, rot = { x = 0.000, y = 8.759, z = 0.000 }, level = 1, persistent = true, area_id = 28 },
	{ config_id = 139009, gadget_id = 70360001, pos = { x = -3205.415, y = 269.885, z = 4759.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1139005, name = "ANY_MONSTER_DIE_139005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_139005", action = "action_EVENT_ANY_MONSTER_DIE_139005" },
	{ config_id = 1139006, name = "GROUP_LOAD_139006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_139006", action = "action_EVENT_GROUP_LOAD_139006", trigger_count = 0 },
	{ config_id = 1139007, name = "GROUP_LOAD_139007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_139007", action = "action_EVENT_GROUP_LOAD_139007", trigger_count = 0 },
	{ config_id = 1139008, name = "SELECT_OPTION_139008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_139008", action = "action_EVENT_SELECT_OPTION_139008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "nomonster", value = 0, no_refresh = true },
	{ config_id = 2, name = "opengate", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1139002, name = "GROUP_LOAD_139002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_139002", action = "action_EVENT_GROUP_LOAD_139002", trigger_count = 0 },
		{ config_id = 1139003, name = "ANY_MONSTER_DIE_139003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_139003", action = "action_EVENT_ANY_MONSTER_DIE_139003" }
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
		monsters = { 139004 },
		gadgets = { 139001, 139009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_139005", "GROUP_LOAD_139006", "GROUP_LOAD_139007", "SELECT_OPTION_139008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_139005(context, evt)
	--判断死亡怪物的configid是否为 139004
	if evt.param1 ~= 139004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_139005(context, evt)
	-- 将本组内变量名为 "nomonster" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "nomonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310139, 139009, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_139006(context, evt)
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
function action_EVENT_GROUP_LOAD_139006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310139, 139009, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_139007(context, evt)
	-- 判断变量"opengate"为1
	if ScriptLib.GetGroupVariableValue(context, "opengate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_139007(context, evt)
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133310032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 139001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_139008(context, evt)
	-- 判断是gadgetid 139009 option_id 1
	if 139009 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_139008(context, evt)
	-- 将configid为 139001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 139001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133310032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "opengate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "opengate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133310139 ；指定config：139009；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133310139, 139009, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end