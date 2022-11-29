-- 基础信息
local base_info = {
	group_id = 199004120
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
	{ config_id = 120001, gadget_id = 70360359, pos = { x = -568.719, y = 124.815, z = -309.162 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 400 },
	{ config_id = 120002, gadget_id = 70360359, pos = { x = -579.476, y = 129.315, z = -301.390 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 120004, gadget_id = 70211101, pos = { x = -641.918, y = 120.076, z = -210.375 }, rot = { x = 0.000, y = 184.338, z = 1.801 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	{ config_id = 120005, gadget_id = 70360359, pos = { x = -578.721, y = 129.315, z = -295.519 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 120006, gadget_id = 70360359, pos = { x = -630.231, y = 138.703, z = -232.062 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 120007, gadget_id = 70360359, pos = { x = -585.591, y = 133.815, z = -284.238 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 120008, gadget_id = 70360360, pos = { x = -583.718, y = 129.315, z = -290.807 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 120009, gadget_id = 70360360, pos = { x = -572.927, y = 124.815, z = -303.346 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 120010, gadget_id = 70360359, pos = { x = -590.716, y = 133.815, z = -281.388 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 120011, gadget_id = 70360360, pos = { x = -606.805, y = 133.518, z = -261.574 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 120012, gadget_id = 70360360, pos = { x = -595.004, y = 133.815, z = -275.898 }, rot = { x = 0.000, y = 288.884, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 120013, gadget_id = 70360359, pos = { x = -601.381, y = 138.315, z = -272.638 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 120014, gadget_id = 70360359, pos = { x = -610.347, y = 138.018, z = -255.467 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 120015, gadget_id = 70380316, pos = { x = -617.378, y = 138.018, z = -255.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900400015, area_id = 403 },
	{ config_id = 120016, gadget_id = 70380316, pos = { x = -620.492, y = 138.018, z = -228.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900400016, area_id = 403 },
	{ config_id = 120018, gadget_id = 70360359, pos = { x = -634.625, y = 142.518, z = -245.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 120019, gadget_id = 70360359, pos = { x = -621.833, y = 142.518, z = -222.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 120020, gadget_id = 70360359, pos = { x = -637.073, y = 134.505, z = -227.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 120021, gadget_id = 70360359, pos = { x = -635.598, y = 128.734, z = -220.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 120022, gadget_id = 70360359, pos = { x = -568.719, y = 124.815, z = -309.162 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 120024, shape = RegionShape.CUBIC, size = { x = 135.000, y = 100.000, z = 130.000 }, pos = { x = -601.329, y = 156.545, z = -259.392 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1120017, name = "GADGET_STATE_CHANGE_120017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_120017", action = "action_EVENT_GADGET_STATE_CHANGE_120017", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 120003, gadget_id = 70310302, pos = { x = -595.400, y = 118.000, z = -279.900 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 120023, gadget_id = 70310302, pos = { x = -631.400, y = 118.000, z = -231.800 }, rot = { x = 0.000, y = 261.051, z = 0.000 }, level = 20, area_id = 403 }
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
		gadgets = { 120001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 120002, 120005, 120007, 120008, 120009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 120010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 120011, 120012, 120013, 120014, 120015, 120016, 120018, 120019 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_120017" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 120006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 120020, 120021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 落水判定,
		monsters = { },
		gadgets = { },
		regions = { 120024 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = EndSuite,
		monsters = { },
		gadgets = { 120004, 120022 },
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
function condition_EVENT_GADGET_STATE_CHANGE_120017(context, evt)
	if 120015 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_120017(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 120015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 120016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

require "V2_8/CloudPlatform"