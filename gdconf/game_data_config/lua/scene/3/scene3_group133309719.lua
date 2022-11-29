-- 基础信息
local base_info = {
	group_id = 133309719
}

-- Trigger变量
local defs = {
	gadget_1 = 719005,
	gadget_2 = 719006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 719001, monster_id = 25210501, pos = { x = -2641.420, y = 218.132, z = 5923.325 }, rot = { x = 0.000, y = 330.295, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 719002, monster_id = 25210401, pos = { x = -2641.906, y = 217.439, z = 5947.853 }, rot = { x = 0.000, y = 214.916, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 719003, monster_id = 25210202, pos = { x = -2639.953, y = 215.538, z = 5944.143 }, rot = { x = 0.000, y = 264.438, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 719004, monster_id = 25210301, pos = { x = -2640.488, y = 215.766, z = 5926.453 }, rot = { x = 0.000, y = 267.099, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 719005, gadget_id = 70330265, pos = { x = -2643.004, y = 220.969, z = 5945.254 }, rot = { x = 0.000, y = 89.339, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 719006, gadget_id = 70330265, pos = { x = -2643.019, y = 220.972, z = 5925.872 }, rot = { x = 0.000, y = 89.145, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 719007, gadget_id = 70211101, pos = { x = -2637.791, y = 215.414, z = 5935.543 }, rot = { x = 0.000, y = 90.325, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1719008, name = "SELECT_OPTION_719008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_719008", action = "action_EVENT_SELECT_OPTION_719008" },
	{ config_id = 1719009, name = "SELECT_OPTION_719009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_719009", action = "action_EVENT_SELECT_OPTION_719009" },
	{ config_id = 1719010, name = "ANY_GADGET_DIE_719010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_719010", action = "action_EVENT_ANY_GADGET_DIE_719010", trigger_count = 0 },
	{ config_id = 1719011, name = "ANY_MONSTER_DIE_719011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_719011", trigger_count = 0 },
	{ config_id = 1719012, name = "ANY_GADGET_DIE_719012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_719012", action = "action_EVENT_ANY_GADGET_DIE_719012", trigger_count = 0 },
	{ config_id = 1719013, name = "VARIABLE_CHANGE_719013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_719013", action = "action_EVENT_VARIABLE_CHANGE_719013" },
	{ config_id = 1719014, name = "GROUP_LOAD_719014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_719014", action = "action_EVENT_GROUP_LOAD_719014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monsterDie", value = 0, no_refresh = true }
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
		gadgets = { 719005, 719006 },
		regions = { },
		triggers = { "SELECT_OPTION_719008", "SELECT_OPTION_719009", "ANY_GADGET_DIE_719010", "ANY_MONSTER_DIE_719011", "ANY_GADGET_DIE_719012", "VARIABLE_CHANGE_719013", "GROUP_LOAD_719014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 719002, 719003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 719001, 719004 },
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
function condition_EVENT_SELECT_OPTION_719008(context, evt)
	-- 判断是gadgetid 719005 option_id 785
	if 719005 ~= evt.param1 then
		return false	
	end
	
	if 785 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_719008(context, evt)
	-- 将configid为 196001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31005, 1, defs.gadget_1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 针对当前group内变量名为 "finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "finish", 1, 133310583) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除指定group： 133309719 ；指定config：719005；物件身上指定option：785；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133309719, 719005, 785) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_719009(context, evt)
	-- 判断是gadgetid 719006 option_id 785
	if 719006 ~= evt.param1 then
		return false	
	end
	
	if 785 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_719009(context, evt)
	-- 将configid为 196002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31005, 1, defs.gadget_2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 针对当前group内变量名为 "finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "finish", 1, 133310583) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 删除指定group： 133309719 ；指定config：719006；物件身上指定option：785；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133309719, 719006, 785) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_719010(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_719010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309719, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_719011(context, evt)
	-- 针对当前group内变量名为 "monsterDie" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monsterDie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_719012(context, evt)
	if defs.gadget_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_719012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309719, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_719013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monsterDie"为4
	if ScriptLib.GetGroupVariableValue(context, "monsterDie") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_719013(context, evt)
	-- 创建id为719007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 719007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_719014(context, evt)
	-- 判断变量"monsterDie"为4
	if ScriptLib.GetGroupVariableValue(context, "monsterDie") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_719014(context, evt)
	-- 创建id为719007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 719007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end