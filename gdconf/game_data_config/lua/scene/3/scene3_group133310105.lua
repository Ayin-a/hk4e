-- 基础信息
local base_info = {
	group_id = 133310105
}

-- Trigger变量
local defs = {
	duration = 90,
	kill_sum = 6,
	group_id = 133310105,
	gadget_controller_id = 105004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 105001, monster_id = 25310301, pos = { x = -2674.124, y = 294.491, z = 4799.191 }, rot = { x = 0.000, y = 284.331, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 28 },
	{ config_id = 105010, monster_id = 25070101, pos = { x = -2675.564, y = 294.510, z = 4799.115 }, rot = { x = 0.000, y = 269.318, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 28 },
	{ config_id = 105011, monster_id = 25010201, pos = { x = -2676.289, y = 294.329, z = 4802.714 }, rot = { x = 0.000, y = 220.434, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 28 },
	{ config_id = 105012, monster_id = 25010501, pos = { x = -2676.507, y = 294.509, z = 4794.867 }, rot = { x = 0.000, y = 316.154, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 28 },
	{ config_id = 105013, monster_id = 25010301, pos = { x = -2675.283, y = 294.285, z = 4803.637 }, rot = { x = 0.000, y = 227.550, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 28 },
	{ config_id = 105014, monster_id = 25210203, pos = { x = -2675.105, y = 294.506, z = 4795.136 }, rot = { x = 0.000, y = 295.633, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 105002, gadget_id = 70330334, pos = { x = -2680.031, y = 294.398, z = 4799.519 }, rot = { x = 1.395, y = 284.588, z = 359.764 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 105003, gadget_id = 70211001, pos = { x = -2685.547, y = 294.231, z = 4799.480 }, rot = { x = 358.198, y = 86.345, z = 4.236 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 28 },
	{ config_id = 105004, gadget_id = 70360001, pos = { x = -2680.042, y = 294.824, z = 4799.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1105005, name = "GROUP_LOAD_105005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_105005", action = "action_EVENT_GROUP_LOAD_105005", trigger_count = 0 },
	{ config_id = 1105006, name = "CHALLENGE_SUCCESS_105006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_105006", trigger_count = 0 },
	{ config_id = 1105007, name = "CHALLENGE_FAIL_105007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_105007", trigger_count = 0 },
	{ config_id = 1105008, name = "GADGET_CREATE_105008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_105008", action = "action_EVENT_GADGET_CREATE_105008", trigger_count = 0 },
	{ config_id = 1105009, name = "SELECT_OPTION_105009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_105009", action = "action_EVENT_SELECT_OPTION_105009", trigger_count = 0 },
	{ config_id = 1105015, name = "ANY_MONSTER_DIE_105015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_105015", action = "action_EVENT_ANY_MONSTER_DIE_105015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true },
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
		gadgets = { 105002, 105004 },
		regions = { },
		triggers = { "GROUP_LOAD_105005", "CHALLENGE_SUCCESS_105006", "CHALLENGE_FAIL_105007", "GADGET_CREATE_105008", "SELECT_OPTION_105009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 105010, 105011, 105012 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_105015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 105001, 105013, 105014 },
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
function condition_EVENT_GROUP_LOAD_105005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_105005(context, evt)
	-- 将configid为 105002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为105004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 105004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310105, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310105, 3)
	
	-- 将本组内变量名为 "monsterDie" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterDie", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_105006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 105002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为105003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 105003 }) then
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
function action_EVENT_CHALLENGE_FAIL_105007(context, evt)
	-- 将configid为 105002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为105004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 105004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310105, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310105, 3)
	
	-- 将本组内变量名为 "monsterDie" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterDie", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_105008(context, evt)
	if 105004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_105008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310105, 105004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_105009(context, evt)
	-- 判断是gadgetid 105004 option_id 177
	if 105004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_105009(context, evt)
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
		
	
	-- 将configid为 105002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 105002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_105015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"monsterDie"为0
	if ScriptLib.GetGroupVariableValue(context, "monsterDie") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_105015(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310105, 3)
	
	-- 将本组内变量名为 "monsterDie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterDie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end