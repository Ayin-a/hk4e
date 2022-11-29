-- 基础信息
local base_info = {
	group_id = 133301343
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 343001, monster_id = 26120101, pos = { x = -982.834, y = 209.691, z = 3769.994 }, rot = { x = 0.000, y = 62.800, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 23 },
	{ config_id = 343002, monster_id = 26090201, pos = { x = -984.247, y = 209.725, z = 3770.009 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 343003, monster_id = 26090201, pos = { x = -985.701, y = 210.012, z = 3769.854 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 343005, monster_id = 26090201, pos = { x = -983.319, y = 209.257, z = 3768.704 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 343006, monster_id = 26090201, pos = { x = -979.786, y = 218.224, z = 3766.521 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 104, area_id = 23 },
	{ config_id = 343007, monster_id = 26090201, pos = { x = -984.878, y = 209.549, z = 3768.461 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23 },
	{ config_id = 343008, monster_id = 26090201, pos = { x = -986.050, y = 209.665, z = 3767.626 }, rot = { x = 0.000, y = 175.851, z = 0.000 }, level = 30, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 23 }
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
	{ config_id = 1343004, name = "GROUP_LOAD_343004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_343004", action = "action_EVENT_GROUP_LOAD_343004", trigger_count = 0 }
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
		monsters = { 343005, 343006, 343007, 343008 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_343004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 343001, 343002, 343003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_GROUP_LOAD_343004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_343004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301343, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"