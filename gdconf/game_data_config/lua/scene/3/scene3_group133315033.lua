-- 基础信息
local base_info = {
	group_id = 133315033
}

-- DEFS_MISCS
-- 特定Region或者Group可以写，每次EnterRegion会检测
local defs ={
    regionList = {33001}, 
    -- 1,2,3,4对应4套等级
    curCommander =2,
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
	{ config_id = 33001, shape = RegionShape.POLYGON, pos = { x = 152.767, y = 120.653, z = 2920.150 }, height = 241.306, point_array = { { x = 55.700, y = 2769.216 }, { x = 7.398, y = 2823.668 }, { x = -22.718, y = 3086.795 }, { x = 328.253, y = 3087.933 }, { x = 295.147, y = 2752.367 } }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1033002, name = "QUEST_START_33002", event = EventType.EVENT_QUEST_START, source = "7306334", condition = "", action = "action_EVENT_QUEST_START_33002", trigger_count = 0 }
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
		gadgets = { },
		regions = { 33001 },
		triggers = { "QUEST_START_33002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function action_EVENT_QUEST_START_33002(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315033, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/LanlaluoCommander"