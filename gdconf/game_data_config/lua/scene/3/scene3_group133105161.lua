-- 基础信息
local base_info = {
	group_id = 133105161
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 2,
	group_id = 133105161,
	gadget_controller_id = 161003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 161001, monster_id = 20010601, pos = { x = 440.597, y = 200.294, z = -459.409 }, rot = { x = 0.000, y = 76.752, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 },
	{ config_id = 161008, monster_id = 20010701, pos = { x = 444.684, y = 200.294, z = -460.378 }, rot = { x = 0.000, y = 76.752, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 161002, gadget_id = 70350082, pos = { x = 444.329, y = 200.258, z = -455.692 }, rot = { x = 0.000, y = 329.135, z = 0.000 }, level = 19, persistent = true, area_id = 9 },
	{ config_id = 161003, gadget_id = 70360001, pos = { x = 444.135, y = 200.283, z = -455.451 }, rot = { x = 0.000, y = 329.135, z = 0.000 }, level = 32, area_id = 9 },
	{ config_id = 161010, gadget_id = 70211011, pos = { x = 444.252, y = 200.173, z = -452.192 }, rot = { x = 357.316, y = 179.768, z = 0.011 }, level = 16, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161005, name = "CHALLENGE_SUCCESS_161005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_161005" },
	{ config_id = 1161006, name = "CHALLENGE_FAIL_161006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_161006", trigger_count = 0 },
	{ config_id = 1161007, name = "GADGET_CREATE_161007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_161007", action = "action_EVENT_GADGET_CREATE_161007", trigger_count = 0 },
	{ config_id = 1161009, name = "SELECT_OPTION_161009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_161009", action = "action_EVENT_SELECT_OPTION_161009", trigger_count = 0 }
}

-- 变量
variables = {
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 161002, 161003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_161005", "CHALLENGE_FAIL_161006", "GADGET_CREATE_161007", "SELECT_OPTION_161009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 161001, 161008 },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_161005(context, evt)
	-- 将configid为 161002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 161002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为161010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 161010 }) then
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
function action_EVENT_CHALLENGE_FAIL_161006(context, evt)
	-- 将configid为 161002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 161002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为161003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 161003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105161, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_161007(context, evt)
	if 161003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_161007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133105161, 161003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_161009(context, evt)
	-- 判断是gadgetid 161003 option_id 177
	if 161003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_161009(context, evt)
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
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 161002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end