-- 基础信息
local base_info = {
	group_id = 133315034
}

-- DEFS_MISCS
-- 特定Region或者Group可以写，每次EnterRegion会检测
local defs ={
    regionList = {34001}, 
    -- 1,2,3,4对应4套等级
    curCommander =3,
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
	{ config_id = 34001, shape = RegionShape.POLYGON, pos = { x = 256.575, y = 200.000, z = 2284.575 }, height = 400.000, point_array = { { x = -21.758, y = 2336.780 }, { x = 23.049, y = 2258.149 }, { x = 94.008, y = 2209.447 }, { x = 207.950, y = 2166.031 }, { x = 338.745, y = 2166.434 }, { x = 534.908, y = 2141.875 }, { x = 522.863, y = 2229.173 }, { x = 416.745, y = 2305.613 }, { x = 456.545, y = 2392.405 }, { x = 333.823, y = 2419.604 }, { x = 226.286, y = 2427.275 }, { x = 137.301, y = 2404.080 }, { x = 38.096, y = 2404.077 } }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1034002, name = "QUEST_FINISH_34002", event = EventType.EVENT_QUEST_FINISH, source = "7306638", condition = "", action = "action_EVENT_QUEST_FINISH_34002", trigger_count = 0 },
	{ config_id = 1034007, name = "QUEST_FINISH_34007", event = EventType.EVENT_QUEST_FINISH, source = "7306605", condition = "", action = "action_EVENT_QUEST_FINISH_34007", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_34007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 34001 },
		triggers = { "QUEST_FINISH_34002" },
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
function action_EVENT_QUEST_FINISH_34002(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315034, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315034, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_34007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133315034, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/LanlaluoCommander"