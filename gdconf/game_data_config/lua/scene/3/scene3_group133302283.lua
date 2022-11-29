-- 基础信息
local base_info = {
	group_id = 133302283
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 283001, monster_id = 26090501, pos = { x = -94.838, y = 244.904, z = 2144.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 104, area_id = 20 },
	{ config_id = 283002, monster_id = 26090501, pos = { x = -94.838, y = 244.905, z = 2144.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 },
	{ config_id = 283003, monster_id = 26090501, pos = { x = -97.058, y = 245.030, z = 2144.108 }, rot = { x = 0.000, y = 38.829, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 },
	{ config_id = 283005, monster_id = 26090501, pos = { x = -97.058, y = 245.030, z = 2144.108 }, rot = { x = 0.000, y = 38.829, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 104, area_id = 20 },
	{ config_id = 283006, monster_id = 26090501, pos = { x = -72.762, y = 229.700, z = 2085.865 }, rot = { x = 0.000, y = 312.890, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 104, area_id = 20 },
	{ config_id = 283007, monster_id = 26090501, pos = { x = -72.478, y = 229.700, z = 2088.764 }, rot = { x = 0.000, y = 283.037, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 104, area_id = 20 },
	{ config_id = 283008, monster_id = 26090501, pos = { x = -92.504, y = 242.905, z = 2061.933 }, rot = { x = 0.000, y = 37.891, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 104, area_id = 20 },
	{ config_id = 283009, monster_id = 26090501, pos = { x = -87.780, y = 241.966, z = 2062.608 }, rot = { x = 0.000, y = 301.720, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, affix = { 6117 }, pose_id = 104, area_id = 20 },
	{ config_id = 283010, monster_id = 26090501, pos = { x = -72.762, y = 229.700, z = 2085.865 }, rot = { x = 0.000, y = 312.890, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 },
	{ config_id = 283011, monster_id = 26090501, pos = { x = -72.478, y = 229.700, z = 2088.764 }, rot = { x = 0.000, y = 283.037, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 },
	{ config_id = 283012, monster_id = 26090501, pos = { x = -92.504, y = 242.905, z = 2061.933 }, rot = { x = 0.000, y = 37.891, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 },
	{ config_id = 283013, monster_id = 26090501, pos = { x = -87.780, y = 241.966, z = 2062.608 }, rot = { x = 0.000, y = 301.720, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 }
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
	{ config_id = 1283004, name = "GROUP_LOAD_283004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_283004", action = "action_EVENT_GROUP_LOAD_283004", trigger_count = 0 }
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
		monsters = { 283001, 283005, 283006, 283007, 283008, 283009 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_283004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 283002, 283003, 283010, 283011, 283012, 283013 },
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
function condition_EVENT_GROUP_LOAD_283004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_283004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302283, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"