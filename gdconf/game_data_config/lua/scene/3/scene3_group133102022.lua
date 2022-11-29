-- 基础信息
local base_info = {
	group_id = 133102022
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
	{ config_id = 1022001, name = "GROUP_LOAD_22001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_22001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 22002, pos = { x = 1537.851, y = 276.064, z = 366.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 22003, pos = { x = 1544.614, y = 275.873, z = 368.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 22004, pos = { x = 1533.518, y = 274.936, z = 371.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 22005, pos = { x = 1540.998, y = 275.919, z = 376.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 22006, pos = { x = 1536.586, y = 274.866, z = 375.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 }
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
		triggers = { "GROUP_LOAD_22001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_22001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end