-- 基础信息
local base_info = {
	group_id = 133106325
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
	{ config_id = 1325001, name = "GROUP_LOAD_325001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_325001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 325002, pos = { x = -589.031, y = 220.138, z = 1290.395 }, rot = { x = 0.000, y = 223.235, z = 0.000 }, area_id = 8 },
	{ config_id = 325003, pos = { x = -582.234, y = 222.073, z = 1290.109 }, rot = { x = 0.000, y = 245.213, z = 0.000 }, area_id = 8 },
	{ config_id = 325004, pos = { x = -591.828, y = 221.585, z = 1298.265 }, rot = { x = 0.000, y = 211.780, z = 0.000 }, area_id = 8 },
	{ config_id = 325005, pos = { x = -596.124, y = 220.146, z = 1294.442 }, rot = { x = 0.000, y = 182.634, z = 0.000 }, area_id = 8 },
	{ config_id = 325006, pos = { x = -587.649, y = 219.856, z = 1283.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 8 }
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
		triggers = { "GROUP_LOAD_325001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_325001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end