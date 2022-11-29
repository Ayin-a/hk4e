-- 基础信息
local base_info = {
	group_id = 133301368
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 368001, monster_id = 24020101, pos = { x = -822.403, y = 28.036, z = 3327.475 }, rot = { x = 0.000, y = 349.164, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 23 },
	{ config_id = 368002, monster_id = 24020201, pos = { x = -823.466, y = 28.726, z = 3329.629 }, rot = { x = 0.000, y = 31.175, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 23 },
	{ config_id = 368003, monster_id = 24020301, pos = { x = -826.471, y = 29.670, z = 3332.210 }, rot = { x = 0.000, y = 318.149, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 23 },
	{ config_id = 368005, monster_id = 24020401, pos = { x = -847.461, y = 33.993, z = 3335.266 }, rot = { x = 0.000, y = 115.017, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 100, area_id = 23 },
	{ config_id = 368006, monster_id = 24020401, pos = { x = -827.349, y = 29.591, z = 3331.464 }, rot = { x = 0.000, y = 269.579, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 100, area_id = 23 },
	{ config_id = 368007, monster_id = 24020401, pos = { x = -835.713, y = 31.147, z = 3330.665 }, rot = { x = 0.000, y = 115.017, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 100, area_id = 23 }
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
		monsters = { 368005, 368006, 368007 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_368004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 368001, 368002, 368003 },
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
function condition_EVENT_GROUP_LOAD_368004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_368004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301368, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"