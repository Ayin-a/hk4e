-- 基础信息
local base_info = {
	group_id = 133104763
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
	{ config_id = 1763001, name = "GROUP_LOAD_763001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_763001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 763002, pos = { x = 340.473, y = 185.861, z = 831.694 }, rot = { x = 0.000, y = 97.428, z = 0.000 }, area_id = 6 },
	{ config_id = 763003, pos = { x = 340.200, y = 186.741, z = 828.810 }, rot = { x = 0.000, y = 97.428, z = 0.000 }, area_id = 6 },
	{ config_id = 763004, pos = { x = 341.164, y = 185.822, z = 837.178 }, rot = { x = 0.000, y = 97.428, z = 0.000 }, area_id = 6 },
	{ config_id = 763005, pos = { x = 345.279, y = 184.558, z = 829.097 }, rot = { x = 0.000, y = 97.428, z = 0.000 }, area_id = 6 },
	{ config_id = 763006, pos = { x = 344.876, y = 185.158, z = 833.600 }, rot = { x = 0.000, y = 97.428, z = 0.000 }, area_id = 6 }
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
		triggers = { "GROUP_LOAD_763001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_763001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end