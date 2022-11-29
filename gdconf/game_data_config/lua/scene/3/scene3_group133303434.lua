-- 基础信息
local base_info = {
	group_id = 133303434
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 434001, monster_id = 28050106, pos = { x = -1110.548, y = 82.959, z = 3858.116 }, rot = { x = 0.000, y = 100.850, z = 0.000 }, level = 30, drop_tag = "魔法生物", disableWander = true, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 434003, monster_id = 28050106, pos = { x = -1116.959, y = 82.154, z = 3850.070 }, rot = { x = 0.000, y = 236.028, z = 0.000 }, level = 30, drop_tag = "魔法生物", disableWander = true, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 434004, monster_id = 28050106, pos = { x = -1093.426, y = 85.240, z = 3850.026 }, rot = { x = 0.000, y = 33.181, z = 0.000 }, level = 30, drop_tag = "魔法生物", disableWander = true, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	-- 小洞内借尸还魂
	{ config_id = 434005, monster_id = 28050106, pos = { x = -1157.879, y = 83.185, z = 3853.626 }, rot = { x = 0.000, y = 309.814, z = 0.000 }, level = 30, drop_tag = "魔法生物", disableWander = true, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	-- 小洞内借尸还魂
	{ config_id = 434006, monster_id = 28050106, pos = { x = -1155.757, y = 83.020, z = 3855.414 }, rot = { x = 0.000, y = 295.179, z = 0.000 }, level = 30, drop_tag = "魔法生物", disableWander = true, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_NORMAL }
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
	{ config_id = 1434002, name = "GROUP_LOAD_434002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_434002", action = "action_EVENT_GROUP_LOAD_434002", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_434002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 434001, 434003, 434004, 434005, 434006 },
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
function condition_EVENT_GROUP_LOAD_434002(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_434002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303434, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"