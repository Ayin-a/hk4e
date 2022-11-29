-- 基础信息
local base_info = {
	group_id = 133102019
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
	{ config_id = 1019001, name = "GROUP_LOAD_19001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_19001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 19002, pos = { x = 1686.699, y = 281.092, z = 326.965 }, rot = { x = 0.000, y = 256.495, z = 0.000 }, area_id = 5 },
	{ config_id = 19003, pos = { x = 1694.333, y = 283.083, z = 339.645 }, rot = { x = 0.000, y = 256.495, z = 0.000 }, area_id = 5 },
	{ config_id = 19004, pos = { x = 1684.314, y = 280.748, z = 335.210 }, rot = { x = 0.000, y = 256.495, z = 0.000 }, area_id = 5 },
	{ config_id = 19005, pos = { x = 1692.215, y = 281.392, z = 318.741 }, rot = { x = 0.000, y = 256.495, z = 0.000 }, area_id = 5 },
	{ config_id = 19006, pos = { x = 1687.903, y = 281.392, z = 320.358 }, rot = { x = 0.000, y = 256.495, z = 0.000 }, area_id = 5 }
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
		triggers = { "GROUP_LOAD_19001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_19001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end