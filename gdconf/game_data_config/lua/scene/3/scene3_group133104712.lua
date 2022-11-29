-- 基础信息
local base_info = {
	group_id = 133104712
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
	{ config_id = 1712001, name = "GROUP_LOAD_712001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_712001", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 712002, pos = { x = 698.749, y = 203.238, z = 303.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 },
	{ config_id = 712003, pos = { x = 705.512, y = 203.425, z = 306.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 },
	{ config_id = 712004, pos = { x = 694.416, y = 203.487, z = 308.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 },
	{ config_id = 712005, pos = { x = 701.896, y = 204.678, z = 313.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 },
	{ config_id = 712006, pos = { x = 697.484, y = 202.535, z = 312.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 }
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
		triggers = { "GROUP_LOAD_712001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_712001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end