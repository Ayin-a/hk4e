-- 基础信息
local base_info = {
	group_id = 133310110
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 110001, monster_id = 26090101, pos = { x = -3000.950, y = 1.298, z = 4274.343 }, rot = { x = 0.000, y = 75.162, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 110002, monster_id = 26090101, pos = { x = -2993.520, y = 1.400, z = 4272.744 }, rot = { x = 0.000, y = 77.746, z = 0.000 }, level = 32, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 28 },
	{ config_id = 110003, monster_id = 26090101, pos = { x = -3000.616, y = 1.400, z = 4267.068 }, rot = { x = 0.000, y = 81.390, z = 0.000 }, level = 32, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 28 },
	{ config_id = 110004, monster_id = 26090201, pos = { x = -3013.695, y = 1.400, z = 4283.151 }, rot = { x = 0.000, y = 73.178, z = 0.000 }, level = 32, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 28 },
	{ config_id = 110005, monster_id = 26120101, pos = { x = -3019.562, y = 1.207, z = 4279.825 }, rot = { x = 0.000, y = 71.136, z = 0.000 }, level = 32, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 28 },
	{ config_id = 110007, monster_id = 26090201, pos = { x = -3019.556, y = 1.386, z = 4282.584 }, rot = { x = 0.000, y = 80.702, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 110008, monster_id = 26090201, pos = { x = -3013.094, y = 1.060, z = 4278.059 }, rot = { x = 0.000, y = 120.863, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 110009, monster_id = 26090101, pos = { x = -3004.007, y = 1.344, z = 4278.803 }, rot = { x = 0.000, y = 75.162, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 110010, monster_id = 26090201, pos = { x = -3024.247, y = 1.400, z = 4276.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 28 }
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
	{ config_id = 1110006, name = "GROUP_LOAD_110006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_110006", action = "action_EVENT_GROUP_LOAD_110006", trigger_count = 0 }
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
		monsters = { 110002, 110003, 110004, 110010 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_110006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 110001, 110005, 110007, 110008, 110009 },
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
function condition_EVENT_GROUP_LOAD_110006(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_110006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310110, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"