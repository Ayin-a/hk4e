-- 基础信息
local base_info = {
	group_id = 133315035
}

-- DEFS_MISCS
-- 特定Region或者Group可以写，每次EnterRegion会检测
local defs ={
    regionList = {35001}, 
    -- 1,2,3,4对应4套等级
    curCommander =4,
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
	{ config_id = 35003, gadget_id = 70360001, pos = { x = 502.921, y = 122.316, z = 2540.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 35001, shape = RegionShape.POLYGON, pos = { x = 524.575, y = 95.000, z = 2463.252 }, height = 190.000, point_array = { { x = 457.223, y = 2310.969 }, { x = 404.002, y = 2323.938 }, { x = 401.345, y = 2409.006 }, { x = 396.825, y = 2592.364 }, { x = 566.828, y = 2615.536 }, { x = 652.324, y = 2539.169 }, { x = 539.501, y = 2345.498 } }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1035002, name = "QUEST_FINISH_35002", event = EventType.EVENT_QUEST_FINISH, source = "7306631", condition = "", action = "action_EVENT_QUEST_FINISH_35002", trigger_count = 0 },
	{ config_id = 1035004, name = "QUEST_FINISH_35004", event = EventType.EVENT_QUEST_FINISH, source = "7306623", condition = "", action = "action_EVENT_QUEST_FINISH_35004", trigger_count = 0 }
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
		-- description = ,
		monsters = { },
		gadgets = { 35003 },
		regions = { },
		triggers = { "QUEST_FINISH_35004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 35001 },
		triggers = { "QUEST_FINISH_35002" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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

-- 触发操作
function action_EVENT_QUEST_FINISH_35002(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315035, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315035, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_35004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315035, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/LanlaluoCommander"