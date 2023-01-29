-- 基础信息
local base_info = {
	group_id = 133307325
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 4,
	group_id = 133307325,
	gadget_controller_id = 325004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 325001, monster_id = 28061501, pos = { x = -650.603, y = 158.957, z = 5542.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 325010, monster_id = 28061501, pos = { x = -644.456, y = 158.909, z = 5540.395 }, rot = { x = 0.000, y = 252.506, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 325011, monster_id = 28061501, pos = { x = -645.590, y = 158.510, z = 5537.141 }, rot = { x = 0.000, y = 280.419, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 },
	{ config_id = 325013, monster_id = 25110401, pos = { x = -651.862, y = 158.076, z = 5540.111 }, rot = { x = 0.000, y = 217.218, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 325002, gadget_id = 70350082, pos = { x = -647.200, y = 158.910, z = 5541.919 }, rot = { x = 355.822, y = 355.409, z = 0.986 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 325003, gadget_id = 70211001, pos = { x = -645.662, y = 158.953, z = 5544.172 }, rot = { x = 359.502, y = 33.265, z = 1.312 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 325004, gadget_id = 70360001, pos = { x = -647.200, y = 158.910, z = 5541.919 }, rot = { x = 355.822, y = 355.409, z = 0.986 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1325005, name = "GROUP_LOAD_325005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_325005", action = "action_EVENT_GROUP_LOAD_325005", trigger_count = 0 },
	{ config_id = 1325006, name = "CHALLENGE_SUCCESS_325006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_325006", trigger_count = 0 },
	{ config_id = 1325007, name = "CHALLENGE_FAIL_325007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_325007", trigger_count = 0 },
	{ config_id = 1325008, name = "GADGET_CREATE_325008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_325008", action = "action_EVENT_GADGET_CREATE_325008", trigger_count = 0 },
	{ config_id = 1325009, name = "SELECT_OPTION_325009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_325009", action = "action_EVENT_SELECT_OPTION_325009", trigger_count = 0 },
	{ config_id = 1325012, name = "ANY_MONSTER_DIE_325012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_325012", action = "action_EVENT_ANY_MONSTER_DIE_325012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
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
		gadgets = { 325002, 325004 },
		regions = { },
		triggers = { "GROUP_LOAD_325005", "CHALLENGE_SUCCESS_325006", "CHALLENGE_FAIL_325007", "GADGET_CREATE_325008", "SELECT_OPTION_325009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 325001, 325010, 325011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_325012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 325013 },
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
function condition_EVENT_GROUP_LOAD_325005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_325005(context, evt)
	-- 将configid为 325002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 325002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为325004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 325004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307325, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307325, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_325006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 325002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 325002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为325003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 325003 }) then
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
function action_EVENT_CHALLENGE_FAIL_325007(context, evt)
	-- 将configid为 325002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 325002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为325004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 325004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307325, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133307325, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_325008(context, evt)
	if 325004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_325008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133307325, 325004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_325009(context, evt)
	-- 判断是gadgetid 325004 option_id 177
	if 325004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_325009(context, evt)
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
		
	
	-- 将configid为 325002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 325002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_325012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_325012(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307325, 3)
	
	return 0
end