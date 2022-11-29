-- 基础信息
local base_info = {
	group_id = 133308013
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013008, name = "QUEST_START_13008", event = EventType.EVENT_QUEST_START, source = "7305544", condition = "", action = "action_EVENT_QUEST_START_13008", trigger_count = 0 },
	{ config_id = 1013009, name = "QUEST_FINISH_13009", event = EventType.EVENT_QUEST_FINISH, source = "7305544", condition = "", action = "action_EVENT_QUEST_FINISH_13009", trigger_count = 0 },
	{ config_id = 1013010, name = "QUEST_FINISH_13010", event = EventType.EVENT_QUEST_FINISH, source = "7305554", condition = "", action = "action_EVENT_QUEST_FINISH_13010", trigger_count = 0 },
	{ config_id = 1013011, name = "QUEST_FINISH_13011", event = EventType.EVENT_QUEST_FINISH, source = "7305555", condition = "", action = "action_EVENT_QUEST_FINISH_13011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 13001, gadget_id = 70330323, pos = { x = -1498.328, y = 142.127, z = 4381.312 }, rot = { x = 90.000, y = 10.649, z = 0.000 }, level = 32, area_id = 26 },
		{ config_id = 13002, gadget_id = 70330323, pos = { x = -1491.960, y = 142.127, z = 4415.181 }, rot = { x = 270.000, y = 10.649, z = 0.000 }, level = 32, area_id = 26 },
		{ config_id = 13003, gadget_id = 70330323, pos = { x = -1488.608, y = 142.127, z = 4397.800 }, rot = { x = 270.028, y = 99.226, z = 0.000 }, level = 32, area_id = 26 },
		{ config_id = 13004, gadget_id = 70330323, pos = { x = -1506.198, y = 142.138, z = 4400.657 }, rot = { x = 90.000, y = 99.226, z = 0.000 }, level = 32, area_id = 26 },
		{ config_id = 13005, gadget_id = 70330323, pos = { x = -1499.383, y = 147.073, z = 4400.467 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 32, area_id = 26 },
		{ config_id = 13006, gadget_id = 70330323, pos = { x = -1508.582, y = 142.406, z = 4388.170 }, rot = { x = 0.000, y = 358.907, z = 0.000 }, level = 32, area_id = 26 },
		{ config_id = 13007, gadget_id = 70330323, pos = { x = -1498.830, y = 142.406, z = 4421.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
	}
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_13008", "QUEST_FINISH_13009", "QUEST_FINISH_13010", "QUEST_FINISH_13011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_13008", "QUEST_FINISH_13009", "QUEST_FINISH_13010", "QUEST_FINISH_13011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_13008", "QUEST_FINISH_13009", "QUEST_FINISH_13010", "QUEST_FINISH_13011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_13008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308013, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_13009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308013, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_13010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308013, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_13011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308013, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end