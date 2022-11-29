-- 基础信息
local base_info = {
	group_id = 133105187
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 2,
	group_id = 133105187,
	gadget_controller_id = 187003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 187001, monster_id = 21020301, pos = { x = 720.897, y = 247.764, z = -417.959 }, rot = { x = 0.000, y = 302.885, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 9 },
	{ config_id = 187008, monster_id = 21020301, pos = { x = 724.194, y = 247.797, z = -412.603 }, rot = { x = 0.000, y = 302.885, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 187002, gadget_id = 70350082, pos = { x = 710.932, y = 247.734, z = -408.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, persistent = true, area_id = 9 },
	{ config_id = 187003, gadget_id = 70360001, pos = { x = 710.949, y = 247.734, z = -408.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 9 },
	{ config_id = 187010, gadget_id = 70211021, pos = { x = 710.817, y = 247.734, z = -403.942 }, rot = { x = 0.000, y = 181.056, z = 0.000 }, level = 21, drop_tag = "战斗高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1187005, name = "CHALLENGE_SUCCESS_187005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_187005" },
	{ config_id = 1187006, name = "CHALLENGE_FAIL_187006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_187006", trigger_count = 0 },
	{ config_id = 1187007, name = "GADGET_CREATE_187007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_187007", action = "action_EVENT_GADGET_CREATE_187007", trigger_count = 0 },
	{ config_id = 1187009, name = "SELECT_OPTION_187009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_187009", action = "action_EVENT_SELECT_OPTION_187009", trigger_count = 0 }
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
		gadgets = { 187002, 187003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_187005", "CHALLENGE_FAIL_187006", "GADGET_CREATE_187007", "SELECT_OPTION_187009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 187001, 187008 },
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
function action_EVENT_CHALLENGE_SUCCESS_187005(context, evt)
	-- 将configid为 187002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为187010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 187010 }) then
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
function action_EVENT_CHALLENGE_FAIL_187006(context, evt)
	-- 将configid为 187002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为187003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 187003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133105187, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_187007(context, evt)
	if 187003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_187007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133105187, 187003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_187009(context, evt)
	-- 判断是gadgetid 187003 option_id 177
	if 187003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_187009(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 187002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end