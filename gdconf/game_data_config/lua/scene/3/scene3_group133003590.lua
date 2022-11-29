-- 基础信息
local base_info = {
	group_id = 133003590
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133003590
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
	{ config_id = 590001, gadget_id = 70211111, pos = { x = 2998.084, y = 238.999, z = -1734.994 }, rot = { x = 0.000, y = 312.258, z = 0.000 }, level = 26, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, oneoff_reset_version = 2, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 590002, gadget_id = 70350083, pos = { x = 2889.259, y = 280.341, z = -1591.925 }, rot = { x = 4.893, y = 238.563, z = 353.074 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 590003, gadget_id = 70360001, pos = { x = 2889.134, y = 281.295, z = -1591.852 }, rot = { x = 0.000, y = 238.860, z = 0.000 }, level = 30, persistent = true, area_id = 1 },
	{ config_id = 590004, gadget_id = 70690001, pos = { x = 2897.391, y = 279.611, z = -1602.319 }, rot = { x = 0.954, y = 318.965, z = 359.170 }, level = 30, area_id = 1 },
	{ config_id = 590011, gadget_id = 70690001, pos = { x = 2917.679, y = 273.155, z = -1646.633 }, rot = { x = 0.954, y = 318.965, z = 359.170 }, level = 30, area_id = 1 },
	{ config_id = 590012, gadget_id = 70690001, pos = { x = 2946.376, y = 270.659, z = -1646.470 }, rot = { x = 0.954, y = 318.965, z = 359.170 }, level = 30, area_id = 1 },
	{ config_id = 590013, gadget_id = 70690001, pos = { x = 2944.179, y = 266.599, z = -1683.527 }, rot = { x = 0.954, y = 318.965, z = 359.170 }, level = 30, area_id = 1 },
	{ config_id = 590014, gadget_id = 70690001, pos = { x = 2914.937, y = 276.135, z = -1610.605 }, rot = { x = 0.954, y = 318.965, z = 359.170 }, level = 30, area_id = 1 },
	{ config_id = 590015, gadget_id = 70690001, pos = { x = 2969.733, y = 265.799, z = -1662.763 }, rot = { x = 0.954, y = 318.965, z = 359.170 }, level = 30, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1590005, name = "CHALLENGE_SUCCESS_590005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_590005" },
	{ config_id = 1590006, name = "CHALLENGE_FAIL_590006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_590006", trigger_count = 0 },
	{ config_id = 1590007, name = "GADGET_STATE_CHANGE_590007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_590007", action = "action_EVENT_GADGET_STATE_CHANGE_590007", trigger_count = 0 },
	{ config_id = 1590008, name = "GADGET_STATE_CHANGE_590008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_590008", action = "", tag = "202" },
	{ config_id = 1590009, name = "GADGET_CREATE_590009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_590009", action = "action_EVENT_GADGET_CREATE_590009", trigger_count = 0 },
	{ config_id = 1590010, name = "SELECT_OPTION_590010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_590010", action = "action_EVENT_SELECT_OPTION_590010", trigger_count = 0 }
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
		gadgets = { 590002, 590003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_590005", "CHALLENGE_FAIL_590006", "GADGET_STATE_CHANGE_590007", "GADGET_STATE_CHANGE_590008", "GADGET_CREATE_590009", "SELECT_OPTION_590010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 590001, 590004, 590011, 590012, 590013, 590014, 590015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 590002 },
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
function action_EVENT_CHALLENGE_SUCCESS_590005(context, evt)
	-- 将configid为 590002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 590002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133003590, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003590, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_590006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003590, 2)
	
	-- 将configid为 590002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 590002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为590003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 590003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_590007(context, evt)
	if 590002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_590007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_590008(context, evt)
	if 590001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_590009(context, evt)
	if 590003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_590009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133003590, 590003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_590010(context, evt)
	-- 判断是gadgetid 590003 option_id 177
	if 590003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_590010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 590003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 590002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 590002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end