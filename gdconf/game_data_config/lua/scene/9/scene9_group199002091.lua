-- 基础信息
local base_info = {
	group_id = 199002091
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
	{ config_id = 91001, gadget_id = 70360359, pos = { x = 620.816, y = 124.254, z = -226.775 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402 },
	{ config_id = 91002, gadget_id = 70360359, pos = { x = 625.804, y = 124.254, z = -229.917 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91004, gadget_id = 70211101, pos = { x = 616.499, y = 119.822, z = -364.274 }, rot = { x = 349.500, y = 118.745, z = 11.117 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 91005, gadget_id = 70360359, pos = { x = 633.013, y = 128.754, z = -240.109 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91006, gadget_id = 70360359, pos = { x = 615.050, y = 146.100, z = -302.638 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91007, gadget_id = 70380315, pos = { x = 631.461, y = 133.254, z = -253.148 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, route_id = 900200014, start_route = false, area_id = 402 },
	{ config_id = 91008, gadget_id = 70360360, pos = { x = 631.974, y = 128.754, z = -246.469 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91009, gadget_id = 70360360, pos = { x = 631.066, y = 124.254, z = -234.136 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91010, gadget_id = 70360359, pos = { x = 610.723, y = 133.254, z = -283.088 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91012, gadget_id = 70380316, pos = { x = 613.443, y = 133.254, z = -289.623 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, route_id = 900200015, start_route = false, area_id = 402 },
	{ config_id = 91013, gadget_id = 70360359, pos = { x = 619.240, y = 146.100, z = -293.529 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91014, gadget_id = 70360359, pos = { x = 614.326, y = 146.100, z = -296.923 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 91015, gadget_id = 70360360, pos = { x = 614.265, y = 142.749, z = -311.565 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 91016, gadget_id = 70360360, pos = { x = 607.229, y = 142.153, z = -325.150 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 91017, gadget_id = 70360360, pos = { x = 601.422, y = 138.811, z = -339.825 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 91018, gadget_id = 70360360, pos = { x = 601.105, y = 143.311, z = -347.326 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 91019, gadget_id = 70360359, pos = { x = 613.321, y = 147.249, z = -318.269 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 91021, gadget_id = 70360359, pos = { x = 607.432, y = 146.653, z = -331.507 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 91022, gadget_id = 70360359, pos = { x = 602.997, y = 147.811, z = -353.543 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 91023, gadget_id = 70360359, pos = { x = 620.816, y = 124.254, z = -226.775 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	{ config_id = 91026, gadget_id = 70360359, pos = { x = 608.934, y = 146.100, z = -294.602 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 91024, shape = RegionShape.CUBIC, size = { x = 100.000, y = 73.880, z = 150.000 }, pos = { x = 615.055, y = 156.618, z = -290.071 }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1091011, name = "GADGET_STATE_CHANGE_91011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91011", action = "action_EVENT_GADGET_STATE_CHANGE_91011", trigger_count = 0 },
	{ config_id = 1091020, name = "GADGET_STATE_CHANGE_91020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91020", action = "action_EVENT_GADGET_STATE_CHANGE_91020", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 91003, gadget_id = 70310302, pos = { x = 615.100, y = 118.000, z = -271.900 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 91025, gadget_id = 70310302, pos = { x = 605.100, y = 118.000, z = -331.000 }, rot = { x = 0.000, y = 317.184, z = 0.000 }, level = 20, area_id = 401 }
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
		gadgets = { 91001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 91002, 91005, 91007, 91008, 91009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 91010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 91012, 91013, 91014, 91026 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91020" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 91006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 91015, 91016, 91017, 91018, 91019, 91021, 91022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 落水判定,
		monsters = { },
		gadgets = { },
		regions = { 91024 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 91004, 91023 },
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
function condition_EVENT_GADGET_STATE_CHANGE_91011(context, evt)
	if 91007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91011(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 91007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91020(context, evt)
	if 91012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91020(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 91012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

require "V2_8/CloudPlatform"