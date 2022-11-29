-- 基础信息
local base_info = {
	group_id = 133310196
}

-- Trigger变量
local defs = {
	gadget_1 = 196001,
	gadget_2 = 196002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 196007, monster_id = 25210401, pos = { x = -2353.323, y = 200.678, z = 4520.491 }, rot = { x = 0.000, y = 3.933, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 196010, monster_id = 25210301, pos = { x = -2345.701, y = 197.781, z = 4546.682 }, rot = { x = 0.000, y = 214.916, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 196011, monster_id = 25210202, pos = { x = -2342.903, y = 198.817, z = 4544.417 }, rot = { x = 0.000, y = 264.438, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 },
	{ config_id = 196012, monster_id = 25210201, pos = { x = -2349.141, y = 201.142, z = 4522.574 }, rot = { x = 0.000, y = 283.466, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 196001, gadget_id = 70330265, pos = { x = -2350.921, y = 202.581, z = 4543.882 }, rot = { x = 345.277, y = 105.702, z = 359.135 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 196002, gadget_id = 70330265, pos = { x = -2356.111, y = 202.864, z = 4525.037 }, rot = { x = 345.052, y = 104.888, z = 359.390 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 196005, gadget_id = 70211101, pos = { x = -2343.293, y = 201.003, z = 4531.026 }, rot = { x = 358.306, y = 108.819, z = 359.423 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1196003, name = "SELECT_OPTION_196003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_196003", action = "action_EVENT_SELECT_OPTION_196003" },
	{ config_id = 1196004, name = "SELECT_OPTION_196004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_196004", action = "action_EVENT_SELECT_OPTION_196004" },
	{ config_id = 1196006, name = "ANY_GADGET_DIE_196006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_196006", action = "action_EVENT_ANY_GADGET_DIE_196006", trigger_count = 0 },
	{ config_id = 1196008, name = "ANY_MONSTER_DIE_196008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_196008", trigger_count = 0 },
	{ config_id = 1196009, name = "ANY_GADGET_DIE_196009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_196009", action = "action_EVENT_ANY_GADGET_DIE_196009", trigger_count = 0 },
	{ config_id = 1196014, name = "VARIABLE_CHANGE_196014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_196014", action = "action_EVENT_VARIABLE_CHANGE_196014" },
	{ config_id = 1196015, name = "GROUP_LOAD_196015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_196015", action = "action_EVENT_GROUP_LOAD_196015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "monsterDie", value = 0, no_refresh = true }
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
		gadgets = { 196001, 196002 },
		regions = { },
		triggers = { "SELECT_OPTION_196003", "SELECT_OPTION_196004", "ANY_GADGET_DIE_196006", "ANY_MONSTER_DIE_196008", "ANY_GADGET_DIE_196009", "VARIABLE_CHANGE_196014", "GROUP_LOAD_196015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 196010, 196011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 196007, 196012 },
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
function condition_EVENT_SELECT_OPTION_196003(context, evt)
	-- 判断是gadgetid 196001 option_id 785
	if 196001 ~= evt.param1 then
		return false	
	end
	
	if 785 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_196003(context, evt)
	-- 针对当前group内变量名为 "finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "finish", 1, 133310583) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 196001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133310196 ；指定config：196001；物件身上指定option：785；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133310196, 196001, 785) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31005, 1, defs.gadget_1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_196004(context, evt)
	-- 判断是gadgetid 196002 option_id 785
	if 196002 ~= evt.param1 then
		return false	
	end
	
	if 785 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_196004(context, evt)
	-- 针对当前group内变量名为 "finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "finish", 1, 133310583) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 196002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_2, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133310196 ；指定config：196002；物件身上指定option：785；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133310196, 196002, 785) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31005, 1, defs.gadget_2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_196006(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_196006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310196, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_196008(context, evt)
	-- 针对当前group内变量名为 "monsterDie" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monsterDie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_196009(context, evt)
	if defs.gadget_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_196009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310196, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_196014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monsterDie"为4
	if ScriptLib.GetGroupVariableValue(context, "monsterDie") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_196014(context, evt)
	-- 创建id为196005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 196005 }) then
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
function condition_EVENT_GROUP_LOAD_196015(context, evt)
	-- 判断变量"monsterDie"为4
	if ScriptLib.GetGroupVariableValue(context, "monsterDie") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_196015(context, evt)
	-- 创建id为196005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 196005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end