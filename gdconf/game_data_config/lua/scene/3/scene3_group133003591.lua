-- 基础信息
local base_info = {
	group_id = 133003591
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133003591
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
	{ config_id = 591001, gadget_id = 70211111, pos = { x = 2808.722, y = 318.767, z = -1594.204 }, rot = { x = 0.000, y = 171.082, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, oneoff_reset_version = 2, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 591002, gadget_id = 70350083, pos = { x = 2814.832, y = 305.751, z = -1585.853 }, rot = { x = 359.800, y = 292.753, z = 3.066 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 591003, gadget_id = 70360001, pos = { x = 2814.831, y = 306.687, z = -1585.858 }, rot = { x = 0.000, y = 292.758, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 591004, gadget_id = 70220065, pos = { x = 2804.968, y = 314.027, z = -1591.828 }, rot = { x = 0.000, y = 1.525, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 591011, gadget_id = 70300086, pos = { x = 2806.476, y = 314.027, z = -1589.626 }, rot = { x = 0.000, y = 257.260, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 591012, gadget_id = 70220065, pos = { x = 2806.947, y = 308.062, z = -1595.652 }, rot = { x = 0.000, y = 309.493, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 591013, gadget_id = 70300089, pos = { x = 2809.339, y = 308.062, z = -1589.360 }, rot = { x = 0.000, y = 128.725, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 591014, gadget_id = 70220020, pos = { x = 2809.585, y = 308.062, z = -1595.707 }, rot = { x = 0.000, y = 118.660, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 591015, gadget_id = 70300089, pos = { x = 2812.090, y = 314.027, z = -1591.177 }, rot = { x = 0.000, y = 275.477, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 591016, gadget_id = 70300089, pos = { x = 2810.776, y = 314.027, z = -1590.727 }, rot = { x = 0.000, y = 87.515, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 591017, gadget_id = 70300089, pos = { x = 2806.883, y = 314.027, z = -1587.939 }, rot = { x = 0.000, y = 87.515, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 591018, gadget_id = 70300088, pos = { x = 2811.243, y = 313.726, z = -1591.625 }, rot = { x = 0.000, y = 71.535, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 591019, gadget_id = 70300087, pos = { x = 2809.382, y = 308.062, z = -1587.906 }, rot = { x = 357.618, y = 263.351, z = 359.276 }, level = 30, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1591005, name = "CHALLENGE_SUCCESS_591005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_591005" },
	{ config_id = 1591006, name = "CHALLENGE_FAIL_591006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_591006", trigger_count = 0 },
	{ config_id = 1591007, name = "GADGET_STATE_CHANGE_591007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_591007", action = "action_EVENT_GADGET_STATE_CHANGE_591007", trigger_count = 0 },
	{ config_id = 1591008, name = "GADGET_STATE_CHANGE_591008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_591008", action = "", tag = "202" },
	{ config_id = 1591009, name = "GADGET_CREATE_591009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_591009", action = "action_EVENT_GADGET_CREATE_591009", trigger_count = 0 },
	{ config_id = 1591010, name = "SELECT_OPTION_591010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_591010", action = "action_EVENT_SELECT_OPTION_591010", trigger_count = 0 }
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
		gadgets = { 591002, 591003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_591005", "CHALLENGE_FAIL_591006", "GADGET_STATE_CHANGE_591007", "GADGET_STATE_CHANGE_591008", "GADGET_CREATE_591009", "SELECT_OPTION_591010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 591001, 591004, 591011, 591012, 591013, 591014, 591015, 591016, 591017, 591018, 591019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 591002 },
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
function action_EVENT_CHALLENGE_SUCCESS_591005(context, evt)
	-- 将configid为 591002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 591002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133003591, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003591, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_591006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003591, 2)
	
	-- 将configid为 591002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 591002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为591003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 591003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_591007(context, evt)
	if 591002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_591007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_591008(context, evt)
	if 591001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_591009(context, evt)
	if 591003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_591009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003591, 591003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_591010(context, evt)
	-- 判断是gadgetid 591003 option_id 177
	if 591003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_591010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 591003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 591002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 591002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end