-- 基础信息
local base_info = {
	group_id = 133003622
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
	{ config_id = 1622006, name = "GROUP_LOAD_622006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_622006", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 622001, pos = { x = 2767.863, y = 272.570, z = -1478.662 }, rot = { x = 0.000, y = 187.235, z = 0.000 }, area_id = 1 },
	{ config_id = 622002, pos = { x = 2763.637, y = 272.151, z = -1481.794 }, rot = { x = 0.000, y = 204.352, z = 0.000 }, area_id = 1 },
	{ config_id = 622003, pos = { x = 2762.114, y = 271.273, z = -1487.245 }, rot = { x = 0.000, y = 151.280, z = 0.000 }, area_id = 1 },
	{ config_id = 622004, pos = { x = 2770.751, y = 272.016, z = -1482.503 }, rot = { x = 0.000, y = 212.062, z = 0.000 }, area_id = 1 },
	{ config_id = 622005, pos = { x = 2769.866, y = 270.941, z = -1487.379 }, rot = { x = 0.000, y = 182.825, z = 0.000 }, area_id = 1 }
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
		triggers = { "GROUP_LOAD_622006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_622006(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end