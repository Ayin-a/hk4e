-- 基础信息
local base_info = {
	group_id = 133301249
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 249001, monster_id = 26120101, pos = { x = -574.854, y = 218.977, z = 3220.310 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 33, drop_tag = "大蕈兽", pose_id = 201, area_id = 22 },
	{ config_id = 249002, monster_id = 26090201, pos = { x = -572.615, y = 219.737, z = 3234.893 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 249003, monster_id = 26090201, pos = { x = -561.883, y = 221.014, z = 3227.884 }, rot = { x = 0.000, y = 254.686, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 249006, monster_id = 26090201, pos = { x = -587.546, y = 218.643, z = 3219.888 }, rot = { x = 0.000, y = 90.748, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 249007, monster_id = 26090201, pos = { x = -561.415, y = 221.500, z = 3225.886 }, rot = { x = 0.000, y = 337.829, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 249008, monster_id = 26090201, pos = { x = -565.436, y = 222.688, z = 3250.595 }, rot = { x = 0.000, y = 161.248, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 22, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
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
	{ config_id = 1249004, name = "GROUP_LOAD_249004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_249004", action = "action_EVENT_GROUP_LOAD_249004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 249005, monster_id = 24010101, pos = { x = -564.186, y = 220.790, z = 3234.747 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 33, drop_tag = "遗迹守卫", affix = { 6117 }, pose_id = 101, area_id = 22 }
	}
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
		triggers = { "GROUP_LOAD_249004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 249001, 249002, 249003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 249007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 249006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 249008 },
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
function condition_EVENT_GROUP_LOAD_249004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_249004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301249, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"