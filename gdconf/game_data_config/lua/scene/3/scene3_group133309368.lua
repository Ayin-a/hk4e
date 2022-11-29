-- 基础信息
local base_info = {
	group_id = 133309368
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
	{ config_id = 368001, gadget_id = 70500000, pos = { x = -2354.029, y = -52.506, z = 5941.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 368002, gadget_id = 70500000, pos = { x = -2400.862, y = -49.451, z = 5882.244 }, rot = { x = 16.660, y = 358.302, z = 348.310 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 368003, gadget_id = 70500000, pos = { x = -2353.154, y = -51.731, z = 5910.679 }, rot = { x = 341.753, y = 72.368, z = 13.477 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 368005, gadget_id = 70500000, pos = { x = -2374.505, y = -52.260, z = 5918.263 }, rot = { x = 11.106, y = 71.829, z = 16.268 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 368006, gadget_id = 70500000, pos = { x = -2383.577, y = -51.768, z = 5918.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 368007, gadget_id = 70500000, pos = { x = -2380.674, y = -52.671, z = 5907.484 }, rot = { x = 350.578, y = 358.056, z = 9.939 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 368008, gadget_id = 70500000, pos = { x = -2403.326, y = -52.312, z = 5934.615 }, rot = { x = 353.567, y = 357.988, z = 2.025 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 368009, gadget_id = 70500000, pos = { x = -2413.782, y = -25.786, z = 5894.501 }, rot = { x = 26.523, y = 76.433, z = 11.771 }, level = 32, point_type = 2045, area_id = 27 },
	{ config_id = 368010, gadget_id = 70500000, pos = { x = -2372.697, y = -43.421, z = 5968.509 }, rot = { x = 352.854, y = 77.479, z = 344.671 }, level = 32, point_type = 2045, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1368004, name = "GROUP_LOAD_368004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_368004", action = "action_EVENT_GROUP_LOAD_368004", trigger_count = 0 }
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
		gadgets = { 368001, 368002, 368003 },
		regions = { },
		triggers = { "GROUP_LOAD_368004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 368005, 368006, 368007, 368008, 368009, 368010 },
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
function condition_EVENT_GROUP_LOAD_368004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_368004(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133309368, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"