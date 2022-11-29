-- 基础信息
local base_info = {
	group_id = 133102040
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
	{ config_id = 1040001, name = "GROUP_LOAD_40001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_40001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 40002, pos = { x = 1544.024, y = 241.599, z = 473.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 40003, pos = { x = 1547.147, y = 239.304, z = 480.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 40004, pos = { x = 1544.155, y = 240.700, z = 476.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 }
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
		triggers = { "GROUP_LOAD_40001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_40001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end