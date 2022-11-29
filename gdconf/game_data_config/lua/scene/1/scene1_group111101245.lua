-- 基础信息
local base_info = {
	group_id = 111101245
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 245002, monster_id = 20010101, pos = { x = 2223.897, y = 244.917, z = -1593.378 }, rot = { x = 0.000, y = 349.827, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201 },
	{ config_id = 245003, monster_id = 20010101, pos = { x = 2221.933, y = 244.796, z = -1591.873 }, rot = { x = 0.000, y = 349.827, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201 },
	{ config_id = 245004, monster_id = 20010101, pos = { x = 2220.459, y = 244.613, z = -1589.817 }, rot = { x = 0.000, y = 349.827, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201 },
	{ config_id = 245005, monster_id = 20010201, pos = { x = 2225.768, y = 244.203, z = -1589.959 }, rot = { x = 0.000, y = 349.827, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 201 },
	{ config_id = 245006, monster_id = 21010501, pos = { x = 2228.510, y = 244.120, z = -1580.581 }, rot = { x = 0.000, y = 177.862, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9010 },
	{ config_id = 245007, monster_id = 21010501, pos = { x = 2223.960, y = 244.120, z = -1582.018 }, rot = { x = 0.000, y = 138.836, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 245008, monster_id = 21020201, pos = { x = 2225.158, y = 244.120, z = -1578.407 }, rot = { x = 0.000, y = 160.715, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 245009, monster_id = 20011001, pos = { x = 2232.294, y = 244.120, z = -1588.021 }, rot = { x = 0.000, y = 297.781, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 245010, monster_id = 20011001, pos = { x = 2231.879, y = 244.120, z = -1583.832 }, rot = { x = 0.000, y = 232.045, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 245011, monster_id = 22010201, pos = { x = 2234.903, y = 244.120, z = -1585.803 }, rot = { x = 0.000, y = 272.458, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 245001, gadget_id = 70350082, pos = { x = 2227.984, y = 244.120, z = -1585.729 }, rot = { x = 0.000, y = 339.613, z = 0.000 }, level = 1 },
	{ config_id = 245012, gadget_id = 70211021, pos = { x = 2226.429, y = 244.120, z = -1585.361 }, rot = { x = 0.000, y = 280.916, z = 0.000 }, level = 11, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true },
	{ config_id = 245013, gadget_id = 70360001, pos = { x = 2227.972, y = 245.140, z = -1585.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1245014, name = "GADGET_CREATE_245014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_245014", action = "action_EVENT_GADGET_CREATE_245014", trigger_count = 0 },
	{ config_id = 1245015, name = "SELECT_OPTION_245015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_245015", action = "action_EVENT_SELECT_OPTION_245015", trigger_count = 0 },
	{ config_id = 1245016, name = "CHALLENGE_SUCCESS_245016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_245016", trigger_count = 0 },
	{ config_id = 1245017, name = "CHALLENGE_FAIL_245017", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_245017", trigger_count = 0 }
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
		gadgets = { 245001, 245013 },
		regions = { },
		triggers = { "GADGET_CREATE_245014", "SELECT_OPTION_245015", "CHALLENGE_SUCCESS_245016", "CHALLENGE_FAIL_245017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 245002, 245003, 245004, 245005, 245006, 245007, 245008, 245009, 245010, 245011 },
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
function condition_EVENT_GADGET_CREATE_245014(context, evt)
	if 245013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_245014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101245, 245013, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_245015(context, evt)
	-- 判断是gadgetid 245013 option_id 177
	if 245013 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_245015(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 180, 111101245, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101245, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 245013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 245001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_245016(context, evt)
	-- 将configid为 245001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为245012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 245012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_245017(context, evt)
	-- 将configid为 245001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 245001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为245013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 245013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101245, 2)
	
	return 0
end