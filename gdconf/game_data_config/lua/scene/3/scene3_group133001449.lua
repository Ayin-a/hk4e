-- 基础信息
local base_info = {
	group_id = 133001449
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
	{ config_id = 1449001, name = "GROUP_LOAD_449001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_449001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 449002, pos = { x = 1367.073, y = 239.081, z = -1619.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 449003, pos = { x = 1371.225, y = 240.083, z = -1613.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 449004, pos = { x = 1362.739, y = 239.330, z = -1613.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 449005, pos = { x = 1370.219, y = 237.778, z = -1608.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 449006, pos = { x = 1365.807, y = 238.378, z = -1609.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 }
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
		triggers = { "GROUP_LOAD_449001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_449001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end