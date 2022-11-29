-- 基础信息
local base_info = {
	group_id = 133003625
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
	{ config_id = 1625006, name = "GROUP_LOAD_625006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_625006", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 625001, pos = { x = 2774.329, y = 291.458, z = -1584.547 }, rot = { x = 0.000, y = 249.752, z = 0.000 }, area_id = 1 },
	{ config_id = 625002, pos = { x = 2771.612, y = 290.315, z = -1576.788 }, rot = { x = 0.000, y = 233.327, z = 0.000 }, area_id = 1 },
	{ config_id = 625003, pos = { x = 2764.795, y = 288.258, z = -1577.719 }, rot = { x = 0.000, y = 178.592, z = 0.000 }, area_id = 1 },
	{ config_id = 625004, pos = { x = 2762.491, y = 287.765, z = -1582.969 }, rot = { x = 0.000, y = 110.259, z = 0.000 }, area_id = 1 },
	{ config_id = 625005, pos = { x = 2769.861, y = 290.137, z = -1586.039 }, rot = { x = 0.000, y = 256.142, z = 0.000 }, area_id = 1 }
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
		triggers = { "GROUP_LOAD_625006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_625006(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end