-- 基础信息
local base_info = {
	group_id = 133003618
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
	{ config_id = 1618006, name = "GROUP_LOAD_618006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_618006", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 618001, pos = { x = 2776.306, y = 273.161, z = -1470.134 }, rot = { x = 0.000, y = 285.673, z = 0.000 }, area_id = 1 },
	{ config_id = 618002, pos = { x = 2777.800, y = 272.346, z = -1472.632 }, rot = { x = 0.000, y = 262.848, z = 0.000 }, area_id = 1 },
	{ config_id = 618003, pos = { x = 2775.217, y = 273.304, z = -1474.515 }, rot = { x = 0.000, y = 265.712, z = 0.000 }, area_id = 1 },
	{ config_id = 618004, pos = { x = 2773.877, y = 273.550, z = -1471.846 }, rot = { x = 0.000, y = 258.475, z = 0.000 }, area_id = 1 },
	{ config_id = 618005, pos = { x = 2779.504, y = 271.410, z = -1475.281 }, rot = { x = 0.000, y = 242.777, z = 0.000 }, area_id = 1 }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_618006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_618006(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end