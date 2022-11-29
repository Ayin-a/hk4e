-- 基础信息
local base_info = {
	group_id = 144004057
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 144004057
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
	{ config_id = 57001, gadget_id = 70211111, pos = { x = -264.102, y = 188.941, z = -819.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 57002, gadget_id = 70350083, pos = { x = -378.884, y = 167.368, z = -593.886 }, rot = { x = 355.154, y = 359.791, z = 12.937 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 57003, gadget_id = 70360001, pos = { x = -379.129, y = 168.356, z = -593.978 }, rot = { x = 355.154, y = 359.791, z = 12.937 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 57004, gadget_id = 70690001, pos = { x = -376.692, y = 168.610, z = -588.908 }, rot = { x = 332.323, y = 21.582, z = 6.017 }, level = 1, area_id = 100 },
	{ config_id = 57011, gadget_id = 70690001, pos = { x = -367.926, y = 175.720, z = -572.683 }, rot = { x = 338.598, y = 48.219, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57012, gadget_id = 70690001, pos = { x = -354.218, y = 182.785, z = -560.488 }, rot = { x = 330.100, y = 89.185, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57013, gadget_id = 70690001, pos = { x = -335.224, y = 188.454, z = -560.218 }, rot = { x = 339.000, y = 115.103, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57014, gadget_id = 70690001, pos = { x = -317.677, y = 192.739, z = -568.438 }, rot = { x = 354.313, y = 157.548, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57015, gadget_id = 70690001, pos = { x = -346.390, y = 194.483, z = -734.347 }, rot = { x = 359.965, y = 140.932, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57016, gadget_id = 70690001, pos = { x = -339.111, y = 194.490, z = -743.314 }, rot = { x = 359.965, y = 140.932, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57017, gadget_id = 70690001, pos = { x = -343.537, y = 192.098, z = -631.976 }, rot = { x = 13.980, y = 231.255, z = 0.253 }, level = 1, area_id = 100 },
	{ config_id = 57018, gadget_id = 70690001, pos = { x = -331.833, y = 194.497, z = -752.281 }, rot = { x = 359.965, y = 140.932, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57019, gadget_id = 70690001, pos = { x = -360.534, y = 181.265, z = -646.365 }, rot = { x = 345.100, y = 211.576, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57020, gadget_id = 70690001, pos = { x = -365.249, y = 182.341, z = -653.694 }, rot = { x = 345.100, y = 190.731, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57021, gadget_id = 70690001, pos = { x = -367.104, y = 184.206, z = -663.258 }, rot = { x = 336.252, y = 173.192, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57022, gadget_id = 70690001, pos = { x = -366.024, y = 187.840, z = -672.307 }, rot = { x = 333.147, y = 158.995, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57023, gadget_id = 70690001, pos = { x = -362.826, y = 190.936, z = -680.635 }, rot = { x = 340.830, y = 162.681, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57024, gadget_id = 70690001, pos = { x = -310.498, y = 194.610, z = -585.810 }, rot = { x = 0.232, y = 205.566, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57025, gadget_id = 70690001, pos = { x = -358.304, y = 194.070, z = -695.806 }, rot = { x = 346.076, y = 165.179, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57026, gadget_id = 70690001, pos = { x = -319.086, y = 194.530, z = -603.762 }, rot = { x = 0.232, y = 205.566, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57027, gadget_id = 70690001, pos = { x = -307.417, y = 192.513, z = -771.304 }, rot = { x = 359.965, y = 140.932, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57028, gadget_id = 70690001, pos = { x = -300.138, y = 192.520, z = -780.271 }, rot = { x = 359.965, y = 140.932, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 57029, gadget_id = 70690001, pos = { x = -292.860, y = 192.527, z = -789.237 }, rot = { x = 359.965, y = 140.932, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1057005, name = "CHALLENGE_SUCCESS_57005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_57005" },
	{ config_id = 1057006, name = "CHALLENGE_FAIL_57006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_57006", trigger_count = 0 },
	{ config_id = 1057007, name = "GADGET_STATE_CHANGE_57007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_57007", action = "action_EVENT_GADGET_STATE_CHANGE_57007", trigger_count = 0 },
	{ config_id = 1057008, name = "GADGET_STATE_CHANGE_57008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_57008", action = "", tag = "202" },
	{ config_id = 1057009, name = "GADGET_CREATE_57009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_57009", action = "action_EVENT_GADGET_CREATE_57009", trigger_count = 0 },
	{ config_id = 1057010, name = "SELECT_OPTION_57010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_57010", action = "action_EVENT_SELECT_OPTION_57010", trigger_count = 0 }
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
		gadgets = { 57002, 57003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_57005", "CHALLENGE_FAIL_57006", "GADGET_STATE_CHANGE_57007", "GADGET_STATE_CHANGE_57008", "GADGET_CREATE_57009", "SELECT_OPTION_57010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 57001, 57004, 57011, 57012, 57013, 57014, 57015, 57016, 57017, 57018, 57019, 57020, 57021, 57022, 57023, 57024, 57025, 57026, 57027, 57028, 57029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 57002 },
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
function action_EVENT_CHALLENGE_SUCCESS_57005(context, evt)
	-- 将configid为 57002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144004057, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004057, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_57006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004057, 2)
	
	-- 将configid为 57002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为57003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 57003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_57007(context, evt)
	if 57002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_57007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_57008(context, evt)
	if 57001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_57009(context, evt)
	if 57003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_57009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004057, 57003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_57010(context, evt)
	-- 判断是gadgetid 57003 option_id 177
	if 57003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_57010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 57003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 57002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end