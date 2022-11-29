-- 基础信息
local base_info = {
	group_id = 133308349
}

-- Trigger变量
local defs = {
	gadget_1 = 349005,
	gadget_2 = 349006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 349001, monster_id = 24040101, pos = { x = -1561.256, y = -35.698, z = 4545.867 }, rot = { x = 0.000, y = 86.638, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 349002, monster_id = 24040301, pos = { x = -1562.714, y = -35.289, z = 4554.979 }, rot = { x = 0.000, y = 65.300, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 349005, gadget_id = 70330265, pos = { x = -1560.447, y = -32.603, z = 4553.287 }, rot = { x = 0.000, y = 8.660, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 349006, gadget_id = 70330265, pos = { x = -1560.593, y = -32.856, z = 4551.085 }, rot = { x = 0.000, y = 187.205, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 349007, gadget_id = 70211101, pos = { x = -1553.635, y = -39.779, z = 4551.203 }, rot = { x = 0.000, y = 98.908, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1349008, name = "SELECT_OPTION_349008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_349008", action = "action_EVENT_SELECT_OPTION_349008" },
	{ config_id = 1349009, name = "SELECT_OPTION_349009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_349009", action = "action_EVENT_SELECT_OPTION_349009" },
	{ config_id = 1349010, name = "ANY_GADGET_DIE_349010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_349010", action = "action_EVENT_ANY_GADGET_DIE_349010", trigger_count = 0 },
	{ config_id = 1349011, name = "ANY_MONSTER_DIE_349011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_349011", trigger_count = 0 },
	{ config_id = 1349012, name = "ANY_GADGET_DIE_349012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_349012", action = "action_EVENT_ANY_GADGET_DIE_349012", trigger_count = 0 },
	{ config_id = 1349013, name = "VARIABLE_CHANGE_349013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_349013", action = "action_EVENT_VARIABLE_CHANGE_349013" },
	{ config_id = 1349014, name = "GROUP_LOAD_349014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_349014", action = "action_EVENT_GROUP_LOAD_349014", trigger_count = 0 }
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
		gadgets = { 349005, 349006 },
		regions = { },
		triggers = { "SELECT_OPTION_349008", "SELECT_OPTION_349009", "ANY_GADGET_DIE_349010", "ANY_MONSTER_DIE_349011", "ANY_GADGET_DIE_349012", "VARIABLE_CHANGE_349013", "GROUP_LOAD_349014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 349002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 349001 },
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
function condition_EVENT_SELECT_OPTION_349008(context, evt)
	-- 判断是gadgetid 349005 option_id 785
	if 349005 ~= evt.param1 then
		return false	
	end
	
	if 785 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_349008(context, evt)
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
	
	-- 删除指定group： 133308349 ；指定config：349005；物件身上指定option：785；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308349, 349005, 785) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_349009(context, evt)
	-- 判断是gadgetid 349006 option_id 785
	if 349006 ~= evt.param1 then
		return false	
	end
	
	if 785 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_349009(context, evt)
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
	
	-- 删除指定group： 133308349 ；指定config：349006；物件身上指定option：785；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133308349, 349006, 785) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_349010(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_349010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308349, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_349011(context, evt)
	-- 针对当前group内变量名为 "monsterDie" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monsterDie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_349012(context, evt)
	if defs.gadget_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_349012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308349, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_349013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monsterDie"为2
	if ScriptLib.GetGroupVariableValue(context, "monsterDie") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_349013(context, evt)
	-- 创建id为349007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 349007 }) then
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
function condition_EVENT_GROUP_LOAD_349014(context, evt)
	-- 判断变量"monsterDie"为2
	if ScriptLib.GetGroupVariableValue(context, "monsterDie") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_349014(context, evt)
	-- 创建id为349007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 349007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end