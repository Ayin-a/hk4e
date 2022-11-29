-- 基础信息
local base_info = {
	group_id = 250015038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38003, monster_id = 21010101, pos = { x = -23.022, y = 0.500, z = 83.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 38004, monster_id = 21010101, pos = { x = -12.431, y = 0.500, z = 83.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 38005, monster_id = 21010101, pos = { x = -21.254, y = 0.500, z = 72.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 38001, gadget_id = 70380004, pos = { x = -15.671, y = 0.500, z = 99.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 38002, gadget_id = 70360001, pos = { x = -15.671, y = 0.500, z = 99.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1038006, name = "GADGET_CREATE_38006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_38006", action = "action_EVENT_GADGET_CREATE_38006", trigger_count = 0 },
	{ config_id = 1038007, name = "SELECT_OPTION_38007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_38007", action = "action_EVENT_SELECT_OPTION_38007", trigger_count = 0 },
	{ config_id = 1038008, name = "CHALLENGE_SUCCESS_38008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_38008" },
	{ config_id = 1038009, name = "CHALLENGE_FAIL_38009", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_38009", trigger_count = 0 },
	{ config_id = 1038010, name = "PLATFORM_REACH_POINT_38010", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "888", condition = "condition_EVENT_PLATFORM_REACH_POINT_38010", action = "", trigger_count = 0 },
	{ config_id = 1038011, name = "ANY_GADGET_DIE_38011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_38011", action = "action_EVENT_ANY_GADGET_DIE_38011", trigger_count = 0 }
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
		gadgets = { 38001, 38002 },
		regions = { },
		triggers = { "GADGET_CREATE_38006", "SELECT_OPTION_38007", "CHALLENGE_SUCCESS_38008", "CHALLENGE_FAIL_38009", "PLATFORM_REACH_POINT_38010", "ANY_GADGET_DIE_38011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 38003, 38004, 38005 },
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
function condition_EVENT_GADGET_CREATE_38006(context, evt)
	if 38002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_38006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 250015038, 38002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_38007(context, evt)
	-- 判断是gadgetid 38002 option_id 7
	if 38002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_38007(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 30, 25, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 38002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015038, 2)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 38001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_38008(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015038, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_38009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 250015038, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 250015038, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_38010(context, evt)
	-- 判断是gadgetid 为 38001的移动平台，是否到达了4 的路线中的 4 点
	
	if 38001 ~= evt.param1 then
	  return false
	end
	
	if 4 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_38011(context, evt)
	if 38001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_38011(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end