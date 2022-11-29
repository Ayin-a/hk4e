-- 基础信息
local base_info = {
	group_id = 133004386
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
	{ config_id = 1386001, name = "GROUP_LOAD_386001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_386001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 386002, pos = { x = 2573.430, y = 260.293, z = -300.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 386003, pos = { x = 2576.698, y = 261.650, z = -299.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 386004, pos = { x = 2565.602, y = 259.459, z = -297.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 386005, pos = { x = 2572.773, y = 261.346, z = -293.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 386006, pos = { x = 2568.669, y = 260.033, z = -293.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 }
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
		triggers = { "GROUP_LOAD_386001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_386001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end