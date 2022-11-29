-- 基础信息
local base_info = {
	group_id = 133301152
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 26120101, pos = { x = -886.227, y = 317.153, z = 3290.199 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 23 },
	{ config_id = 152002, monster_id = 24010101, pos = { x = -864.297, y = 311.300, z = 3321.085 }, rot = { x = 0.000, y = 86.495, z = 0.000 }, level = 30, drop_tag = "遗迹守卫", affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 152003, monster_id = 24010101, pos = { x = -927.061, y = 308.965, z = 3323.937 }, rot = { x = 0.000, y = 248.599, z = 0.000 }, level = 30, drop_tag = "遗迹守卫", affix = { 6117 }, pose_id = 100, area_id = 23 },
	{ config_id = 152005, monster_id = 24020101, pos = { x = -893.968, y = 313.381, z = 3318.356 }, rot = { x = 0.000, y = 248.599, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 101, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
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
	{ config_id = 1152004, name = "GROUP_LOAD_152004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_152004", action = "action_EVENT_GROUP_LOAD_152004", trigger_count = 0 }
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
		monsters = { 152002, 152003, 152005 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_152004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 152001 },
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
function condition_EVENT_GROUP_LOAD_152004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_152004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301152, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"