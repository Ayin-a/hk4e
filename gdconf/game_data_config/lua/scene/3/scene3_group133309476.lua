-- 基础信息
local base_info = {
	group_id = 133309476
}

-- Trigger变量
local defs = {
	gadget_1 = 476005,
	gadget_2 = 476006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 476001, monster_id = 25210303, pos = { x = -2801.791, y = 162.393, z = 5184.045 }, rot = { x = 0.000, y = 31.029, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 476002, monster_id = 25210302, pos = { x = -2772.606, y = 161.204, z = 5184.817 }, rot = { x = 0.000, y = 298.247, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 476003, monster_id = 25210202, pos = { x = -2776.073, y = 160.859, z = 5183.416 }, rot = { x = 0.000, y = 22.115, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 476004, monster_id = 25210302, pos = { x = -2798.063, y = 161.838, z = 5182.823 }, rot = { x = 0.000, y = 337.961, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 476005, gadget_id = 70330265, pos = { x = -2775.253, y = 165.624, z = 5187.135 }, rot = { x = 0.000, y = 180.200, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 476006, gadget_id = 70330265, pos = { x = -2799.001, y = 165.715, z = 5187.063 }, rot = { x = 0.000, y = 180.368, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 476007, gadget_id = 70211101, pos = { x = -2787.237, y = 159.846, z = 5166.515 }, rot = { x = 0.000, y = 181.515, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1476008, name = "SELECT_OPTION_476008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_476008", action = "action_EVENT_SELECT_OPTION_476008" },
	{ config_id = 1476009, name = "SELECT_OPTION_476009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_476009", action = "action_EVENT_SELECT_OPTION_476009" },
	{ config_id = 1476010, name = "ANY_GADGET_DIE_476010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_476010", action = "action_EVENT_ANY_GADGET_DIE_476010", trigger_count = 0 },
	{ config_id = 1476011, name = "ANY_MONSTER_DIE_476011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_476011", trigger_count = 0 },
	{ config_id = 1476012, name = "ANY_GADGET_DIE_476012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_476012", action = "action_EVENT_ANY_GADGET_DIE_476012", trigger_count = 0 },
	{ config_id = 1476013, name = "VARIABLE_CHANGE_476013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_476013", action = "action_EVENT_VARIABLE_CHANGE_476013" },
	{ config_id = 1476014, name = "GROUP_LOAD_476014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_476014", action = "action_EVENT_GROUP_LOAD_476014", trigger_count = 0 }
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
		gadgets = { 476005, 476006 },
		regions = { },
		triggers = { "SELECT_OPTION_476008", "SELECT_OPTION_476009", "ANY_GADGET_DIE_476010", "ANY_MONSTER_DIE_476011", "ANY_GADGET_DIE_476012", "VARIABLE_CHANGE_476013", "GROUP_LOAD_476014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 476002, 476003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 476001, 476004 },
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
function condition_EVENT_SELECT_OPTION_476008(context, evt)
	-- 判断是gadgetid 476005 option_id 785
	if 476005 ~= evt.param1 then
		return false	
	end
	
	if 785 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_476008(context, evt)
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
	
	-- 删除指定group： 133309476 ；指定config：476005；物件身上指定option：785；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133309476, 476005, 785) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_476009(context, evt)
	-- 判断是gadgetid 476006 option_id 785
	if 476006 ~= evt.param1 then
		return false	
	end
	
	if 785 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_476009(context, evt)
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
	
	-- 删除指定group： 133309476 ；指定config：476006；物件身上指定option：785；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133309476, 476006, 785) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_476010(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_476010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309476, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_476011(context, evt)
	-- 针对当前group内变量名为 "monsterDie" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monsterDie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_476012(context, evt)
	if defs.gadget_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_476012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309476, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_476013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monsterDie"为4
	if ScriptLib.GetGroupVariableValue(context, "monsterDie") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_476013(context, evt)
	-- 创建id为476007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 476007 }) then
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
function condition_EVENT_GROUP_LOAD_476014(context, evt)
	-- 判断变量"monsterDie"为4
	if ScriptLib.GetGroupVariableValue(context, "monsterDie") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_476014(context, evt)
	-- 创建id为476007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 476007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end