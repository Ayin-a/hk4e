-- 基础信息
local base_info = {
	group_id = 133001452
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
	{ config_id = 1452001, name = "GROUP_LOAD_452001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_452001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 452002, pos = { x = 1359.271, y = 235.975, z = -1550.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 452003, pos = { x = 1366.034, y = 235.136, z = -1547.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 452004, pos = { x = 1354.937, y = 236.224, z = -1544.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 452005, pos = { x = 1362.417, y = 234.672, z = -1539.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 452006, pos = { x = 1358.005, y = 235.272, z = -1540.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 }
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
		triggers = { "GROUP_LOAD_452001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_452001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end