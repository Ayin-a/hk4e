-- 基础信息
local base_info = {
	group_id = 111101268
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 268002, monster_id = 21010101, pos = { x = 2231.459, y = 244.120, z = -1573.856 }, rot = { x = 0.000, y = 98.136, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 268003, monster_id = 21010101, pos = { x = 2231.579, y = 244.120, z = -1576.177 }, rot = { x = 0.000, y = 73.827, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 268004, monster_id = 21010101, pos = { x = 2232.286, y = 244.120, z = -1578.963 }, rot = { x = 0.000, y = 53.519, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 268005, monster_id = 21010101, pos = { x = 2233.657, y = 244.120, z = -1580.435 }, rot = { x = 0.000, y = 36.175, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 268006, monster_id = 21010101, pos = { x = 2235.827, y = 244.120, z = -1581.760 }, rot = { x = 0.000, y = 25.398, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 268007, monster_id = 21010101, pos = { x = 2237.798, y = 244.120, z = -1582.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 268008, monster_id = 21010101, pos = { x = 2240.308, y = 244.120, z = -1581.897 }, rot = { x = 0.000, y = 333.517, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 268009, monster_id = 21010101, pos = { x = 2242.086, y = 244.120, z = -1581.170 }, rot = { x = 0.000, y = 316.306, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 268010, monster_id = 21010101, pos = { x = 2243.374, y = 244.120, z = -1579.676 }, rot = { x = 0.000, y = 294.320, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 268011, monster_id = 21010101, pos = { x = 2243.607, y = 244.120, z = -1577.873 }, rot = { x = 0.000, y = 279.870, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 268001, gadget_id = 70350082, pos = { x = 2237.015, y = 243.865, z = -1576.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 268012, gadget_id = 70211011, pos = { x = 2236.994, y = 243.662, z = -1572.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true },
	-- 用以挂载交互按钮
	{ config_id = 268013, gadget_id = 70360001, pos = { x = 2236.939, y = 245.146, z = -1576.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 当操作台加载时，生成交互按钮
	{ config_id = 1268014, name = "GADGET_CREATE_268014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_268014", action = "action_EVENT_GADGET_CREATE_268014", trigger_count = 0 },
	-- 当玩家选定交互按钮后 开启挑战 生成怪物 禁用交互按钮 挑战台开启
	{ config_id = 1268015, name = "SELECT_OPTION_268015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_268015", action = "action_EVENT_SELECT_OPTION_268015", trigger_count = 0 },
	-- 挑战成功时 生成宝箱 将挑战台设为stop
	{ config_id = 1268016, name = "CHALLENGE_SUCCESS_268016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_268016", trigger_count = 0 },
	-- 挑战失败时 重置挑战台 清空所有怪物 重新生成交互按钮
	{ config_id = 1268017, name = "CHALLENGE_FAIL_268017", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_268017" },
	-- 当宝箱开启时，解锁D区域的一个元素方碑
	{ config_id = 1268018, name = "GADGET_STATE_CHANGE_268018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_268018", action = "action_EVENT_GADGET_STATE_CHANGE_268018" }
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
		gadgets = { 268001, 268013 },
		regions = { },
		triggers = { "GADGET_CREATE_268014", "SELECT_OPTION_268015", "CHALLENGE_SUCCESS_268016", "CHALLENGE_FAIL_268017", "GADGET_STATE_CHANGE_268018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 268002, 268003, 268004, 268005, 268006, 268007, 268008, 268009, 268010, 268011 },
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_268014(context, evt)
	if 268013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_268014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_268015(context, evt)
	if 268013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_268015(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 120, 111101268, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101268, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 268013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 268001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 268001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_268016(context, evt)
	-- 创建id为268012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 268012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 268001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 268001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_268017(context, evt)
	-- 将configid为 268001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 268001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101268, 2)
	
	-- 创建id为268013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 268013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_268018(context, evt)
	-- 检测config_id为268012的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 268012 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_268018(context, evt)
	-- 改变指定group组111101276中， configid为276001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101276, 276001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end