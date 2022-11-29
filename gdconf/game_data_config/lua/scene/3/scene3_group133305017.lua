-- 基础信息
local base_info = {
	group_id = 133305017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 26120101, pos = { x = -2460.665, y = 337.760, z = 3937.999 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 201, area_id = 26 },
	{ config_id = 17002, monster_id = 26090201, pos = { x = -2448.764, y = 337.076, z = 3961.594 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 102, area_id = 26 },
	{ config_id = 17003, monster_id = 26090201, pos = { x = -2438.490, y = 336.686, z = 3943.035 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 17005, monster_id = 24020401, pos = { x = -2448.543, y = 336.600, z = 3939.754 }, rot = { x = 0.000, y = 48.620, z = 0.000 }, level = 32, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 100, area_id = 26 },
	{ config_id = 17007, monster_id = 26091001, pos = { x = -2446.909, y = 336.600, z = 3950.865 }, rot = { x = 0.000, y = 299.324, z = 0.000 }, level = 32, drop_tag = "蕈兽", affix = { 6117 }, pose_id = 101, area_id = 26 },
	{ config_id = 17008, monster_id = 26120301, pos = { x = -2461.951, y = 336.600, z = 3952.494 }, rot = { x = 0.000, y = 17.970, z = 0.000 }, level = 32, drop_tag = "大蕈兽", affix = { 6117 }, pose_id = 101, area_id = 26 },
	{ config_id = 17009, monster_id = 26091001, pos = { x = -2463.018, y = 339.501, z = 3942.208 }, rot = { x = 0.000, y = 37.427, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 26 }
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
	{ config_id = 1017006, name = "GROUP_LOAD_17006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_17006", action = "action_EVENT_GROUP_LOAD_17006", trigger_count = 0 }
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
		monsters = { 17005, 17007, 17008, 17009 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_17006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 17001, 17002, 17003 },
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
function condition_EVENT_GROUP_LOAD_17006(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_17006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133305017, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"