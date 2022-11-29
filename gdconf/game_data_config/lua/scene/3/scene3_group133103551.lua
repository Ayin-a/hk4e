-- 基础信息
local base_info = {
	group_id = 133103551
}

-- Trigger变量
local defs = {
	duration = 15,
	group_id = 133103551
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 551001, gadget_id = 70211111, pos = { x = 371.285, y = 271.948, z = 1768.318 }, rot = { x = 354.942, y = 346.980, z = 12.741 }, level = 21, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, oneoff_reset_version = 2, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 551002, gadget_id = 70350083, pos = { x = 359.000, y = 251.900, z = 1655.438 }, rot = { x = 0.000, y = 95.771, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 551003, gadget_id = 70360001, pos = { x = 359.000, y = 252.659, z = 1655.432 }, rot = { x = 0.000, y = 95.771, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 551011, gadget_id = 70690001, pos = { x = 372.276, y = 273.051, z = 1746.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 551012, gadget_id = 70690001, pos = { x = 370.253, y = 270.122, z = 1720.354 }, rot = { x = 347.790, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 551013, gadget_id = 70690001, pos = { x = 365.968, y = 266.476, z = 1696.688 }, rot = { x = 349.180, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 551014, gadget_id = 70690001, pos = { x = 362.234, y = 262.173, z = 1676.498 }, rot = { x = 342.810, y = 13.930, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 551015, gadget_id = 70690006, pos = { x = 359.679, y = 251.593, z = 1655.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, showcutscene = true, isOneoff = true, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1551005, name = "CHALLENGE_SUCCESS_551005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_551005" },
	{ config_id = 1551006, name = "CHALLENGE_FAIL_551006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_551006", trigger_count = 0 },
	{ config_id = 1551007, name = "GADGET_STATE_CHANGE_551007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_551007", action = "action_EVENT_GADGET_STATE_CHANGE_551007", trigger_count = 0 },
	{ config_id = 1551008, name = "GADGET_STATE_CHANGE_551008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_551008", action = "", tag = "202" },
	{ config_id = 1551009, name = "GADGET_CREATE_551009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_551009", action = "action_EVENT_GADGET_CREATE_551009", trigger_count = 0 },
	{ config_id = 1551010, name = "SELECT_OPTION_551010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_551010", action = "action_EVENT_SELECT_OPTION_551010", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 551002, 551003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_551005", "CHALLENGE_FAIL_551006", "GADGET_STATE_CHANGE_551007", "GADGET_STATE_CHANGE_551008", "GADGET_CREATE_551009", "SELECT_OPTION_551010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 551001, 551011, 551012, 551013, 551014, 551015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 551002 },
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
function action_EVENT_CHALLENGE_SUCCESS_551005(context, evt)
	-- 将configid为 551002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 551002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133103551, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103551, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_551006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103551, 2)
	
	-- 将configid为 551002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 551002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为551003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 551003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_551007(context, evt)
	if 551002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_551007(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_551008(context, evt)
	if 551001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_551009(context, evt)
	if 551003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_551009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103551, 551003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_551010(context, evt)
	-- 判断是gadgetid 551003 option_id 177
	if 551003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_551010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 551003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 551002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 551002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end