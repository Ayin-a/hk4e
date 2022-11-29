-- 基础信息
local base_info = {
	group_id = 133004372
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
	{ config_id = 1372001, name = "GROUP_LOAD_372001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_372001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 372002, pos = { x = 2647.029, y = 283.248, z = -289.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 372003, pos = { x = 2651.985, y = 285.107, z = -290.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 372004, pos = { x = 2647.889, y = 283.748, z = -281.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 372005, pos = { x = 2639.731, y = 280.509, z = -285.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 },
	{ config_id = 372006, pos = { x = 2648.206, y = 283.523, z = -296.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4 }
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
		triggers = { "GROUP_LOAD_372001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_372001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end