-- 基础信息
local base_info = {
	group_id = 133310158
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 4,
	group_id = 133310158,
	gadget_controller_id = 158004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 158001, monster_id = 28060402, pos = { x = -2344.092, y = 103.972, z = 4893.709 }, rot = { x = 0.000, y = 246.627, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 27 },
	{ config_id = 158010, monster_id = 28060402, pos = { x = -2362.735, y = 103.972, z = 4893.575 }, rot = { x = 0.000, y = 111.019, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 27 },
	{ config_id = 158011, monster_id = 28060402, pos = { x = -2346.587, y = 103.972, z = 4896.991 }, rot = { x = 0.000, y = 213.687, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 27 },
	{ config_id = 158012, monster_id = 24040201, pos = { x = -2350.857, y = 103.972, z = 4898.133 }, rot = { x = 0.000, y = 182.342, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 158002, gadget_id = 70330334, pos = { x = -2350.952, y = 104.036, z = 4889.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 158003, gadget_id = 70211021, pos = { x = -2350.918, y = 103.972, z = 4901.656 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 158004, gadget_id = 70360001, pos = { x = -2350.961, y = 104.505, z = 4889.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1158005, name = "GROUP_LOAD_158005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_158005", action = "action_EVENT_GROUP_LOAD_158005", trigger_count = 0 },
	{ config_id = 1158006, name = "CHALLENGE_SUCCESS_158006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_158006", trigger_count = 0 },
	{ config_id = 1158007, name = "CHALLENGE_FAIL_158007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_158007", trigger_count = 0 },
	{ config_id = 1158008, name = "GADGET_CREATE_158008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_158008", action = "action_EVENT_GADGET_CREATE_158008", trigger_count = 0 },
	{ config_id = 1158009, name = "SELECT_OPTION_158009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_158009", action = "action_EVENT_SELECT_OPTION_158009", trigger_count = 0 },
	{ config_id = 1158013, name = "ANY_MONSTER_DIE_158013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_158013", action = "action_EVENT_ANY_MONSTER_DIE_158013", trigger_count = 0 }
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
		gadgets = { 158002, 158004 },
		regions = { },
		triggers = { "GROUP_LOAD_158005", "CHALLENGE_SUCCESS_158006", "CHALLENGE_FAIL_158007", "GADGET_CREATE_158008", "SELECT_OPTION_158009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 158001, 158010, 158011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_158013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 158012 },
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
function condition_EVENT_GROUP_LOAD_158005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_158005(context, evt)
	-- 将configid为 158002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 158002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为158004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 158004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310158, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310158, 3)
	
	-- 将本组内变量名为 "monsterdie" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 0) then
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
function action_EVENT_CHALLENGE_SUCCESS_158006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 158002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 158002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为158003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 158003 }) then
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
function action_EVENT_CHALLENGE_FAIL_158007(context, evt)
	-- 将configid为 158002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 158002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为158004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 158004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310158, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133310158, 3)
	
	-- 将本组内变量名为 "monsterdie" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 0) then
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
function condition_EVENT_GADGET_CREATE_158008(context, evt)
	if 158004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_158008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310158, 158004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_158009(context, evt)
	-- 判断是gadgetid 158004 option_id 177
	if 158004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_158009(context, evt)
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
		
	
	-- 将configid为 158002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 158002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_158013(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_158013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310158, 3)
	
	-- 将本组内变量名为 "monsterdie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end