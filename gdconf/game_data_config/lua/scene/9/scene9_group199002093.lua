-- 基础信息
local base_info = {
	group_id = 199002093
}

-- DEFS_MISCS
local defs = {
	stages = 
	{
		--key为第几段，value1为这一段的起点suite，value2为这一段的主体suite
		--这些suite里不要放台子以外的gadget, 不要有InitSuite
		[1] = { 2, 3 },
		[2] = { 4, 5 },
		[3] = { 6, 7 },
                                [4] = { 8, 9 },
	},
	--判断玩家掉落region的在哪个suite里
	--这个suite会在踩了第一个起点后加载，在失败和成功时移除
	region_suite = 10,
	--玩法完成时，goto哪个suite
	end_suite = 11,

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 93001, gadget_id = 70360359, pos = { x = 810.418, y = 125.000, z = -787.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 93002, gadget_id = 70360360, pos = { x = 815.843, y = 125.000, z = -792.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93004, gadget_id = 70211101, pos = { x = 941.521, y = 121.463, z = -796.833 }, rot = { x = 0.000, y = 324.970, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 93005, gadget_id = 70360359, pos = { x = 824.286, y = 134.000, z = -799.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93006, gadget_id = 70360359, pos = { x = 867.084, y = 145.076, z = -795.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93007, gadget_id = 70360359, pos = { x = 834.603, y = 138.500, z = -797.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93008, gadget_id = 70360360, pos = { x = 830.865, y = 134.000, z = -802.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93009, gadget_id = 70360360, pos = { x = 818.295, y = 129.500, z = -799.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93010, gadget_id = 70360359, pos = { x = 837.642, y = 138.500, z = -792.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93011, gadget_id = 70360359, pos = { x = 851.336, y = 139.076, z = -787.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93012, gadget_id = 70360360, pos = { x = 844.744, y = 134.576, z = -786.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93013, gadget_id = 70380315, pos = { x = 856.535, y = 139.076, z = -790.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900200016, start_route = false, area_id = 401 },
	{ config_id = 93014, gadget_id = 70380315, pos = { x = 861.470, y = 145.000, z = -793.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900200017, start_route = false, area_id = 401 },
	{ config_id = 93015, gadget_id = 70360360, pos = { x = 884.182, y = 137.620, z = -797.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93016, gadget_id = 70360359, pos = { x = 885.547, y = 142.120, z = -791.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93017, gadget_id = 70360359, pos = { x = 884.811, y = 142.120, z = -804.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93018, gadget_id = 70380316, pos = { x = 899.553, y = 137.620, z = -799.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900200018, start_route = false, area_id = 401 },
	{ config_id = 93019, gadget_id = 70360359, pos = { x = 906.145, y = 153.602, z = -794.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93020, gadget_id = 70360359, pos = { x = 914.402, y = 152.125, z = -801.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93021, gadget_id = 70360359, pos = { x = 908.174, y = 153.602, z = -800.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93022, gadget_id = 70360359, pos = { x = 905.066, y = 153.602, z = -805.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93023, gadget_id = 70360359, pos = { x = 919.061, y = 147.946, z = -796.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93027, gadget_id = 70360359, pos = { x = 926.225, y = 144.298, z = -797.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93028, gadget_id = 70360359, pos = { x = 932.166, y = 133.480, z = -790.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 93029, gadget_id = 70360359, pos = { x = 810.418, y = 125.000, z = -787.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 93024, shape = RegionShape.CUBIC, size = { x = 150.000, y = 73.880, z = 85.000 }, pos = { x = 873.580, y = 157.809, z = -787.275 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1093025, name = "GADGET_STATE_CHANGE_93025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93025", action = "action_EVENT_GADGET_STATE_CHANGE_93025", trigger_count = 0 },
	{ config_id = 1093026, name = "GADGET_STATE_CHANGE_93026", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_93026", action = "action_EVENT_GADGET_STATE_CHANGE_93026", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 93003, gadget_id = 70310302, pos = { x = 842.600, y = 118.000, z = -795.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 93030, gadget_id = 70310302, pos = { x = 916.300, y = 118.000, z = -795.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
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
	end_suite = 11,
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
		-- description = 留空,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 93001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 93002, 93005, 93007, 93008, 93009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 93010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 93011, 93012, 93013, 93014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_93025" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 93006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 93015, 93016, 93017, 93018, 93019, 93021, 93022 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_93026" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 93020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 93023, 93027, 93028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 落水判定,
		monsters = { },
		gadgets = { },
		regions = { 93024 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = endsuite,
		monsters = { },
		gadgets = { 93004, 93029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
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
function condition_EVENT_GADGET_STATE_CHANGE_93025(context, evt)
	if 93012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93025(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 93013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 93014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_93026(context, evt)
	if 93018 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_93026(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 93018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

require "V2_8/CloudPlatform"