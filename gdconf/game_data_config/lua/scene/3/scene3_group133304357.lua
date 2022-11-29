-- 基础信息
local base_info = {
	group_id = 133304357
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 357001, monster_id = 26120101, pos = { x = -1356.639, y = 271.660, z = 1926.196 }, rot = { x = 0.000, y = 40.786, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 },
	{ config_id = 357002, monster_id = 26090201, pos = { x = -1349.858, y = 273.699, z = 1949.760 }, rot = { x = 0.000, y = 178.341, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 357003, monster_id = 26090201, pos = { x = -1364.090, y = 272.235, z = 1931.210 }, rot = { x = 0.000, y = 289.435, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 357005, monster_id = 24020401, pos = { x = -1361.720, y = 271.950, z = 1926.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 357006, monster_id = 24020401, pos = { x = -1345.905, y = 274.029, z = 1948.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 101, area_id = 21 },
	{ config_id = 357007, monster_id = 24020101, pos = { x = -1340.076, y = 272.893, z = 1921.068 }, rot = { x = 0.000, y = 316.171, z = 0.000 }, level = 30, drop_tag = "拟生机关", affix = { 6117 }, pose_id = 101, area_id = 21 }
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
	{ config_id = 1357004, name = "GROUP_LOAD_357004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_357004", action = "action_EVENT_GROUP_LOAD_357004", trigger_count = 0 }
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
		monsters = { 357005, 357006, 357007 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_357004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 357001, 357002, 357003 },
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
function condition_EVENT_GROUP_LOAD_357004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_357004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304357, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"