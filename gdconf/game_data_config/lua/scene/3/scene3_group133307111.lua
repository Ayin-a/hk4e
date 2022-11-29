-- 基础信息
local base_info = {
	group_id = 133307111
}

-- Trigger变量
local defs = {
	gadget_1 = 111005,
	gadget_2 = 111006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 111001, monster_id = 26090701, pos = { x = -1810.955, y = 154.101, z = 5680.774 }, rot = { x = 0.000, y = 3.933, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 27 },
	{ config_id = 111002, monster_id = 26090601, pos = { x = -1822.218, y = 154.951, z = 5685.816 }, rot = { x = 0.000, y = 198.081, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 27 },
	{ config_id = 111003, monster_id = 26090601, pos = { x = -1818.992, y = 154.731, z = 5685.293 }, rot = { x = 0.000, y = 235.059, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 27 },
	{ config_id = 111004, monster_id = 26090701, pos = { x = -1808.322, y = 154.200, z = 5682.629 }, rot = { x = 0.000, y = 283.466, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 27 },
	{ config_id = 111015, monster_id = 26090601, pos = { x = -1820.448, y = 155.163, z = 5687.266 }, rot = { x = 0.000, y = 208.189, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 27 },
	{ config_id = 111016, monster_id = 26090701, pos = { x = -1808.291, y = 154.070, z = 5680.467 }, rot = { x = 0.000, y = 283.466, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 111005, gadget_id = 70330265, pos = { x = -1816.837, y = 160.741, z = 5685.836 }, rot = { x = 0.000, y = 248.221, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 111006, gadget_id = 70330265, pos = { x = -1812.736, y = 160.683, z = 5684.161 }, rot = { x = 0.000, y = 157.899, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 111007, gadget_id = 70211101, pos = { x = -1806.326, y = 153.813, z = 5675.707 }, rot = { x = 0.820, y = 332.761, z = 1.592 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1111008, name = "SELECT_OPTION_111008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_111008", action = "action_EVENT_SELECT_OPTION_111008" },
	{ config_id = 1111009, name = "SELECT_OPTION_111009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_111009", action = "action_EVENT_SELECT_OPTION_111009" },
	{ config_id = 1111010, name = "ANY_GADGET_DIE_111010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_111010", action = "action_EVENT_ANY_GADGET_DIE_111010", trigger_count = 0 },
	{ config_id = 1111011, name = "ANY_MONSTER_DIE_111011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_111011", trigger_count = 0 },
	{ config_id = 1111012, name = "ANY_GADGET_DIE_111012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_111012", action = "action_EVENT_ANY_GADGET_DIE_111012", trigger_count = 0 },
	{ config_id = 1111013, name = "VARIABLE_CHANGE_111013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_111013", action = "action_EVENT_VARIABLE_CHANGE_111013" },
	{ config_id = 1111014, name = "GROUP_LOAD_111014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_111014", action = "action_EVENT_GROUP_LOAD_111014", trigger_count = 0 }
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
		gadgets = { 111005, 111006 },
		regions = { },
		triggers = { "SELECT_OPTION_111008", "SELECT_OPTION_111009", "ANY_GADGET_DIE_111010", "ANY_MONSTER_DIE_111011", "ANY_GADGET_DIE_111012", "VARIABLE_CHANGE_111013", "GROUP_LOAD_111014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 111002, 111003, 111015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 111001, 111004, 111016 },
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
function condition_EVENT_SELECT_OPTION_111008(context, evt)
	-- 判断是gadgetid 111005 option_id 785
	if 111005 ~= evt.param1 then
		return false	
	end
	
	if 785 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_111008(context, evt)
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
	
	-- 删除指定group： 133307111 ；指定config：111005；物件身上指定option：785；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307111, 111005, 785) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_111009(context, evt)
	-- 判断是gadgetid 111006 option_id 785
	if 111006 ~= evt.param1 then
		return false	
	end
	
	if 785 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_111009(context, evt)
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
	
	-- 删除指定group： 133307111 ；指定config：111006；物件身上指定option：785；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133307111, 111006, 785) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_111010(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_111010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307111, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_111011(context, evt)
	-- 针对当前group内变量名为 "monsterDie" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monsterDie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_111012(context, evt)
	if defs.gadget_2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_111012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307111, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_111013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monsterDie"为6
	if ScriptLib.GetGroupVariableValue(context, "monsterDie") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_111013(context, evt)
	-- 创建id为111007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 111007 }) then
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
function condition_EVENT_GROUP_LOAD_111014(context, evt)
	-- 判断变量"monsterDie"为6
	if ScriptLib.GetGroupVariableValue(context, "monsterDie") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_111014(context, evt)
	-- 创建id为111007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 111007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end