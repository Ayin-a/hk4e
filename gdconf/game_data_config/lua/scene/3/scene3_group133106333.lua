-- 基础信息
local base_info = {
	group_id = 133106333
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
	{ config_id = 1333001, name = "GROUP_LOAD_333001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_333001", trigger_count = -1 }
}

-- 点位
points = {
	{ config_id = 333002, pos = { x = -728.333, y = 207.833, z = 1267.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 8 },
	{ config_id = 333003, pos = { x = -721.570, y = 206.993, z = 1270.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 8 },
	{ config_id = 333004, pos = { x = -732.666, y = 208.082, z = 1272.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 8 },
	{ config_id = 333005, pos = { x = -725.186, y = 208.499, z = 1277.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 8 },
	{ config_id = 333006, pos = { x = -729.599, y = 207.130, z = 1276.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 8 }
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
		triggers = { "GROUP_LOAD_333001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_333001(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end