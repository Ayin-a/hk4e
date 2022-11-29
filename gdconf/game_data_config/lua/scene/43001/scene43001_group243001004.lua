-- 基础信息
local base_info = {
	group_id = 243001004
}

-- Trigger变量
local defs = {
	gadget_1 = 4001,
	group_1 = 243001004,
	monster_1 = 4007,
	challenge_father = 999,
	challenge1 = 120,
	group_core = 243001005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4007, monster_id = 25030201, pos = { x = 24.855, y = -19.559, z = -54.644 }, rot = { x = 0.000, y = 20.512, z = 0.000 }, level = 11, affix = { 1008 }, MonsterFlag = 55 },
	{ config_id = 4008, monster_id = 25030201, pos = { x = 26.127, y = -19.512, z = -61.427 }, rot = { x = 0.000, y = 20.512, z = 0.000 }, level = 11, affix = { 1008 }, MonsterFlag = 55 },
	{ config_id = 4009, monster_id = 25030301, pos = { x = 41.748, y = -19.559, z = -57.674 }, rot = { x = 0.000, y = 251.919, z = 0.000 }, level = 11, affix = { 1008 }, MonsterFlag = 55 },
	{ config_id = 4010, monster_id = 25030301, pos = { x = 34.517, y = -19.559, z = -63.176 }, rot = { x = 0.000, y = 352.907, z = 0.000 }, level = 11, affix = { 1008 }, MonsterFlag = 55 },
	{ config_id = 4011, monster_id = 25010701, pos = { x = 40.671, y = -19.558, z = -49.979 }, rot = { x = 0.000, y = 206.538, z = 0.000 }, level = 11, affix = { 1008 }, MonsterFlag = 55 },
	{ config_id = 4012, monster_id = 23020101, pos = { x = 34.366, y = -19.558, z = -44.938 }, rot = { x = 0.000, y = 158.337, z = 0.000 }, level = 11, affix = { 1008 }, MonsterFlag = 55 },
	{ config_id = 4013, monster_id = 23030101, pos = { x = 28.692, y = -19.559, z = -45.345 }, rot = { x = 0.000, y = 179.650, z = 0.000 }, level = 11, affix = { 1008 }, MonsterFlag = 55 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70360010, pos = { x = 32.471, y = -19.793, z = -52.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004002, name = "GADGET_CREATE_4002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4002", action = "action_EVENT_GADGET_CREATE_4002" },
	{ config_id = 1004003, name = "SELECT_OPTION_4003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4003", action = "action_EVENT_SELECT_OPTION_4003", trigger_count = 0 },
	{ config_id = 1004004, name = "ANY_MONSTER_DIE_4004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4004", action = "action_EVENT_ANY_MONSTER_DIE_4004", trigger_count = 0 },
	{ config_id = 1004005, name = "CHALLENGE_SUCCESS_4005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "120", condition = "", action = "" },
	{ config_id = 1004006, name = "CHALLENGE_FAIL_4006", event = EventType.EVENT_CHALLENGE_FAIL, source = "120", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4006" },
	{ config_id = 1004014, name = "ANY_MONSTER_LIVE_4014", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4014", action = "action_EVENT_ANY_MONSTER_LIVE_4014", trigger_count = 0 },
	{ config_id = 1004015, name = "ANY_MONSTER_DIE_4015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4015", action = "action_EVENT_ANY_MONSTER_DIE_4015", trigger_count = 0 },
	{ config_id = 1004016, name = "VARIABLE_CHANGE_4016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_4016", action = "action_EVENT_VARIABLE_CHANGE_4016" },
	{ config_id = 1004017, name = "DUNGEON_SETTLE_4017", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_4017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "key", value = 0, no_refresh = false },
	{ config_id = 2, name = "key1", value = 0, no_refresh = false }
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
		gadgets = { 4001 },
		regions = { },
		triggers = { "GADGET_CREATE_4002", "SELECT_OPTION_4003", "ANY_MONSTER_DIE_4004", "CHALLENGE_SUCCESS_4005", "CHALLENGE_FAIL_4006", "ANY_MONSTER_LIVE_4014", "ANY_MONSTER_DIE_4015", "VARIABLE_CHANGE_4016", "DUNGEON_SETTLE_4017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4007, 4008, 4009, 4010, 4011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4004", "CHALLENGE_SUCCESS_4005", "CHALLENGE_FAIL_4006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4012, 4013 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4004", "CHALLENGE_SUCCESS_4005", "CHALLENGE_FAIL_4006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_4002(context, evt)
	if defs.gadget_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4003(context, evt)
	-- 判断是gadgetid 4001 option_id 7
	if defs.gadget_1 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, defs.group_1, 2)
	
	-- 删除指定group： 243001004 ；指定config：4001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, defs.group_1, defs.gadget_1, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 4001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_1, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, defs.group_core, EntityType.GADGET, 5020 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, defs.group_1) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4004(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, defs.group_1, 3)
	
	-- 将本组内变量名为 "key" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "key", 99) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_4006(context, evt)
	-- 改变指定group组243001013中， configid为4001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_1, defs.gadget_1, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_1, defs.gadget_1, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = defs.group_1, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_4014(context, evt)
	if defs.monster_1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_4014(context, evt)
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineFatherIndex",{defs.challenge_father})
		ScriptLib.ExecuteGroupLua(context, defs.group_core, "DefineChildChallengeScore",{ 1, 1})
		ScriptLib.ExecuteGroupLua(context, defs.group_core, "AttachChildChallengeFromDiffGroup",{defs.challenge1, 233, 7})
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4015(context, evt)
	if 0 >= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4015(context, evt)
	-- 针对当前group内变量名为 "key" 的变量，进行修改，变化值为 0
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "key1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	
	--ScriptLib.PrintContextLog(context, "怪物死亡"..key)
	
	ScriptLib.ExecuteGroupLua(context, defs.group_core, "AddChildChallengeScore", {1})
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_4016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"key1"为7
	if ScriptLib.GetGroupVariableValue(context, "key1") ~= 7 then
			return false
	end
	
	-- 判断变量"success"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "success", 243001005) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_4016(context, evt)
	-- 针对当前group内变量名为 "f1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "success", 1, defs.group_core) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_4017(context, evt)
	ScriptLib.StopGallery(context, 7007, false)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_1, 3)
		
	return 0
end