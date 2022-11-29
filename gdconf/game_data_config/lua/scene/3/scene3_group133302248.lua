-- 基础信息
local base_info = {
	group_id = 133302248
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 248006, monster_id = 20011401, pos = { x = -53.928, y = 227.387, z = 2503.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", affix = { 6117 }, area_id = 20 },
	{ config_id = 248007, monster_id = 20011401, pos = { x = -61.984, y = 228.063, z = 2503.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", affix = { 6117 }, area_id = 20 },
	{ config_id = 248008, monster_id = 20011401, pos = { x = -56.481, y = 228.854, z = 2523.260 }, rot = { x = 0.000, y = 181.653, z = 0.000 }, level = 27, drop_tag = "史莱姆", affix = { 6117 }, area_id = 20 },
	{ config_id = 248009, monster_id = 20011401, pos = { x = -62.958, y = 228.384, z = 2524.884 }, rot = { x = 0.000, y = 181.653, z = 0.000 }, level = 27, drop_tag = "史莱姆", affix = { 6117 }, area_id = 20 },
	{ config_id = 248010, monster_id = 26090901, pos = { x = -57.809, y = 228.778, z = 2526.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 20 },
	{ config_id = 248011, monster_id = 26090901, pos = { x = -54.254, y = 226.701, z = 2499.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 20 },
	{ config_id = 248012, monster_id = 26090901, pos = { x = -66.439, y = 230.607, z = 2516.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 6117 }, pose_id = 101, area_id = 20 },
	{ config_id = 248013, monster_id = 20011401, pos = { x = -53.421, y = 228.294, z = 2510.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 248014, monster_id = 20011401, pos = { x = -60.317, y = 228.173, z = 2510.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 248015, monster_id = 20011501, pos = { x = -56.666, y = 227.992, z = 2513.970 }, rot = { x = 0.000, y = 181.866, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 248005, shape = RegionShape.SPHERE, radius = 7, pos = { x = -58.827, y = 228.001, z = 2510.654 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1248004, name = "GROUP_LOAD_248004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_248004", action = "action_EVENT_GROUP_LOAD_248004", trigger_count = 0 },
	{ config_id = 1248005, name = "ENTER_REGION_248005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_248005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 248001, gadget_id = 70500000, pos = { x = -36.084, y = 229.114, z = 2479.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 2052, area_id = 20 },
		{ config_id = 248002, gadget_id = 70500000, pos = { x = -14.423, y = 230.885, z = 2483.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 2052, area_id = 20 },
		{ config_id = 248003, gadget_id = 70500000, pos = { x = -23.191, y = 228.859, z = 2461.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 2052, area_id = 20 }
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
		regions = { 248005 },
		triggers = { "GROUP_LOAD_248004", "ENTER_REGION_248005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 248013, 248014, 248015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 248006, 248007, 248008, 248009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 248010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 248011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 248012 },
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
function condition_EVENT_GROUP_LOAD_248004(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_248004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302248, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_248005(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302248, 3)
	
	return 0
end

require "V3_0/DeathFieldStandard"