-- 基础信息
local base_info = {
	group_id = 133003594
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 133003594
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
	{ config_id = 594001, gadget_id = 70211111, pos = { x = 2291.564, y = 248.071, z = -1468.359 }, rot = { x = 13.213, y = 344.634, z = 357.280 }, level = 6, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, oneoff_reset_version = 2, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 594002, gadget_id = 70350083, pos = { x = 2521.120, y = 345.351, z = -1692.703 }, rot = { x = 359.506, y = 29.874, z = 355.689 }, level = 10, persistent = true, area_id = 1 },
	{ config_id = 594003, gadget_id = 70360001, pos = { x = 2521.184, y = 346.170, z = -1692.730 }, rot = { x = 0.000, y = 29.856, z = 0.000 }, level = 10, persistent = true, area_id = 1 },
	{ config_id = 594011, gadget_id = 70690001, pos = { x = 2514.083, y = 346.152, z = -1684.244 }, rot = { x = 0.000, y = 320.063, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 594012, gadget_id = 70690001, pos = { x = 2508.275, y = 345.610, z = -1677.952 }, rot = { x = 0.000, y = 317.205, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 594013, gadget_id = 70690001, pos = { x = 2476.831, y = 339.190, z = -1648.168 }, rot = { x = 1.652, y = 320.967, z = 359.627 }, level = 10, area_id = 1 },
	{ config_id = 594014, gadget_id = 70690001, pos = { x = 2452.282, y = 327.578, z = -1622.786 }, rot = { x = 30.569, y = 308.524, z = 345.682 }, level = 10, area_id = 1 },
	{ config_id = 594015, gadget_id = 70690001, pos = { x = 2426.378, y = 315.518, z = -1597.036 }, rot = { x = 0.000, y = 319.563, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 594016, gadget_id = 70690001, pos = { x = 2379.213, y = 294.327, z = -1548.314 }, rot = { x = 11.942, y = 316.861, z = 356.798 }, level = 10, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1594005, name = "CHALLENGE_SUCCESS_594005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_594005" },
	{ config_id = 1594006, name = "CHALLENGE_FAIL_594006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_594006", trigger_count = 0 },
	{ config_id = 1594007, name = "GADGET_STATE_CHANGE_594007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_594007", action = "action_EVENT_GADGET_STATE_CHANGE_594007", trigger_count = 0 },
	{ config_id = 1594008, name = "GADGET_STATE_CHANGE_594008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_594008", action = "", tag = "202" },
	{ config_id = 1594009, name = "GADGET_CREATE_594009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_594009", action = "action_EVENT_GADGET_CREATE_594009", trigger_count = 0 },
	{ config_id = 1594010, name = "SELECT_OPTION_594010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_594010", action = "action_EVENT_SELECT_OPTION_594010", trigger_count = 0 }
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
		gadgets = { 594002, 594003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_594005", "CHALLENGE_FAIL_594006", "GADGET_STATE_CHANGE_594007", "GADGET_STATE_CHANGE_594008", "GADGET_CREATE_594009", "SELECT_OPTION_594010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 594001, 594011, 594012, 594013, 594014, 594015, 594016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 594002 },
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
function action_EVENT_CHALLENGE_SUCCESS_594005(context, evt)
	-- 将configid为 594002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 594002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133003594, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003594, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_594006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003594, 2)
	
	-- 将configid为 594002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 594002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为594003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 594003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_594007(context, evt)
	if 594002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_594007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_594008(context, evt)
	if 594001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_594009(context, evt)
	if 594003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_594009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003594, 594003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_594010(context, evt)
	-- 判断是gadgetid 594003 option_id 177
	if 594003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_594010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 594003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 594002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 594002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end