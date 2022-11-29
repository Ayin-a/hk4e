-- 基础信息
local base_info = {
	group_id = 111101277
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 277002, monster_id = 21010101, pos = { x = 2244.794, y = 244.120, z = -1579.653 }, rot = { x = 0.000, y = 88.390, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 277003, monster_id = 21010101, pos = { x = 2244.632, y = 244.120, z = -1577.956 }, rot = { x = 0.000, y = 57.015, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 277004, monster_id = 21010101, pos = { x = 2244.614, y = 244.120, z = -1581.470 }, rot = { x = 0.000, y = 127.927, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 277005, monster_id = 21010101, pos = { x = 2243.042, y = 244.120, z = -1581.451 }, rot = { x = 0.000, y = 180.726, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 277006, monster_id = 21010101, pos = { x = 2242.933, y = 244.120, z = -1578.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 277007, monster_id = 21010101, pos = { x = 2241.276, y = 244.120, z = -1577.984 }, rot = { x = 0.000, y = 320.817, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 277008, monster_id = 21010101, pos = { x = 2241.317, y = 244.120, z = -1579.648 }, rot = { x = 0.000, y = 268.017, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 277009, monster_id = 21010101, pos = { x = 2241.445, y = 244.120, z = -1581.458 }, rot = { x = 0.000, y = 225.200, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 277010, monster_id = 21010101, pos = { x = 2242.872, y = 244.120, z = -1582.902 }, rot = { x = 0.000, y = 181.553, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 277011, monster_id = 21010101, pos = { x = 2242.909, y = 244.120, z = -1577.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 277001, gadget_id = 70350082, pos = { x = 2242.911, y = 244.120, z = -1579.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 挂载277001
	{ config_id = 277014, gadget_id = 70360001, pos = { x = 2242.933, y = 245.141, z = -1579.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 277017, gadget_id = 70211001, pos = { x = 2242.927, y = 244.120, z = -1575.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1277012, name = "GADGET_CREATE_277012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_277012", action = "action_EVENT_GADGET_CREATE_277012", trigger_count = 0 },
	{ config_id = 1277013, name = "SELECT_OPTION_277013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_277013", action = "action_EVENT_SELECT_OPTION_277013", trigger_count = 0 },
	{ config_id = 1277015, name = "CHALLENGE_SUCCESS_277015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_277015", trigger_count = 0 },
	{ config_id = 1277016, name = "CHALLENGE_FAIL_277016", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_277016", trigger_count = 0 },
	-- 宝箱打开后解锁D区域元素方碑282001
	{ config_id = 1277018, name = "GADGET_STATE_CHANGE_277018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_277018", action = "action_EVENT_GADGET_STATE_CHANGE_277018" }
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
		-- description = ,
		monsters = { },
		gadgets = { 277001, 277014 },
		regions = { },
		triggers = { "GADGET_CREATE_277012", "SELECT_OPTION_277013", "CHALLENGE_SUCCESS_277015", "CHALLENGE_FAIL_277016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 10个怪物,
		monsters = { 277002, 277003, 277004, 277005, 277006, 277007, 277008, 277009, 277010, 277011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 277017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_277018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_277012(context, evt)
	if 277014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_277012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101277, 277014, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_277013(context, evt)
	-- 判断是gadgetid 277014 option_id 177
	if 277014 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_277013(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 120, 111101277, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101277, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 277014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 277001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 277001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_277015(context, evt)
	-- 将configid为 277001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 277001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101277, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_277016(context, evt)
	-- 将configid为 277001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 277001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为277014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 277014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101277, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_277018(context, evt)
	-- 检测config_id为277017的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 277017 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_277018(context, evt)
	-- 改变指定group组111101282中， configid为282001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101282, 282001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end