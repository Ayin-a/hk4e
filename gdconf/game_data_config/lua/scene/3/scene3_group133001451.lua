-- 基础信息
local base_info = {
	group_id = 133001451
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
	{ config_id = 1451001, name = "GROUP_LOAD_451001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_451001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 451002, pos = { x = 1463.516, y = 270.934, z = -1528.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 451003, pos = { x = 1472.036, y = 270.094, z = -1526.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 451004, pos = { x = 1466.936, y = 271.183, z = -1524.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 451005, pos = { x = 1470.171, y = 269.630, z = -1519.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 },
	{ config_id = 451006, pos = { x = 1466.089, y = 270.231, z = -1518.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 }
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
		triggers = { "GROUP_LOAD_451001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_451001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end