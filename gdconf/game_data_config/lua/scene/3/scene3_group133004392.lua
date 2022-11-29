-- 基础信息
local base_info = {
	group_id = 133004392
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
	{ config_id = 1392001, name = "GROUP_LOAD_392001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_392001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 392002, pos = { x = 2641.161, y = 260.820, z = -363.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 392003, pos = { x = 2643.963, y = 261.606, z = -359.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 392004, pos = { x = 2647.975, y = 261.355, z = -360.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 }
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
		triggers = { "GROUP_LOAD_392001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_392001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end