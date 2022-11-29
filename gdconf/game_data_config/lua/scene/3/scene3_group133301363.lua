-- 基础信息
local base_info = {
	group_id = 133301363
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363001, monster_id = 26120301, pos = { x = -691.654, y = 219.776, z = 3511.052 }, rot = { x = 0.000, y = 262.677, z = 0.000 }, level = 33, drop_tag = "大蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 363002, monster_id = 26090201, pos = { x = -694.529, y = 220.006, z = 3508.745 }, rot = { x = 0.000, y = 295.283, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 104, area_id = 22 },
	{ config_id = 363003, monster_id = 26090101, pos = { x = -694.987, y = 219.939, z = 3512.542 }, rot = { x = 0.000, y = 261.882, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 104, area_id = 22 },
	{ config_id = 363006, monster_id = 26090401, pos = { x = -708.083, y = 225.396, z = 3500.537 }, rot = { x = 0.000, y = 0.097, z = 0.000 }, level = 33, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 363007, monster_id = 26090401, pos = { x = -691.473, y = 214.373, z = 3544.650 }, rot = { x = 0.000, y = 338.788, z = 0.000 }, level = 33, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 363008, monster_id = 26090401, pos = { x = -711.484, y = 223.462, z = 3538.472 }, rot = { x = 0.000, y = 167.816, z = 0.000 }, level = 33, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 363015, monster_id = 26090201, pos = { x = -692.904, y = 218.304, z = 3524.581 }, rot = { x = 0.000, y = 43.042, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 22 },
	{ config_id = 363016, monster_id = 26090201, pos = { x = -690.988, y = 217.842, z = 3525.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 22 }
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
	{ config_id = 1363004, name = "GROUP_LOAD_363004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_363004", action = "action_EVENT_GROUP_LOAD_363004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 363005, monster_id = 26090401, pos = { x = -704.868, y = 224.773, z = 3527.265 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 33, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 22 }
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
		monsters = { 363006, 363007, 363008, 363015, 363016 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_363004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 363001, 363002, 363003 },
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
function condition_EVENT_GROUP_LOAD_363004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_363004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301363, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"