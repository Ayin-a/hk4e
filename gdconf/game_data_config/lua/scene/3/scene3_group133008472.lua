-- 基础信息
local base_info = {
	group_id = 133008472
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
	{ config_id = 472015, npc_id = 20207, pos = { x = 1027.812, y = 344.384, z = -500.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 472001, gadget_id = 70710090, pos = { x = 906.192, y = 290.278, z = -551.310 }, rot = { x = 0.000, y = 48.865, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 472002, gadget_id = 70710090, pos = { x = 914.154, y = 290.164, z = -528.157 }, rot = { x = 0.000, y = 25.911, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 472003, gadget_id = 70710090, pos = { x = 930.676, y = 289.900, z = -494.969 }, rot = { x = 0.000, y = 56.944, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 472004, gadget_id = 70710090, pos = { x = 954.552, y = 291.906, z = -462.840 }, rot = { x = 8.686, y = 70.177, z = 17.291 }, level = 30, area_id = 10 },
	{ config_id = 472005, gadget_id = 70710090, pos = { x = 921.683, y = 289.900, z = -508.117 }, rot = { x = 0.000, y = 33.290, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 472006, gadget_id = 70710090, pos = { x = 987.821, y = 301.945, z = -461.533 }, rot = { x = 335.139, y = 138.150, z = 358.675 }, level = 30, area_id = 10 },
	{ config_id = 472007, gadget_id = 70710090, pos = { x = 997.273, y = 310.339, z = -481.159 }, rot = { x = 329.818, y = 168.169, z = 347.270 }, level = 30, area_id = 10 },
	{ config_id = 472008, gadget_id = 70710090, pos = { x = 999.224, y = 321.707, z = -495.485 }, rot = { x = 315.893, y = 119.500, z = 29.953 }, level = 30, area_id = 10 },
	{ config_id = 472009, gadget_id = 70710090, pos = { x = 1014.556, y = 334.334, z = -499.729 }, rot = { x = 304.591, y = 75.892, z = 39.653 }, level = 30, area_id = 10 },
	{ config_id = 472010, gadget_id = 70710090, pos = { x = 1024.031, y = 343.896, z = -498.339 }, rot = { x = 4.344, y = 82.483, z = 4.529 }, level = 30, area_id = 10 },
	{ config_id = 472012, gadget_id = 70300110, pos = { x = 1027.841, y = 344.348, z = -500.363 }, rot = { x = 328.534, y = 219.045, z = 346.613 }, level = 30, area_id = 10 },
	{ config_id = 472013, gadget_id = 70710090, pos = { x = 944.979, y = 291.336, z = -469.253 }, rot = { x = 357.130, y = 50.632, z = 14.148 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 472011, shape = RegionShape.SPHERE, radius = 5, pos = { x = 901.566, y = 289.001, z = -552.114 }, area_id = 10 },
	{ config_id = 472014, shape = RegionShape.SPHERE, radius = 2.8, pos = { x = 1027.649, y = 344.302, z = -500.300 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1472011, name = "ENTER_REGION_472011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_472011", action = "action_EVENT_ENTER_REGION_472011" },
	{ config_id = 1472014, name = "ENTER_REGION_472014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_472014", action = "action_EVENT_ENTER_REGION_472014" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 472001, 472002, 472003, 472004, 472005, 472006, 472007, 472008, 472009, 472010, 472012, 472013 },
		regions = { 472011, 472014 },
		triggers = { "ENTER_REGION_472011", "ENTER_REGION_472014" },
		npcs = { 472015 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_ENTER_REGION_472011(context, evt)
	if evt.param1 ~= 472011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_472011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008209, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_472014(context, evt)
	if evt.param1 ~= 472014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_472014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008322, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008372, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end