-- 基础信息
local base_info = {
	group_id = 133310109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109001, monster_id = 28010202, pos = { x = -3032.161, y = 1.968, z = 4267.865 }, rot = { x = 0.000, y = 98.198, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 109003, monster_id = 28010202, pos = { x = -2999.969, y = 1.516, z = 4264.458 }, rot = { x = 0.000, y = 98.198, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 109004, monster_id = 28010202, pos = { x = -3011.236, y = 1.497, z = 4289.680 }, rot = { x = 0.000, y = 98.198, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 109005, monster_id = 28010301, pos = { x = -2995.642, y = 1.605, z = 4280.501 }, rot = { x = 0.000, y = 153.790, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 109006, monster_id = 28010301, pos = { x = -3020.148, y = 1.298, z = 4276.768 }, rot = { x = 0.000, y = 211.175, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 109007, monster_id = 28010301, pos = { x = -3003.299, y = 1.400, z = 4273.635 }, rot = { x = 0.000, y = 211.175, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NORMAL }
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
	{ config_id = 1109002, name = "GROUP_LOAD_109002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_109002", action = "action_EVENT_GROUP_LOAD_109002", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_109002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 109001, 109003, 109004, 109005, 109006, 109007 },
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
function condition_EVENT_GROUP_LOAD_109002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_109002(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133310109, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"