-- 基础信息
local base_info = {
	group_id = 250023008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8005, monster_id = 22040101, pos = { x = -8.371, y = 0.028, z = -10.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8006, monster_id = 22040201, pos = { x = 6.079, y = 0.028, z = -10.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8007, monster_id = 22040201, pos = { x = 6.056, y = 0.028, z = 8.546 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8008, monster_id = 22040101, pos = { x = -8.122, y = 0.028, z = 8.836 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8009, monster_id = 22040201, pos = { x = 9.971, y = 0.028, z = -4.592 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8010, monster_id = 22040101, pos = { x = 9.858, y = 0.028, z = 2.592 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8011, monster_id = 22040201, pos = { x = -11.879, y = 0.028, z = -4.743 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8012, monster_id = 22040101, pos = { x = -11.992, y = 0.028, z = 2.440 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8013, monster_id = 22040101, pos = { x = -8.371, y = 0.028, z = -10.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8014, monster_id = 22040101, pos = { x = 6.079, y = 0.028, z = -10.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8015, monster_id = 22040201, pos = { x = 6.056, y = 0.028, z = 8.546 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8016, monster_id = 22040201, pos = { x = -8.122, y = 0.028, z = 8.836 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8017, monster_id = 22050101, pos = { x = 0.138, y = 0.028, z = -10.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8018, monster_id = 22050201, pos = { x = -0.028, y = 0.028, z = 9.304 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8019, monster_id = 22040101, pos = { x = -8.371, y = 0.028, z = -10.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8020, monster_id = 22040201, pos = { x = 6.079, y = 0.028, z = -10.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8021, monster_id = 22040101, pos = { x = -8.122, y = 0.028, z = 8.836 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 101 },
	{ config_id = 8022, monster_id = 22040201, pos = { x = 6.056, y = 0.028, z = 8.546 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8001, gadget_id = 70360010, pos = { x = 0.174, y = 0.107, z = -2.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1008002, name = "GADGET_CREATE_8002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8002", action = "action_EVENT_GADGET_CREATE_8002" },
	{ config_id = 1008003, name = "SELECT_OPTION_8003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8003", action = "action_EVENT_SELECT_OPTION_8003", trigger_count = 0 },
	{ config_id = 1008004, name = "SELECT_OPTION_8004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8004", action = "action_EVENT_SELECT_OPTION_8004", trigger_count = 0 },
	{ config_id = 1008023, name = "SELECT_OPTION_8023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8023", action = "action_EVENT_SELECT_OPTION_8023", trigger_count = 0 }
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
		gadgets = { 8001 },
		regions = { },
		triggers = { "GADGET_CREATE_8002", "SELECT_OPTION_8003", "SELECT_OPTION_8004", "SELECT_OPTION_8023" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 8005, 8006, 8007, 8008, 8009, 8010, 8011, 8012 },
		gadgets = { 8001 },
		regions = { },
		triggers = { "GADGET_CREATE_8002", "SELECT_OPTION_8003", "SELECT_OPTION_8004", "SELECT_OPTION_8023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 8013, 8014, 8015, 8016, 8017, 8018 },
		gadgets = { 8001 },
		regions = { },
		triggers = { "GADGET_CREATE_8002", "SELECT_OPTION_8003", "SELECT_OPTION_8004", "SELECT_OPTION_8023" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 8019, 8020, 8021, 8022 },
		gadgets = { 8001 },
		regions = { },
		triggers = { "GADGET_CREATE_8002", "SELECT_OPTION_8003", "SELECT_OPTION_8004", "SELECT_OPTION_8023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_8002(context, evt)
	if 8001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {51,52,53}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_8003(context, evt)
	-- 判断是gadgetid 8001 option_id 51
	if 8001 ~= evt.param1 then
		return false	
	end
	
	if 51 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8003(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250023008, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_8004(context, evt)
	-- 判断是gadgetid 8001 option_id 52
	if 8001 ~= evt.param1 then
		return false	
	end
	
	if 52 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250023008, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_8023(context, evt)
	-- 判断是gadgetid 8001 option_id 53
	if 8001 ~= evt.param1 then
		return false	
	end
	
	if 53 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250023008, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end