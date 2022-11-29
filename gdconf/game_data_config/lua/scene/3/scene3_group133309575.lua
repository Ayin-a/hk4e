-- 基础信息
local base_info = {
	group_id = 133309575
}

-- Trigger变量
local defs = {
	elevatorOptionID = 433,
	gadget_elevatorID = 575001
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
	{ config_id = 575001, gadget_id = 70330316, pos = { x = -2351.017, y = 72.746, z = 5179.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, worktop_config = { init_options = { 433 } }, area_id = 27 },
	{ config_id = 575003, gadget_id = 70330287, pos = { x = -2351.017, y = 96.939, z = 5179.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 575004, gadget_id = 70330287, pos = { x = -2351.017, y = 109.192, z = 5179.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 575005, gadget_id = 70330287, pos = { x = -2351.017, y = 156.649, z = 5179.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 575007, gadget_id = 70330287, pos = { x = -2351.017, y = 96.939, z = 5179.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 575008, gadget_id = 70330287, pos = { x = -2351.017, y = 109.192, z = 5179.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 575009, gadget_id = 70330365, pos = { x = -2351.017, y = 156.649, z = 5179.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1575002, name = "SELECT_OPTION_575002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_575002", action = "action_EVENT_SELECT_OPTION_575002", trigger_count = 0 },
	{ config_id = 1575006, name = "QUEST_START_575006", event = EventType.EVENT_QUEST_START, source = "7305403", condition = "", action = "action_EVENT_QUEST_START_575006", trigger_count = 0 },
	{ config_id = 1575010, name = "QUEST_START_575010", event = EventType.EVENT_QUEST_START, source = "7305438", condition = "", action = "action_EVENT_QUEST_START_575010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "pointarray_ID", value = 330900034, no_refresh = false },
	{ config_id = 2, name = "CurMovePoint", value = 1, no_refresh = false },
	{ config_id = 3, name = "MovePoint1", value = 1, no_refresh = false },
	{ config_id = 4, name = "MovePoint2", value = 2, no_refresh = false },
	{ config_id = 5, name = "IsBlockMoveMode", value = 0, no_refresh = false },
	{ config_id = 6, name = "IsFinalMove", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { 575001, 575003, 575004, 575005 },
		regions = { },
		triggers = { "SELECT_OPTION_575002", "QUEST_START_575006", "QUEST_START_575010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 575007, 575008, 575009 },
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
function condition_EVENT_SELECT_OPTION_575002(context, evt)
	-- 判断是gadgetid 575001 option_id 433
	if 575001 ~= evt.param1 then
		return false	
	end
	
	if 433 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_575002(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309575, EntityType.GADGET, 575003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309575, EntityType.GADGET, 575004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133309575, EntityType.GADGET, 575005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_575006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133309575, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_575010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133309575, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_1/DeshretElevator"