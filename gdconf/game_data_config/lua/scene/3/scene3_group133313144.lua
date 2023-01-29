-- 基础信息
local base_info = {
	group_id = 133313144
}

-- Trigger变量
local defs = {
	duration = 90,
	kill_sum = 5,
	group_id = 133313144,
	gadget_controller_id = 144004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144001, monster_id = 25310301, pos = { x = -443.189, y = 233.908, z = 5394.784 }, rot = { x = 0.000, y = 9.165, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 32 },
	{ config_id = 144010, monster_id = 25210403, pos = { x = -444.810, y = 233.550, z = 5394.814 }, rot = { x = 0.000, y = 2.994, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 32 },
	{ config_id = 144011, monster_id = 28060511, pos = { x = -440.416, y = 234.206, z = 5396.510 }, rot = { x = 0.000, y = 2.994, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 144013, monster_id = 26100401, pos = { x = -447.105, y = 232.649, z = 5397.086 }, rot = { x = 0.000, y = 2.994, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 144014, monster_id = 25410301, pos = { x = -444.837, y = 232.026, z = 5400.314 }, rot = { x = 0.000, y = 3.871, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144002, gadget_id = 70350082, pos = { x = -442.577, y = 233.294, z = 5397.980 }, rot = { x = 36.705, y = 8.670, z = 25.823 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 144003, gadget_id = 70211021, pos = { x = -443.060, y = 232.372, z = 5400.355 }, rot = { x = 40.664, y = 356.097, z = 17.941 }, level = 26, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 144004, gadget_id = 70360001, pos = { x = -443.271, y = 232.715, z = 5399.243 }, rot = { x = 36.693, y = 8.701, z = 25.842 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1144005, name = "GROUP_LOAD_144005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_144005", action = "action_EVENT_GROUP_LOAD_144005", trigger_count = 0 },
	{ config_id = 1144006, name = "CHALLENGE_SUCCESS_144006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_144006", trigger_count = 0 },
	{ config_id = 1144007, name = "CHALLENGE_FAIL_144007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_144007", trigger_count = 0 },
	{ config_id = 1144008, name = "GADGET_CREATE_144008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_144008", action = "action_EVENT_GADGET_CREATE_144008", trigger_count = 0 },
	{ config_id = 1144009, name = "SELECT_OPTION_144009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_144009", action = "action_EVENT_SELECT_OPTION_144009", trigger_count = 0 },
	{ config_id = 1144012, name = "ANY_MONSTER_DIE_144012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144012", action = "action_EVENT_ANY_MONSTER_DIE_144012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true },
	{ config_id = 2, name = "monsterdie", value = 0, no_refresh = true }
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
		gadgets = { 144002, 144004 },
		regions = { },
		triggers = { "GROUP_LOAD_144005", "CHALLENGE_SUCCESS_144006", "CHALLENGE_FAIL_144007", "GADGET_CREATE_144008", "SELECT_OPTION_144009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 144001, 144010, 144011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_144012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 144013, 144014 },
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
function condition_EVENT_GROUP_LOAD_144005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_144005(context, evt)
	-- 将configid为 144002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为144004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 144004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313144, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_144006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 144002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为144003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 144003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_144007(context, evt)
	-- 将configid为 144002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为144004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 144004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133313144, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_144008(context, evt)
	if 144004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_144008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133313144, 144004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_144009(context, evt)
	-- 判断是gadgetid 144004 option_id 177
	if 144004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_144009(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 144002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monsterdie"为0
	if ScriptLib.GetGroupVariableValue(context, "monsterdie") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313144, 3)
	
	-- 将本组内变量名为 "monsterdie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "monsterdie", 1, 133313144) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end