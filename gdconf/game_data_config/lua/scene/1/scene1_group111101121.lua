-- 基础信息
local base_info = {
	group_id = 111101121
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
	{ config_id = 121001, gadget_id = 70950076, pos = { x = 2489.489, y = 222.880, z = -1320.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 121002, gadget_id = 70950073, pos = { x = 2489.525, y = 223.151, z = -1315.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
	{ config_id = 121003, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2490.991, y = 220.365, z = -1326.380 } }
}

-- 触发器
triggers = {
	{ config_id = 1121003, name = "ENTER_REGION_121003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_121003", trigger_count = 0 }
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
	end_suite = 0,
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
		gadgets = { 121001, 121002 },
		regions = { 121003 },
		triggers = { "ENTER_REGION_121003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_121003(context, evt)
	
	ScriptLib.SetPlatformPointArray(context, 121001, 110100009, { 1,2}, { route_type = 1 })
	ScriptLib.SetPlatformPointArray(context, 121002, 110100008, { 1,2}, { route_type = 1 })
	return 0
end