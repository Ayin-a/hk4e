-- 基础信息
local base_info = {
	group_id = 133104700
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
	{ config_id = 1700006, name = "GROUP_LOAD_700006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_700006", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 700001, pos = { x = 686.238, y = 203.798, z = 178.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 },
	{ config_id = 700002, pos = { x = 693.001, y = 202.958, z = 181.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 },
	{ config_id = 700003, pos = { x = 681.904, y = 204.047, z = 183.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 },
	{ config_id = 700004, pos = { x = 689.385, y = 202.494, z = 188.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 },
	{ config_id = 700005, pos = { x = 684.972, y = 203.095, z = 187.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 }
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
		triggers = { "GROUP_LOAD_700006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_700006(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end