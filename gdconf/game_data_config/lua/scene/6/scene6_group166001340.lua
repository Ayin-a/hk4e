-- 基础信息
local base_info = {
	group_id = 166001340
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
	{ config_id = 340001, gadget_id = 70360024, pos = { x = 985.039, y = 928.467, z = 471.825 }, rot = { x = 0.000, y = 333.399, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 340002, gadget_id = 70360024, pos = { x = 992.001, y = 925.891, z = 479.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 340003, gadget_id = 70360024, pos = { x = 995.054, y = 924.420, z = 484.117 }, rot = { x = 0.000, y = 262.051, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 340004, gadget_id = 70360024, pos = { x = 1008.163, y = 925.428, z = 484.845 }, rot = { x = 0.000, y = 267.150, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 340005, gadget_id = 70360024, pos = { x = 1033.909, y = 930.862, z = 485.502 }, rot = { x = 0.000, y = 265.728, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 340006, gadget_id = 70360024, pos = { x = 1056.593, y = 937.369, z = 486.224 }, rot = { x = 0.000, y = 271.065, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 340007, gadget_id = 70360024, pos = { x = 1081.451, y = 944.355, z = 486.987 }, rot = { x = 0.000, y = 274.571, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 340008, gadget_id = 70360025, pos = { x = 1092.026, y = 950.638, z = 486.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 340017, gadget_id = 70211111, pos = { x = 1094.672, y = 945.677, z = 491.185 }, rot = { x = 6.989, y = 209.043, z = 344.127 }, level = 26, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 340018, gadget_id = 70360001, pos = { x = 1057.282, y = 934.538, z = 485.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 340009, shape = RegionShape.SPHERE, radius = 1, pos = { x = 984.985, y = 928.234, z = 471.505 }, area_id = 300 },
	{ config_id = 340010, shape = RegionShape.SPHERE, radius = 1, pos = { x = 992.165, y = 925.927, z = 479.114 }, area_id = 300 },
	{ config_id = 340011, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 995.118, y = 924.285, z = 484.085 }, area_id = 300 },
	{ config_id = 340012, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 1008.160, y = 925.476, z = 484.866 }, area_id = 300 },
	{ config_id = 340013, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 1033.885, y = 930.922, z = 485.517 }, area_id = 300 },
	{ config_id = 340014, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1057.267, y = 937.281, z = 486.195 }, area_id = 300 },
	{ config_id = 340015, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 1081.490, y = 944.431, z = 486.975 }, area_id = 300 },
	{ config_id = 340016, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 1092.159, y = 950.720, z = 486.767 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1340009, name = "ENTER_REGION_340009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_340009" },
	{ config_id = 1340010, name = "ENTER_REGION_340010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_340010" },
	{ config_id = 1340011, name = "ENTER_REGION_340011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_340011" },
	{ config_id = 1340012, name = "ENTER_REGION_340012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_340012" },
	{ config_id = 1340013, name = "ENTER_REGION_340013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_340013" },
	{ config_id = 1340014, name = "ENTER_REGION_340014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_340014" },
	{ config_id = 1340015, name = "ENTER_REGION_340015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_340015" },
	{ config_id = 1340016, name = "ENTER_REGION_340016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_340016" }
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
		-- description = ,
		monsters = { },
		gadgets = { 340001 },
		regions = { 340009 },
		triggers = { "ENTER_REGION_340009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 340002, 340018 },
		regions = { 340010 },
		triggers = { "ENTER_REGION_340010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 340003, 340018 },
		regions = { 340011 },
		triggers = { "ENTER_REGION_340011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 340004, 340018 },
		regions = { 340012 },
		triggers = { "ENTER_REGION_340012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 340005, 340018 },
		regions = { 340013 },
		triggers = { "ENTER_REGION_340013" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 340006, 340018 },
		regions = { 340014 },
		triggers = { "ENTER_REGION_340014" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 340007, 340018 },
		regions = { 340015 },
		triggers = { "ENTER_REGION_340015" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 340008, 340018 },
		regions = { 340016 },
		triggers = { "ENTER_REGION_340016" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 340017, 340018 },
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

-- 触发操作
function action_EVENT_ENTER_REGION_340009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001340, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_340010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001340, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_340011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001340, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_340012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001340, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_340013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001340, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_340014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001340, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_340015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001340, suite = 8 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_340016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 166001340, suite = 9 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end