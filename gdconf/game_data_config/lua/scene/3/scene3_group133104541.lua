-- 基础信息
local base_info = {
	group_id = 133104541
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 2,
	group_id = 133104541,
	gadget_controller_id = 541003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 541001, monster_id = 22010101, pos = { x = 572.570, y = 231.278, z = 816.447 }, rot = { x = 0.000, y = 101.449, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 6 },
	{ config_id = 541008, monster_id = 22010101, pos = { x = 576.553, y = 230.950, z = 809.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 541002, gadget_id = 70350082, pos = { x = 577.295, y = 231.975, z = 815.841 }, rot = { x = 352.090, y = 359.385, z = 8.881 }, level = 19, persistent = true, area_id = 6 },
	{ config_id = 541003, gadget_id = 70360001, pos = { x = 577.312, y = 232.848, z = 815.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 6 },
	{ config_id = 541010, gadget_id = 70211021, pos = { x = 573.783, y = 230.984, z = 812.843 }, rot = { x = 347.358, y = 62.808, z = 356.625 }, level = 16, drop_tag = "战斗高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1541005, name = "CHALLENGE_SUCCESS_541005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_541005" },
	{ config_id = 1541006, name = "CHALLENGE_FAIL_541006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_541006", trigger_count = 0 },
	{ config_id = 1541007, name = "GADGET_CREATE_541007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_541007", action = "action_EVENT_GADGET_CREATE_541007", trigger_count = 0 },
	{ config_id = 1541009, name = "SELECT_OPTION_541009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_541009", action = "action_EVENT_SELECT_OPTION_541009", trigger_count = 0 }
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
		gadgets = { 541002, 541003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_541005", "CHALLENGE_FAIL_541006", "GADGET_CREATE_541007", "SELECT_OPTION_541009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 541001, 541008 },
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
function action_EVENT_CHALLENGE_SUCCESS_541005(context, evt)
	-- 将configid为 541002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 541002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为541010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 541010 }) then
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
function action_EVENT_CHALLENGE_FAIL_541006(context, evt)
	-- 将configid为 541002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 541002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为541003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 541003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133104541, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_541007(context, evt)
	if 541003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_541007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133104541, 541003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_541009(context, evt)
	-- 判断是gadgetid 541003 option_id 177
	if 541003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_541009(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 541002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end