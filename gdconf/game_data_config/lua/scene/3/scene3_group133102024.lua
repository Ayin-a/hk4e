-- 基础信息
local base_info = {
	group_id = 133102024
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
	{ config_id = 1024001, name = "GROUP_LOAD_24001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_24001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 24002, pos = { x = 1624.916, y = 283.723, z = 352.413 }, rot = { x = 0.000, y = 84.302, z = 0.000 }, area_id = 5 },
	{ config_id = 24003, pos = { x = 1628.250, y = 282.883, z = 346.921 }, rot = { x = 0.000, y = 34.271, z = 0.000 }, area_id = 5 },
	{ config_id = 24004, pos = { x = 1629.567, y = 285.749, z = 356.941 }, rot = { x = 0.000, y = 128.941, z = 0.000 }, area_id = 5 },
	{ config_id = 24005, pos = { x = 1630.784, y = 284.424, z = 355.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 24006, pos = { x = 1617.806, y = 286.182, z = 345.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 }
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
		triggers = { "GROUP_LOAD_24001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_24001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end