-- 基础信息
local base_info = {
	group_id = 133008404
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
	{ config_id = 404001, gadget_id = 70360024, pos = { x = 756.336, y = 292.969, z = -666.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404003, gadget_id = 70360024, pos = { x = 750.333, y = 285.301, z = -666.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404004, gadget_id = 70360024, pos = { x = 744.324, y = 277.323, z = -669.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404005, gadget_id = 70360024, pos = { x = 737.809, y = 270.151, z = -668.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404006, gadget_id = 70360024, pos = { x = 731.774, y = 265.985, z = -670.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404007, gadget_id = 70360024, pos = { x = 723.587, y = 260.485, z = -668.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404008, gadget_id = 70360024, pos = { x = 713.419, y = 253.872, z = -663.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404009, gadget_id = 70360024, pos = { x = 692.757, y = 240.251, z = -657.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404010, gadget_id = 70360024, pos = { x = 675.168, y = 223.708, z = -667.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404011, gadget_id = 70360024, pos = { x = 665.565, y = 212.687, z = -675.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404012, gadget_id = 70360024, pos = { x = 653.324, y = 204.158, z = -684.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404013, gadget_id = 70360025, pos = { x = 647.690, y = 202.135, z = -687.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 404025, gadget_id = 70211111, pos = { x = 646.653, y = 201.041, z = -688.849 }, rot = { x = 336.872, y = 51.361, z = 3.005 }, level = 26, drop_tag = "雪山解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 404002, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 756.231, y = 292.923, z = -666.300 }, area_id = 10 },
	{ config_id = 404014, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 750.361, y = 285.336, z = -666.303 }, area_id = 10 },
	{ config_id = 404015, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 744.403, y = 277.416, z = -669.421 }, area_id = 10 },
	{ config_id = 404016, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 737.506, y = 269.971, z = -669.088 }, area_id = 10 },
	{ config_id = 404017, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 731.978, y = 266.178, z = -670.568 }, area_id = 10 },
	{ config_id = 404018, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 723.682, y = 260.624, z = -668.119 }, area_id = 10 },
	{ config_id = 404019, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 713.431, y = 253.940, z = -663.685 }, area_id = 10 },
	{ config_id = 404020, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 692.686, y = 240.238, z = -656.976 }, area_id = 10 },
	{ config_id = 404021, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 675.351, y = 223.885, z = -666.938 }, area_id = 10 },
	{ config_id = 404022, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 665.650, y = 212.899, z = -675.595 }, area_id = 10 },
	{ config_id = 404023, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 653.088, y = 204.080, z = -684.485 }, area_id = 10 },
	{ config_id = 404024, shape = RegionShape.SPHERE, radius = 1.2, pos = { x = 647.467, y = 201.655, z = -688.004 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1404002, name = "ENTER_REGION_404002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404002", action = "action_EVENT_ENTER_REGION_404002" },
	{ config_id = 1404014, name = "ENTER_REGION_404014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404014", action = "action_EVENT_ENTER_REGION_404014" },
	{ config_id = 1404015, name = "ENTER_REGION_404015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404015", action = "action_EVENT_ENTER_REGION_404015" },
	{ config_id = 1404016, name = "ENTER_REGION_404016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404016", action = "action_EVENT_ENTER_REGION_404016" },
	{ config_id = 1404017, name = "ENTER_REGION_404017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404017", action = "action_EVENT_ENTER_REGION_404017" },
	{ config_id = 1404018, name = "ENTER_REGION_404018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404018", action = "action_EVENT_ENTER_REGION_404018" },
	{ config_id = 1404019, name = "ENTER_REGION_404019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404019", action = "action_EVENT_ENTER_REGION_404019" },
	{ config_id = 1404020, name = "ENTER_REGION_404020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404020", action = "action_EVENT_ENTER_REGION_404020" },
	{ config_id = 1404021, name = "ENTER_REGION_404021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404021", action = "action_EVENT_ENTER_REGION_404021" },
	{ config_id = 1404022, name = "ENTER_REGION_404022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404022", action = "action_EVENT_ENTER_REGION_404022" },
	{ config_id = 1404023, name = "ENTER_REGION_404023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404023", action = "action_EVENT_ENTER_REGION_404023" },
	{ config_id = 1404024, name = "ENTER_REGION_404024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_404024", action = "action_EVENT_ENTER_REGION_404024" }
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
	end_suite = 13,
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
		gadgets = { 404001 },
		regions = { 404002 },
		triggers = { "ENTER_REGION_404002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 404003 },
		regions = { 404014 },
		triggers = { "ENTER_REGION_404014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 404004 },
		regions = { 404015 },
		triggers = { "ENTER_REGION_404015" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 404005 },
		regions = { 404016 },
		triggers = { "ENTER_REGION_404016" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 404006 },
		regions = { 404017 },
		triggers = { "ENTER_REGION_404017" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 404007 },
		regions = { 404018 },
		triggers = { "ENTER_REGION_404018" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 404008 },
		regions = { 404019 },
		triggers = { "ENTER_REGION_404019" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 404009 },
		regions = { 404020 },
		triggers = { "ENTER_REGION_404020" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 404010 },
		regions = { 404021 },
		triggers = { "ENTER_REGION_404021" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 404011 },
		regions = { 404022 },
		triggers = { "ENTER_REGION_404022" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 404012 },
		regions = { 404023 },
		triggers = { "ENTER_REGION_404023" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 404013 },
		regions = { 404024 },
		triggers = { "ENTER_REGION_404024" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 404025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
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
function condition_EVENT_ENTER_REGION_404002(context, evt)
	if evt.param1 ~= 404002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404002(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404014(context, evt)
	if evt.param1 ~= 404014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404015(context, evt)
	if evt.param1 ~= 404015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 4 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404016(context, evt)
	if evt.param1 ~= 404016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404017(context, evt)
	if evt.param1 ~= 404017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404018(context, evt)
	if evt.param1 ~= 404018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 7 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404019(context, evt)
	if evt.param1 ~= 404019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404019(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 8 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404020(context, evt)
	if evt.param1 ~= 404020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 9 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404021(context, evt)
	if evt.param1 ~= 404021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 10 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404022(context, evt)
	if evt.param1 ~= 404022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404022(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 11 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404023(context, evt)
	if evt.param1 ~= 404023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404023(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 12 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_404024(context, evt)
	if evt.param1 ~= 404024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_404024(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008404, suite = 13 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end