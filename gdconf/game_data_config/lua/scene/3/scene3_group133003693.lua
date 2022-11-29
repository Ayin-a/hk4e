-- 基础信息
local base_info = {
	group_id = 133003693
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
	{ config_id = 1693001, name = "GROUP_LOAD_693001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_693001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 693002, pos = { x = 2136.384, y = 236.073, z = -1656.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 693003, pos = { x = 2141.917, y = 235.649, z = -1655.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 693004, pos = { x = 2132.318, y = 235.331, z = -1651.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 693005, pos = { x = 2138.674, y = 234.987, z = -1645.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 693006, pos = { x = 2134.554, y = 235.394, z = -1647.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 }
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
		triggers = { "GROUP_LOAD_693001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_693001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end