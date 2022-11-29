-- 基础信息
local base_info = {
	group_id = 144001157
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
	{ config_id = 157001, gadget_id = 70950081, pos = { x = 903.417, y = 120.000, z = 581.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 102 },
	{ config_id = 157003, gadget_id = 70210105, pos = { x = 944.220, y = 120.000, z = 643.968 }, rot = { x = 0.000, y = 235.625, z = 0.000 }, level = 16, chest_drop_id = 1002000, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 157004, gadget_id = 70290056, pos = { x = 942.300, y = 120.000, z = 643.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 157031, gadget_id = 70950081, pos = { x = 874.804, y = 120.000, z = 646.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 157032, gadget_id = 70950081, pos = { x = 907.488, y = 120.000, z = 643.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 157033, gadget_id = 70950081, pos = { x = 874.713, y = 120.000, z = 609.783 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 157034, gadget_id = 70950081, pos = { x = 901.293, y = 120.000, z = 611.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 157035, gadget_id = 70950081, pos = { x = 942.233, y = 120.000, z = 611.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 157036, gadget_id = 70950081, pos = { x = 873.990, y = 120.000, z = 579.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 157038, gadget_id = 70950081, pos = { x = 941.068, y = 120.000, z = 582.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	-- 首次接近气泡
	{ config_id = 157005, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 12.000 }, pos = { x = 866.836, y = 120.000, z = 646.250 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157006, shape = RegionShape.CUBIC, size = { x = 12.000, y = 5.000, z = 5.000 }, pos = { x = 875.639, y = 120.000, z = 654.663 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157007, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 12.000 }, pos = { x = 901.093, y = 120.000, z = 645.940 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157008, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 10.000 }, pos = { x = 917.389, y = 120.000, z = 645.304 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157009, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 5.000 }, pos = { x = 909.509, y = 120.000, z = 652.036 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157010, shape = RegionShape.CUBIC, size = { x = 12.000, y = 5.000, z = 5.000 }, pos = { x = 878.558, y = 120.000, z = 614.330 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157011, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 12.000 }, pos = { x = 869.495, y = 120.000, z = 609.729 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157012, shape = RegionShape.CUBIC, size = { x = 12.000, y = 5.000, z = 5.000 }, pos = { x = 878.558, y = 120.000, z = 604.476 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157013, shape = RegionShape.CUBIC, size = { x = 12.000, y = 5.000, z = 5.000 }, pos = { x = 901.529, y = 120.000, z = 618.911 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157014, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 12.000 }, pos = { x = 893.722, y = 120.000, z = 611.450 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157015, shape = RegionShape.CUBIC, size = { x = 12.000, y = 5.000, z = 5.000 }, pos = { x = 901.529, y = 120.000, z = 604.490 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157016, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 12.000 }, pos = { x = 910.140, y = 120.000, z = 611.450 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157017, shape = RegionShape.CUBIC, size = { x = 12.000, y = 5.000, z = 5.000 }, pos = { x = 940.392, y = 120.000, z = 617.509 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157018, shape = RegionShape.CUBIC, size = { x = 12.000, y = 5.000, z = 5.000 }, pos = { x = 940.516, y = 120.000, z = 605.260 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157019, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 12.000 }, pos = { x = 947.832, y = 120.000, z = 611.525 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157020, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 12.000 }, pos = { x = 865.594, y = 120.000, z = 579.030 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157021, shape = RegionShape.CUBIC, size = { x = 12.000, y = 5.000, z = 5.000 }, pos = { x = 873.506, y = 120.000, z = 572.303 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157022, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 12.000 }, pos = { x = 898.260, y = 120.000, z = 581.525 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157023, shape = RegionShape.CUBIC, size = { x = 12.000, y = 5.000, z = 5.000 }, pos = { x = 905.713, y = 120.000, z = 574.001 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157024, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 12.000 }, pos = { x = 911.978, y = 120.000, z = 581.715 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157025, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 10.000 }, pos = { x = 947.670, y = 120.000, z = 582.329 }, area_id = 102 },
	-- 首次接近气泡
	{ config_id = 157026, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 5.000 }, pos = { x = 941.468, y = 120.000, z = 575.318 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1157002, name = "PLATFORM_REACH_POINT_157002", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_157002", action = "action_EVENT_PLATFORM_REACH_POINT_157002" },
	-- 首次接近气泡
	{ config_id = 1157005, name = "ENTER_REGION_157005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157005", action = "action_EVENT_ENTER_REGION_157005", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157006, name = "ENTER_REGION_157006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157006", action = "action_EVENT_ENTER_REGION_157006", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157007, name = "ENTER_REGION_157007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157007", action = "action_EVENT_ENTER_REGION_157007", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157008, name = "ENTER_REGION_157008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157008", action = "action_EVENT_ENTER_REGION_157008", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157009, name = "ENTER_REGION_157009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157009", action = "action_EVENT_ENTER_REGION_157009", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157010, name = "ENTER_REGION_157010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157010", action = "action_EVENT_ENTER_REGION_157010", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157011, name = "ENTER_REGION_157011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157011", action = "action_EVENT_ENTER_REGION_157011", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157012, name = "ENTER_REGION_157012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157012", action = "action_EVENT_ENTER_REGION_157012", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157013, name = "ENTER_REGION_157013", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157013", action = "action_EVENT_ENTER_REGION_157013", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157014, name = "ENTER_REGION_157014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157014", action = "action_EVENT_ENTER_REGION_157014", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157015, name = "ENTER_REGION_157015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157015", action = "action_EVENT_ENTER_REGION_157015", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157016, name = "ENTER_REGION_157016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157016", action = "action_EVENT_ENTER_REGION_157016", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157017, name = "ENTER_REGION_157017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157017", action = "action_EVENT_ENTER_REGION_157017", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157018, name = "ENTER_REGION_157018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157018", action = "action_EVENT_ENTER_REGION_157018", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157019, name = "ENTER_REGION_157019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157019", action = "action_EVENT_ENTER_REGION_157019", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157020, name = "ENTER_REGION_157020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157020", action = "action_EVENT_ENTER_REGION_157020", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157021, name = "ENTER_REGION_157021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157021", action = "action_EVENT_ENTER_REGION_157021", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157022, name = "ENTER_REGION_157022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157022", action = "action_EVENT_ENTER_REGION_157022", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157023, name = "ENTER_REGION_157023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157023", action = "action_EVENT_ENTER_REGION_157023", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157024, name = "ENTER_REGION_157024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157024", action = "action_EVENT_ENTER_REGION_157024", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157025, name = "ENTER_REGION_157025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157025", action = "action_EVENT_ENTER_REGION_157025", trigger_count = 0 },
	-- 首次接近气泡
	{ config_id = 1157026, name = "ENTER_REGION_157026", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157026", action = "action_EVENT_ENTER_REGION_157026", trigger_count = 0 },
	{ config_id = 1157027, name = "GROUP_LOAD_157027", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_157027", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 157004 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_157002", "GROUP_LOAD_157027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 157003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 157031 },
		regions = { 157005, 157006 },
		triggers = { "ENTER_REGION_157005", "ENTER_REGION_157006" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 157032 },
		regions = { 157007, 157008, 157009 },
		triggers = { "ENTER_REGION_157007", "ENTER_REGION_157008", "ENTER_REGION_157009" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 157033 },
		regions = { 157010, 157011, 157012 },
		triggers = { "ENTER_REGION_157010", "ENTER_REGION_157011", "ENTER_REGION_157012" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 157034 },
		regions = { 157013, 157014, 157015, 157016 },
		triggers = { "ENTER_REGION_157013", "ENTER_REGION_157014", "ENTER_REGION_157015", "ENTER_REGION_157016" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 157035 },
		regions = { 157017, 157018, 157019 },
		triggers = { "ENTER_REGION_157017", "ENTER_REGION_157018", "ENTER_REGION_157019" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 157036 },
		regions = { 157020, 157021 },
		triggers = { "ENTER_REGION_157020", "ENTER_REGION_157021" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 157001 },
		regions = { 157022, 157023, 157024 },
		triggers = { "ENTER_REGION_157022", "ENTER_REGION_157023", "ENTER_REGION_157024" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 157038 },
		regions = { 157025, 157026 },
		triggers = { "ENTER_REGION_157025", "ENTER_REGION_157026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_157002(context, evt)
	-- 判断是gadgetid 为 157001的移动平台，是否到达了400100002 的点集中的 3 点
	
	if 157001 ~= evt.param1 then
	  return false
	end
	
	if 400100002 ~= evt.param2 then
	  return false
	end
	
	if 3 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_157002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157005(context, evt)
	if evt.param1 ~= 157005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 4)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157006(context, evt)
	if evt.param1 ~= 157006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 6)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 144001150, EntityType.GADGET, 3 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157007(context, evt)
	if evt.param1 ~= 157007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001157, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157008(context, evt)
	if evt.param1 ~= 157008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157032 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157009(context, evt)
	if evt.param1 ~= 157009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157009(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157032 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 7)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157010(context, evt)
	if evt.param1 ~= 157010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157033 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 9)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157011(context, evt)
	if evt.param1 ~= 157011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157033 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157012(context, evt)
	if evt.param1 ~= 157012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157012(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157033 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 3)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157013(context, evt)
	if evt.param1 ~= 157013 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157013(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 10)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157014(context, evt)
	if evt.param1 ~= 157014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157015(context, evt)
	if evt.param1 ~= 157015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157015(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 4)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157016(context, evt)
	if evt.param1 ~= 157016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157016(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157017(context, evt)
	if evt.param1 ~= 157017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 11)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157018(context, evt)
	if evt.param1 ~= 157018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 144001157, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157019(context, evt)
	if evt.param1 ~= 157019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157019(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157035 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157020(context, evt)
	if evt.param1 ~= 157020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157020(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157036 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 10)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157021(context, evt)
	if evt.param1 ~= 157021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157036 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 6)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157022(context, evt)
	if evt.param1 ~= 157022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157022(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 11)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157023(context, evt)
	if evt.param1 ~= 157023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157023(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 7)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157024(context, evt)
	if evt.param1 ~= 157024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157025(context, evt)
	if evt.param1 ~= 157025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157025(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157038 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_157026(context, evt)
	if evt.param1 ~= 157026 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_157026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 157038 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 8)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001157, 11)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_157027(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001157, 9)
	
	return 0
end