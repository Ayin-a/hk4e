-- 基础信息
local base_info = {
	group_id = 199001106
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
	{ config_id = 106001, gadget_id = 70360359, pos = { x = 180.077, y = 124.999, z = 539.777 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
	{ config_id = 106002, gadget_id = 70360359, pos = { x = 182.366, y = 124.999, z = 534.285 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106004, gadget_id = 70211101, pos = { x = 234.806, y = 119.849, z = 470.542 }, rot = { x = 350.696, y = 54.895, z = 6.355 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 },
	{ config_id = 106005, gadget_id = 70360359, pos = { x = 173.746, y = 133.999, z = 517.978 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106006, gadget_id = 70360359, pos = { x = 239.673, y = 169.378, z = 495.278 }, rot = { x = 0.000, y = 346.440, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106007, gadget_id = 70360359, pos = { x = 184.297, y = 133.999, z = 517.926 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106008, gadget_id = 70360360, pos = { x = 177.963, y = 129.499, z = 522.255 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106009, gadget_id = 70360360, pos = { x = 177.725, y = 124.999, z = 529.562 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106010, gadget_id = 70380315, pos = { x = 179.613, y = 133.999, z = 511.586 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, route_id = 900100039, start_route = false, area_id = 402 },
	{ config_id = 106011, gadget_id = 70380315, pos = { x = 179.912, y = 133.999, z = 493.989 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, route_id = 900100040, start_route = false, area_id = 402 },
	{ config_id = 106012, gadget_id = 70360360, pos = { x = 187.652, y = 143.617, z = 492.089 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106013, gadget_id = 70360360, pos = { x = 194.739, y = 148.117, z = 493.405 }, rot = { x = 0.000, y = 166.325, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106014, gadget_id = 70360360, pos = { x = 201.612, y = 152.617, z = 493.566 }, rot = { x = 0.000, y = 166.325, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106015, gadget_id = 70360359, pos = { x = 242.746, y = 164.480, z = 489.739 }, rot = { x = 0.000, y = 346.440, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106016, gadget_id = 70360359, pos = { x = 246.509, y = 159.858, z = 485.452 }, rot = { x = 0.000, y = 346.440, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106017, gadget_id = 70360359, pos = { x = 248.755, y = 155.021, z = 480.511 }, rot = { x = 0.000, y = 346.440, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106018, gadget_id = 70360359, pos = { x = 250.372, y = 149.866, z = 475.312 }, rot = { x = 0.000, y = 346.440, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106019, gadget_id = 70360359, pos = { x = 251.669, y = 145.515, z = 470.259 }, rot = { x = 0.000, y = 346.440, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106020, gadget_id = 70360359, pos = { x = 249.857, y = 139.054, z = 465.060 }, rot = { x = 0.000, y = 346.440, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106021, gadget_id = 70360359, pos = { x = 249.069, y = 131.053, z = 460.977 }, rot = { x = 0.000, y = 346.440, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106025, gadget_id = 70360359, pos = { x = 180.077, y = 124.999, z = 539.777 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 106026, gadget_id = 70360360, pos = { x = 208.539, y = 157.117, z = 494.160 }, rot = { x = 0.000, y = 166.325, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106027, gadget_id = 70360360, pos = { x = 215.946, y = 161.617, z = 495.415 }, rot = { x = 0.000, y = 166.325, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106028, gadget_id = 70360360, pos = { x = 223.425, y = 166.117, z = 496.592 }, rot = { x = 0.000, y = 166.325, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106029, gadget_id = 70360360, pos = { x = 229.914, y = 170.617, z = 497.919 }, rot = { x = 0.000, y = 166.325, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 106030, gadget_id = 70360359, pos = { x = 235.825, y = 175.117, z = 500.077 }, rot = { x = 0.000, y = 346.440, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 106024, shape = RegionShape.CUBIC, size = { x = 135.000, y = 73.880, z = 110.000 }, pos = { x = 212.006, y = 156.729, z = 496.512 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1106022, name = "GADGET_STATE_CHANGE_106022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106022", action = "action_EVENT_GADGET_STATE_CHANGE_106022", trigger_count = 0 },
	{ config_id = 1106023, name = "GADGET_STATE_CHANGE_106023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106023", action = "action_EVENT_GADGET_STATE_CHANGE_106023", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 106003, gadget_id = 70310302, pos = { x = 188.500, y = 118.000, z = 508.400 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 106031, gadget_id = 70310302, pos = { x = 220.900, y = 118.000, z = 475.600 }, rot = { x = 0.000, y = 179.886, z = 0.000 }, level = 20, area_id = 402 }
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
		gadgets = { 106001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 106002, 106005, 106007, 106008, 106009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 106010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_106022" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 106011, 106012, 106013, 106014, 106026, 106027, 106028, 106029 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_106023" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 106030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 106006, 106015, 106016, 106017, 106018, 106019, 106020, 106021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 落水判定,
		monsters = { },
		gadgets = { },
		regions = { 106024 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 106004, 106025 },
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
function condition_EVENT_GADGET_STATE_CHANGE_106022(context, evt)
	if 106010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106022(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 106010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_106023(context, evt)
	if 106011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106023(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 106011) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

require "V2_8/CloudPlatform"