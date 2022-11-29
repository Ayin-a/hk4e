-- 基础信息
local base_info = {
	group_id = 133310138
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 138004, monster_id = 25210203, pos = { x = -3166.083, y = 271.768, z = 4759.546 }, rot = { x = 0.000, y = 291.859, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9003, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 138001, gadget_id = 70710221, pos = { x = -3164.758, y = 271.838, z = 4758.736 }, rot = { x = 0.000, y = 272.807, z = 0.000 }, level = 1, persistent = true, area_id = 28 },
	{ config_id = 138006, gadget_id = 70360001, pos = { x = -3165.356, y = 272.065, z = 4758.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1138002, name = "ANY_MONSTER_DIE_138002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_138002", action = "action_EVENT_ANY_MONSTER_DIE_138002" },
	{ config_id = 1138003, name = "GROUP_LOAD_138003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_138003", action = "action_EVENT_GROUP_LOAD_138003", trigger_count = 0 },
	{ config_id = 1138005, name = "GROUP_LOAD_138005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_138005", action = "action_EVENT_GROUP_LOAD_138005", trigger_count = 0 },
	{ config_id = 1138007, name = "SELECT_OPTION_138007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_138007", action = "action_EVENT_SELECT_OPTION_138007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "nomonster", value = 0, no_refresh = true },
	{ config_id = 2, name = "opengate", value = 0, no_refresh = true }
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
		monsters = { 138004 },
		gadgets = { 138001, 138006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_138002", "GROUP_LOAD_138003", "GROUP_LOAD_138005", "SELECT_OPTION_138007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_138002(context, evt)
	--判断死亡怪物的configid是否为 138004
	if evt.param1 ~= 138004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_138002(context, evt)
	-- 将本组内变量名为 "nomonster" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "nomonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310138, 138006, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_138003(context, evt)
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
function action_EVENT_GROUP_LOAD_138003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310138, 138006, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_138005(context, evt)
	-- 判断变量"opengate"为1
	if ScriptLib.GetGroupVariableValue(context, "opengate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_138005(context, evt)
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133310031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 138001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 138001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_138007(context, evt)
	-- 判断是gadgetid 138006 option_id 1
	if 138006 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_138007(context, evt)
	-- 将configid为 138001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 138001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "active" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "active", 1, 133310031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "opengate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "opengate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除指定group： 133310138 ；指定config：138006；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133310138, 138006, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end