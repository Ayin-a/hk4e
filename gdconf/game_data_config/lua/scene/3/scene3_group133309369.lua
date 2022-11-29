-- 基础信息
local base_info = {
	group_id = 133309369
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 369001, monster_id = 28040101, pos = { x = -2399.081, y = -53.919, z = 5906.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 27 },
	{ config_id = 369003, monster_id = 28010203, pos = { x = -2413.257, y = -16.704, z = 5868.756 }, rot = { x = 0.000, y = 348.190, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 },
	{ config_id = 369004, monster_id = 28010201, pos = { x = -2406.594, y = -48.609, z = 5883.197 }, rot = { x = 0.000, y = 143.479, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 },
	{ config_id = 369005, monster_id = 28020604, pos = { x = -2401.947, y = -38.203, z = 5950.494 }, rot = { x = 0.000, y = 121.584, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 369006, monster_id = 28020604, pos = { x = -2356.470, y = -51.973, z = 5902.054 }, rot = { x = 0.000, y = 279.002, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 27 },
	{ config_id = 369007, monster_id = 28040101, pos = { x = -2378.451, y = -54.018, z = 5937.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 27 },
	{ config_id = 369008, monster_id = 28010301, pos = { x = -2375.361, y = -53.500, z = 5948.131 }, rot = { x = 0.000, y = 197.841, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 },
	{ config_id = 369009, monster_id = 28010301, pos = { x = -2376.623, y = -53.500, z = 5922.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 },
	{ config_id = 369010, monster_id = 28010301, pos = { x = -2354.502, y = -53.500, z = 5920.622 }, rot = { x = 0.000, y = 306.855, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 },
	{ config_id = 369011, monster_id = 28010301, pos = { x = -2387.065, y = -53.500, z = 5909.578 }, rot = { x = 0.000, y = 220.476, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 27 },
	{ config_id = 369012, monster_id = 28040101, pos = { x = -2358.920, y = -54.220, z = 5918.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 27 },
	{ config_id = 369013, monster_id = 28040101, pos = { x = -2375.162, y = -54.132, z = 5938.142 }, rot = { x = 0.000, y = 235.203, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 27 }
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
	{ config_id = 1369002, name = "GROUP_LOAD_369002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_369002", action = "action_EVENT_GROUP_LOAD_369002", trigger_count = 0 }
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
	end_suite = 2,
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
		triggers = { "GROUP_LOAD_369002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 369001, 369003, 369004, 369005, 369006, 369007, 369008, 369009, 369010, 369011, 369012, 369013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_369002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_369002(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309369, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"