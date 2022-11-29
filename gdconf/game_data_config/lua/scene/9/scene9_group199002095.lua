-- 基础信息
local base_info = {
	group_id = 199002095
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
	{ config_id = 95001, gadget_id = 70360359, pos = { x = 11.245, y = 124.738, z = -144.339 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 95002, gadget_id = 70360359, pos = { x = 5.770, y = 124.738, z = -146.531 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95004, gadget_id = 70211101, pos = { x = 113.005, y = 120.880, z = -192.517 }, rot = { x = 7.522, y = 140.417, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 95005, gadget_id = 70360359, pos = { x = 3.332, y = 129.238, z = -159.227 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95006, gadget_id = 70380315, pos = { x = 57.893, y = 149.924, z = -178.098 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, route_id = 900200019, start_route = false, area_id = 401 },
	{ config_id = 95007, gadget_id = 70360359, pos = { x = 8.874, y = 131.924, z = -170.467 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95008, gadget_id = 70360360, pos = { x = 4.095, y = 127.424, z = -166.099 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95009, gadget_id = 70360360, pos = { x = 2.191, y = 124.738, z = -152.348 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95010, gadget_id = 70360359, pos = { x = 14.732, y = 131.924, z = -169.934 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95011, gadget_id = 70360360, pos = { x = 26.765, y = 136.424, z = -178.502 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95012, gadget_id = 70360360, pos = { x = 20.298, y = 131.924, z = -174.449 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95013, gadget_id = 70360359, pos = { x = 32.152, y = 140.924, z = -182.419 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95014, gadget_id = 70360360, pos = { x = 38.532, y = 140.924, z = -182.259 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95015, gadget_id = 70380316, pos = { x = 78.031, y = 149.924, z = -170.533 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, route_id = 900200020, area_id = 401 },
	{ config_id = 95017, gadget_id = 70360359, pos = { x = 11.245, y = 124.738, z = -144.339 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	{ config_id = 95019, gadget_id = 70360359, pos = { x = 83.654, y = 154.424, z = -180.338 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95020, gadget_id = 70360360, pos = { x = 90.016, y = 154.424, z = -181.838 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95021, gadget_id = 70360359, pos = { x = 95.568, y = 158.924, z = -179.316 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95022, gadget_id = 70360359, pos = { x = 106.074, y = 163.424, z = -187.402 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95023, gadget_id = 70360360, pos = { x = 100.780, y = 158.924, z = -184.291 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95026, gadget_id = 70360360, pos = { x = 46.214, y = 145.424, z = -182.261 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 95027, gadget_id = 70360359, pos = { x = 52.323, y = 149.924, z = -179.127 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 95024, shape = RegionShape.CUBIC, size = { x = 150.000, y = 73.880, z = 110.000 }, pos = { x = 56.298, y = 156.468, z = -178.269 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1095016, name = "GADGET_STATE_CHANGE_95016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95016", action = "action_EVENT_GADGET_STATE_CHANGE_95016", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 95003, gadget_id = 70310302, pos = { x = 31.900, y = 118.000, z = -166.600 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 95018, gadget_id = 70310302, pos = { x = 93.800, y = 118.000, z = -174.300 }, rot = { x = 0.000, y = 72.871, z = 0.000 }, level = 20, area_id = 401 }
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
		gadgets = { 95001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 95002, 95005, 95007, 95008, 95009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 95010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 95011, 95012, 95013, 95014, 95026, 95027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 95006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_95016" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 95015, 95019, 95020, 95021, 95022, 95023 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 落水判定,
		monsters = { },
		gadgets = { },
		regions = { 95024 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 95004, 95017 },
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
function condition_EVENT_GADGET_STATE_CHANGE_95016(context, evt)
	if 95006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95016(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 95006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 95015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

require "V2_8/CloudPlatform"