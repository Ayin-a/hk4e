-- 基础信息
local base_info = {
	group_id = 133002393
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133002393
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
	{ config_id = 393001, gadget_id = 70211111, pos = { x = 1997.862, y = 243.237, z = -549.027 }, rot = { x = 4.657, y = 342.688, z = 354.118 }, level = 6, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, oneoff_reset_version = 2, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 393002, gadget_id = 70350083, pos = { x = 1960.133, y = 240.254, z = -460.017 }, rot = { x = 0.224, y = 255.329, z = 7.352 }, level = 10, persistent = true, area_id = 3 },
	{ config_id = 393003, gadget_id = 70360001, pos = { x = 1960.133, y = 241.221, z = -460.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, persistent = true, area_id = 3 },
	{ config_id = 393004, gadget_id = 70690001, pos = { x = 1965.644, y = 248.431, z = -509.157 }, rot = { x = 312.573, y = 102.592, z = 285.806 }, level = 10, area_id = 3 },
	{ config_id = 393011, gadget_id = 70690001, pos = { x = 1980.240, y = 255.813, z = -529.217 }, rot = { x = 346.350, y = 159.803, z = 359.371 }, level = 10, area_id = 3 },
	{ config_id = 393012, gadget_id = 70690006, pos = { x = 1973.700, y = 230.000, z = -481.300 }, rot = { x = 47.800, y = 279.300, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 393013, gadget_id = 70690006, pos = { x = 1946.400, y = 232.100, z = -502.400 }, rot = { x = 309.200, y = 289.100, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1393005, name = "CHALLENGE_SUCCESS_393005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_393005" },
	{ config_id = 1393006, name = "CHALLENGE_FAIL_393006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_393006", trigger_count = 0 },
	{ config_id = 1393007, name = "GADGET_STATE_CHANGE_393007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_393007", action = "action_EVENT_GADGET_STATE_CHANGE_393007", trigger_count = 0 },
	{ config_id = 1393008, name = "GADGET_STATE_CHANGE_393008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_393008", action = "", tag = "202" },
	{ config_id = 1393009, name = "GADGET_CREATE_393009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_393009", action = "action_EVENT_GADGET_CREATE_393009", trigger_count = 0 },
	{ config_id = 1393010, name = "SELECT_OPTION_393010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_393010", action = "action_EVENT_SELECT_OPTION_393010", trigger_count = 0 }
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
		gadgets = { 393002, 393003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_393005", "CHALLENGE_FAIL_393006", "GADGET_STATE_CHANGE_393007", "GADGET_STATE_CHANGE_393008", "GADGET_CREATE_393009", "SELECT_OPTION_393010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 393001, 393004, 393011, 393012, 393013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 393002 },
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
function action_EVENT_CHALLENGE_SUCCESS_393005(context, evt)
	-- 将configid为 393002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133002393, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133002393, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_393006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002393, 2)
	
	-- 将configid为 393002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为393003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 393003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_393007(context, evt)
	if 393002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_393007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_393008(context, evt)
	if 393001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_393009(context, evt)
	if 393003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_393009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133002393, 393003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_393010(context, evt)
	-- 判断是gadgetid 393003 option_id 177
	if 393003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_393010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 393003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 393002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 393002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end