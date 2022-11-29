-- 基础信息
local base_info = {
	group_id = 133104762
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
	{ config_id = 1762001, name = "GROUP_LOAD_762001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_762001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 762002, pos = { x = 401.229, y = 180.500, z = 875.659 }, rot = { x = 0.000, y = 151.231, z = 0.000 }, area_id = 6 },
	{ config_id = 762003, pos = { x = 394.358, y = 180.500, z = 874.298 }, rot = { x = 0.000, y = 157.289, z = 0.000 }, area_id = 6 },
	{ config_id = 762004, pos = { x = 406.942, y = 180.500, z = 880.569 }, rot = { x = 0.000, y = 157.289, z = 0.000 }, area_id = 6 },
	{ config_id = 762005, pos = { x = 409.247, y = 180.500, z = 876.138 }, rot = { x = 0.000, y = 157.289, z = 0.000 }, area_id = 6 },
	{ config_id = 762006, pos = { x = 394.461, y = 180.500, z = 870.671 }, rot = { x = 0.000, y = 157.289, z = 0.000 }, area_id = 6 }
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
		triggers = { "GROUP_LOAD_762001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_762001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end