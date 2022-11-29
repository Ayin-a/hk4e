-- 基础信息
local base_info = {
	group_id = 133003620
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
	{ config_id = 1620006, name = "GROUP_LOAD_620006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_620006", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 620001, pos = { x = 2828.521, y = 276.172, z = -1510.810 }, rot = { x = 0.000, y = 293.376, z = 0.000 }, area_id = 1 },
	{ config_id = 620002, pos = { x = 2826.998, y = 275.425, z = -1505.445 }, rot = { x = 0.000, y = 266.302, z = 0.000 }, area_id = 1 },
	{ config_id = 620003, pos = { x = 2822.168, y = 275.089, z = -1507.967 }, rot = { x = 0.000, y = 209.278, z = 0.000 }, area_id = 1 },
	{ config_id = 620004, pos = { x = 2822.264, y = 274.887, z = -1512.098 }, rot = { x = 0.000, y = 232.423, z = 0.000 }, area_id = 1 },
	{ config_id = 620005, pos = { x = 2826.090, y = 275.408, z = -1515.433 }, rot = { x = 0.000, y = 344.430, z = 0.000 }, area_id = 1 }
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
		triggers = { "GROUP_LOAD_620006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_620006(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end