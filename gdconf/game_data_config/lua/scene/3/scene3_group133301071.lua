-- 基础信息
local base_info = {
	group_id = 133301071
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 71003, monster_id = 24030101, pos = { x = -782.892, y = 104.336, z = 3377.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "遗迹龙兽", pose_id = 102, area_id = 23 },
	{ config_id = 71004, monster_id = 24020401, pos = { x = -791.767, y = 104.047, z = 3408.938 }, rot = { x = 0.000, y = 151.163, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 23 },
	{ config_id = 71005, monster_id = 24020301, pos = { x = -769.529, y = 103.257, z = 3373.837 }, rot = { x = 0.000, y = 8.126, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 71006, gadget_id = 70220103, pos = { x = -811.109, y = 114.717, z = 3422.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 71008, gadget_id = 70350081, pos = { x = -794.910, y = 104.057, z = 3409.388 }, rot = { x = 359.303, y = 39.590, z = 359.975 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 23 },
	{ config_id = 71009, gadget_id = 70360324, pos = { x = -794.594, y = 105.336, z = 3409.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1071007, name = "ANY_MONSTER_DIE_71007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71007", action = "action_EVENT_ANY_MONSTER_DIE_71007", trigger_count = 0 },
	{ config_id = 1071010, name = "GADGET_STATE_CHANGE_71010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71010", action = "action_EVENT_GADGET_STATE_CHANGE_71010", trigger_count = 0 },
	{ config_id = 1071011, name = "SELECT_OPTION_71011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_71011", action = "action_EVENT_SELECT_OPTION_71011", trigger_count = 0 },
	{ config_id = 1071012, name = "GADGET_STATE_CHANGE_71012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_71012", action = "action_EVENT_GADGET_STATE_CHANGE_71012", trigger_count = 0 },
	{ config_id = 1071013, name = "GROUP_LOAD_71013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_71013", action = "action_EVENT_GROUP_LOAD_71013", trigger_count = 0 },
	{ config_id = 1071014, name = "GADGET_CREATE_71014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_71014", action = "action_EVENT_GADGET_CREATE_71014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 71001, gadget_id = 70330197, pos = { x = -807.834, y = 104.793, z = 3417.116 }, rot = { x = 0.000, y = 269.989, z = 0.000 }, level = 30, persistent = true, area_id = 23 }
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
		monsters = { 71003, 71004, 71005 },
		gadgets = { 71006, 71008, 71009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_71007", "GADGET_STATE_CHANGE_71010", "SELECT_OPTION_71011", "GADGET_STATE_CHANGE_71012", "GROUP_LOAD_71013", "GADGET_CREATE_71014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71007(context, evt)
	-- 将configid为 71008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "camera" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "camera", 1, 133301703) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71010(context, evt)
	if 71008 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301071, 71009, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_71011(context, evt)
	-- 判断是gadgetid 71009 option_id 1
	if 71009 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_71011(context, evt)
	-- 将本组内变量名为 "open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "door" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door", 1, 133301742) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 71008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 71008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_71012(context, evt)
	if 71008 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_71012(context, evt)
	-- 删除指定group： 133301071 ；指定config：71009；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133301071, 71009, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_71013(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "open", 133301071) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_71013(context, evt)
	-- 将本组内变量名为 "door" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "door", 1, 133301742) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_71014(context, evt)
	if 71008 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_71014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301071, 71009, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end