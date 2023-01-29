-- 基础信息
local base_info = {
	group_id = 251019002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2013, monster_id = 20010601, pos = { x = -47.410, y = 16.384, z = 51.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2014, monster_id = 20010601, pos = { x = -40.313, y = 16.393, z = 51.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70290141, pos = { x = -43.749, y = 16.402, z = 49.923 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2002, gadget_id = 70310108, pos = { x = -43.519, y = 23.521, z = 72.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2003, gadget_id = 70310108, pos = { x = -43.750, y = 38.857, z = 72.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, gadget_id = 70310108, pos = { x = -58.589, y = 27.485, z = 34.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, gadget_id = 70310108, pos = { x = -24.293, y = 27.876, z = 38.908 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2008, gadget_id = 70290141, pos = { x = -28.049, y = 25.609, z = 51.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, gadget_id = 70350004, pos = { x = -58.388, y = 25.858, z = 43.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, gadget_id = 70350004, pos = { x = -27.956, y = 25.662, z = 58.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2012, gadget_id = 70350004, pos = { x = -33.688, y = 25.664, z = 38.575 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2015, gadget_id = 70360002, pos = { x = -59.798, y = 38.274, z = 58.227 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1 },
	{ config_id = 2017, gadget_id = 70350003, pos = { x = 16.186, y = 0.232, z = 4.231 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, gadget_id = 70290141, pos = { x = -51.128, y = 41.172, z = 69.534 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 1 },
	{ config_id = 2019, gadget_id = 70290141, pos = { x = 38.925, y = 31.581, z = 2.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 2006, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 10.000 }, pos = { x = -58.589, y = 27.485, z = 32.143 } },
	{ config_id = 2007, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 5.000 }, pos = { x = -21.003, y = 27.876, z = 38.908 } },
	{ config_id = 2009, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 5.000 }, pos = { x = -28.049, y = 27.159, z = 51.042 } },
	{ config_id = 2016, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 5.000 }, pos = { x = -43.820, y = 22.305, z = 72.477 } }
}

-- 触发器
triggers = {
	{ config_id = 1002006, name = "ENTER_REGION_2006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2006", action = "action_EVENT_ENTER_REGION_2006", trigger_count = 0 },
	{ config_id = 1002007, name = "ENTER_REGION_2007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2007", action = "action_EVENT_ENTER_REGION_2007", trigger_count = 0 },
	{ config_id = 1002009, name = "ENTER_REGION_2009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2009", action = "action_EVENT_ENTER_REGION_2009" },
	{ config_id = 1002016, name = "ENTER_REGION_2016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2016", action = "action_EVENT_ENTER_REGION_2016", trigger_count = 0 }
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
		monsters = { 2013, 2014 },
		gadgets = { 2001, 2008, 2010, 2011, 2012, 2015, 2017, 2018, 2019 },
		regions = { 2006, 2007, 2009, 2016 },
		triggers = { "ENTER_REGION_2006", "ENTER_REGION_2007", "ENTER_REGION_2009", "ENTER_REGION_2016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2006(context, evt)
	if evt.param1 ~= 2006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2006(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = {x=-30.81, y= 25.65, z=38.848}, radius = 0.1, rot = {x=0, y=270, z=0}}) 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2007(context, evt)
	if evt.param1 ~= 2007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2007(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = {x=-58.18, y= 25.63, z=39.37}, radius = 0.1, rot = {x=0, y=0, z=0}}) 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2009(context, evt)
	if evt.param1 ~= 2009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2009(context, evt)
	ScriptLib.SetGadgetStateByConfigId(context,2011, GadgetState.GearStart)
	
	ScriptLib.SetGroupGadgetStateByConfigId(context, 251019003, 3005, GadgetState.GearStart)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2016(context, evt)
	if evt.param1 ~= 2016 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2016(context, evt)
	ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = {x=46.19, y= 31.61, z=4.29}, radius = 0.1, rot = {x=0, y=0, z=0}}) 
	
	return 0
end