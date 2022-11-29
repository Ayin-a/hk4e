-- 基础信息
local base_info = {
	group_id = 133102027
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
	{ config_id = 1027001, name = "GROUP_LOAD_27001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_27001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 27002, pos = { x = 1674.209, y = 284.963, z = 396.320 }, rot = { x = 0.000, y = 189.447, z = 0.000 }, area_id = 5 },
	{ config_id = 27003, pos = { x = 1667.059, y = 284.124, z = 394.554 }, rot = { x = 0.000, y = 189.447, z = 0.000 }, area_id = 5 },
	{ config_id = 27004, pos = { x = 1677.630, y = 285.213, z = 390.482 }, rot = { x = 0.000, y = 189.447, z = 0.000 }, area_id = 5 },
	{ config_id = 27005, pos = { x = 1669.410, y = 283.660, z = 386.654 }, rot = { x = 0.000, y = 189.447, z = 0.000 }, area_id = 5 },
	{ config_id = 27006, pos = { x = 1673.924, y = 284.260, z = 386.899 }, rot = { x = 0.000, y = 189.447, z = 0.000 }, area_id = 5 }
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
		triggers = { "GROUP_LOAD_27001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_27001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end