-- 基础信息
local base_info = {
	group_id = 199004118
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
	},
	--判断玩家掉落region的在哪个suite里
	--这个suite会在踩了第一个起点后加载，在失败和成功时移除
	region_suite = 8,
	--玩法完成时，goto哪个suite
	end_suite = 9,

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
	{ config_id = 118001, gadget_id = 70360359, pos = { x = -135.525, y = 124.829, z = -879.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 400 },
	{ config_id = 118002, gadget_id = 70360359, pos = { x = -132.001, y = 124.829, z = -874.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 118004, gadget_id = 70211101, pos = { x = -65.128, y = 120.742, z = -804.476 }, rot = { x = 0.000, y = 198.942, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 118005, gadget_id = 70360359, pos = { x = -125.658, y = 129.329, z = -863.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 118006, gadget_id = 70360359, pos = { x = -79.476, y = 151.829, z = -845.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118007, gadget_id = 70360359, pos = { x = -113.289, y = 133.829, z = -860.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 118008, gadget_id = 70360360, pos = { x = -118.854, y = 129.329, z = -864.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 118009, gadget_id = 70360360, pos = { x = -129.787, y = 124.829, z = -868.920 }, rot = { x = 0.000, y = 352.623, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 118010, gadget_id = 70360359, pos = { x = -107.439, y = 133.829, z = -860.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118011, gadget_id = 70360360, pos = { x = -100.711, y = 133.829, z = -859.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118012, gadget_id = 70360360, pos = { x = -95.544, y = 138.329, z = -854.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118013, gadget_id = 70360360, pos = { x = -88.257, y = 142.829, z = -855.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118014, gadget_id = 70360360, pos = { x = -85.354, y = 147.329, z = -848.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118017, gadget_id = 70360359, pos = { x = -135.525, y = 124.829, z = -879.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 400 },
	{ config_id = 118018, gadget_id = 70360359, pos = { x = -61.411, y = 174.899, z = -814.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118019, gadget_id = 70380315, pos = { x = -76.329, y = 151.829, z = -840.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900400013, start_route = false, area_id = 401 },
	{ config_id = 118020, gadget_id = 70360360, pos = { x = -76.727, y = 161.741, z = -833.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118021, gadget_id = 70380315, pos = { x = -70.283, y = 166.241, z = -831.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900400014, start_route = false, area_id = 401 },
	{ config_id = 118022, gadget_id = 70360359, pos = { x = -61.411, y = 179.435, z = -821.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118023, gadget_id = 70360360, pos = { x = -66.997, y = 174.935, z = -825.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118025, gadget_id = 70360359, pos = { x = -68.948, y = 167.092, z = -813.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118026, gadget_id = 70360359, pos = { x = -74.731, y = 161.628, z = -809.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 118027, gadget_id = 70360359, pos = { x = -71.560, y = 149.320, z = -803.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 118024, shape = RegionShape.CUBIC, size = { x = 135.000, y = 73.880, z = 110.000 }, pos = { x = -85.248, y = 156.559, z = -848.087 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1118015, name = "GADGET_STATE_CHANGE_118015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118015", action = "action_EVENT_GADGET_STATE_CHANGE_118015", trigger_count = 0 },
	{ config_id = 1118016, name = "GADGET_STATE_CHANGE_118016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_118016", action = "action_EVENT_GADGET_STATE_CHANGE_118016", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 118003, gadget_id = 70310302, pos = { x = -103.100, y = 118.000, z = -859.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 118028, gadget_id = 70310302, pos = { x = -62.200, y = 118.000, z = -830.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
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
	end_suite = 9,
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
		gadgets = { 118001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 118002, 118005, 118007, 118008, 118009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 118010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 118011, 118012, 118013, 118014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 118006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 118018, 118019, 118020, 118021, 118022, 118023, 118025, 118026, 118027 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_118015", "GADGET_STATE_CHANGE_118016" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 落水判定,
		monsters = { },
		gadgets = { },
		regions = { 118024 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 118004, 118017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
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
function condition_EVENT_GADGET_STATE_CHANGE_118015(context, evt)
	if 118019 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118015(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 118019) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_118016(context, evt)
	if 118021 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_118016(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 118021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

require "V2_8/CloudPlatform"