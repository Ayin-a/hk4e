-- 基础信息
local base_info = {
	group_id = 111101057
}

-- Trigger变量
local defs = {
	option_1 = 201,
	option_2 = 202,
	option_3 = 203,
	gadget_1 = 57002,
	water_1 = 57001
}

-- DEFS_MISCS
local play = {
	options = { 
		[0] = defs.option_1, --ore 
		[1] = defs.option_2, --mithril
		[2] = defs.option_3  --crystal
	},
	colors = {
		[0] = 0,   --origin
		[1] = 201, --red
		[2] = 203, --green
		[3] = 204, --yellow
		[4] = 901, --blue
		[5] = 902, --purple
		[6] = 903  --tealblue
	}
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
	{ config_id = 57002, gadget_id = 70360002, pos = { x = 2554.158, y = 357.057, z = -1738.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 57001, shape = RegionShape.POLYGON, pos = { x = 2552.927, y = 356.346, z = -1736.421 }, height = 47.625, point_array = { { x = 2554.280, y = -1726.399 }, { x = 2562.313, y = -1731.105 }, { x = 2562.535, y = -1739.043 }, { x = 2557.802, y = -1746.305 }, { x = 2546.547, y = -1746.443 }, { x = 2543.319, y = -1734.129 } } },
	{ config_id = 57003, shape = RegionShape.CYLINDER, radius = 10, pos = { x = 2554.158, y = 357.057, z = -1738.064 }, height = 10.000 },
	{ config_id = 57004, shape = RegionShape.SPHERE, radius = 30, pos = { x = 2556.633, y = 353.983, z = -1739.103 } }
}

-- 触发器
triggers = {
	{ config_id = 1057001, name = "ENTER_REGION_57001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57001", action = "action_EVENT_ENTER_REGION_57001", trigger_count = 0 },
	{ config_id = 1057003, name = "ENTER_REGION_57003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_57003", action = "action_EVENT_ENTER_REGION_57003", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_used", value = 0, no_refresh = true }
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
		gadgets = { 57002 },
		regions = { 57003, 57004 },
		triggers = { "ENTER_REGION_57003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 57002 },
		regions = { 57001, 57004 },
		triggers = { "ENTER_REGION_57001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_57001(context, evt)
	if evt.param1 ~= 57001 then return false end
	
	if 57001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57001(context, evt)
	local ret2 = ScriptLib.SetPlayerEyePointStream(context, 57001, 57004, true)
	ScriptLib.PrintContextLog(context, "## ret2 = "..ret2)
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_57003(context, evt)
	if evt.param1 ~= 57003 then return false end
	
	if 57003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_57003(context, evt)
	local ret1 = ScriptLib.SetPlayerEyePointStream(context, 57003, 57004, true)
	ScriptLib.PrintContextLog(context, "## ret1 = "..ret1)
	return 0
end