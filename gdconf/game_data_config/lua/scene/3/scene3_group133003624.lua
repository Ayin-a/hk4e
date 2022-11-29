-- 基础信息
local base_info = {
	group_id = 133003624
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
	{ config_id = 1624006, name = "GROUP_LOAD_624006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_624006", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 624001, pos = { x = 2719.321, y = 277.291, z = -1607.357 }, rot = { x = 0.000, y = 31.111, z = 0.000 }, area_id = 1 },
	{ config_id = 624002, pos = { x = 2720.973, y = 277.593, z = -1602.922 }, rot = { x = 0.000, y = 324.581, z = 0.000 }, area_id = 1 },
	{ config_id = 624003, pos = { x = 2717.068, y = 276.527, z = -1600.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 624004, pos = { x = 2712.680, y = 275.426, z = -1600.821 }, rot = { x = 0.000, y = 67.025, z = 0.000 }, area_id = 1 },
	{ config_id = 624005, pos = { x = 2714.517, y = 276.079, z = -1607.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 }
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
		triggers = { "GROUP_LOAD_624006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_624006(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end