-- 基础信息
local base_info = {
	group_id = 133302069
}

-- DEFS_MISCS
-- 特定Region或者Group可以写，每次EnterRegion会检测
local defs ={
    regionList = {69001}, 
    -- 1,2,3,4对应4套等级
    curCommander =1,
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
	{ config_id = 69001, shape = RegionShape.POLYGON, pos = { x = -349.404, y = 97.500, z = 2282.618 }, height = 195.000, point_array = { { x = -464.135, y = 2363.566 }, { x = -422.671, y = 2356.838 }, { x = -289.647, y = 2299.927 }, { x = -247.393, y = 2316.617 }, { x = -169.315, y = 2248.607 }, { x = -235.839, y = 2213.524 }, { x = -290.403, y = 2134.633 }, { x = -526.927, y = 2255.462 }, { x = -526.973, y = 2347.610 }, { x = -529.494, y = 2392.934 }, { x = -525.518, y = 2430.604 }, { x = -477.473, y = 2427.267 }, { x = -480.571, y = 2386.326 } }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1069002, name = "QUEST_START_69002", event = EventType.EVENT_QUEST_START, source = "7306126", condition = "", action = "action_EVENT_QUEST_START_69002", trigger_count = 0 },
	{ config_id = 1069006, name = "QUEST_START_69006", event = EventType.EVENT_QUEST_START, source = "7306112", condition = "", action = "action_EVENT_QUEST_START_69006", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_69006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 69001 },
		triggers = { "QUEST_START_69002" },
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
function action_EVENT_QUEST_START_69002(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302069, 2)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302069, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_69006(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133302069, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/LanlaluoCommander"