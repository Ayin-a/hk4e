-- 基础信息
local base_info = {
	group_id = 220132013
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
	{ config_id = 13001, gadget_id = 70360001, pos = { x = 455.223, y = 13.667, z = 483.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 琥珀台座
	{ config_id = 13002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 487.941, y = 18.533, z = 482.800 } },
	-- 琥珀台座
	{ config_id = 13003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 379.325, y = 75.063, z = 503.612 } },
	-- 琥珀台座
	{ config_id = 13004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 429.015, y = 51.756, z = 473.619 } },
	-- 琥珀门
	{ config_id = 13005, shape = RegionShape.SPHERE, radius = 8, pos = { x = 448.442, y = 63.479, z = 461.888 } },
	-- 弹跳蘑菇
	{ config_id = 13006, shape = RegionShape.SPHERE, radius = 4, pos = { x = 436.267, y = 47.025, z = 480.160 } },
	-- 弹跳蘑菇
	{ config_id = 13007, shape = RegionShape.SPHERE, radius = 3, pos = { x = 470.809, y = 21.096, z = 506.937 } },
	-- 弹跳蘑菇
	{ config_id = 13008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 460.779, y = 13.540, z = 489.469 } },
	-- 弹跳蘑菇
	{ config_id = 13009, shape = RegionShape.SPHERE, radius = 4, pos = { x = 452.719, y = 29.217, z = 514.787 } },
	-- 弹跳蘑菇
	{ config_id = 13010, shape = RegionShape.SPHERE, radius = 3, pos = { x = 456.036, y = 25.192, z = 495.904 } },
	-- 弹跳蘑菇
	{ config_id = 13011, shape = RegionShape.SPHERE, radius = 5, pos = { x = 445.500, y = 29.219, z = 489.000 } }
}

-- 触发器
triggers = {
	-- 琥珀台座
	{ config_id = 1013002, name = "ENTER_REGION_13002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13002", action = "action_EVENT_ENTER_REGION_13002" },
	-- 琥珀台座
	{ config_id = 1013003, name = "ENTER_REGION_13003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13003", action = "action_EVENT_ENTER_REGION_13003" },
	-- 琥珀台座
	{ config_id = 1013004, name = "ENTER_REGION_13004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13004", action = "action_EVENT_ENTER_REGION_13004" },
	-- 琥珀门
	{ config_id = 1013005, name = "ENTER_REGION_13005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13005", action = "action_EVENT_ENTER_REGION_13005" },
	-- 弹跳蘑菇
	{ config_id = 1013006, name = "ENTER_REGION_13006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13006", action = "action_EVENT_ENTER_REGION_13006" },
	-- 弹跳蘑菇
	{ config_id = 1013007, name = "ENTER_REGION_13007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13007", action = "action_EVENT_ENTER_REGION_13007" },
	-- 弹跳蘑菇
	{ config_id = 1013008, name = "ENTER_REGION_13008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13008", action = "action_EVENT_ENTER_REGION_13008" },
	-- 弹跳蘑菇
	{ config_id = 1013009, name = "ENTER_REGION_13009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13009", action = "action_EVENT_ENTER_REGION_13009" },
	-- 弹跳蘑菇
	{ config_id = 1013010, name = "ENTER_REGION_13010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13010", action = "action_EVENT_ENTER_REGION_13010" },
	-- 弹跳蘑菇
	{ config_id = 1013011, name = "ENTER_REGION_13011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13011", action = "action_EVENT_ENTER_REGION_13011" }
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
		gadgets = { 13001 },
		regions = { 13002, 13003, 13004, 13005, 13006, 13007, 13009, 13010, 13011 },
		triggers = { "ENTER_REGION_13002", "ENTER_REGION_13003", "ENTER_REGION_13004", "ENTER_REGION_13005", "ENTER_REGION_13006", "ENTER_REGION_13007", "ENTER_REGION_13009", "ENTER_REGION_13010", "ENTER_REGION_13011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 13008 },
		triggers = { "ENTER_REGION_13008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_13002(context, evt)
	if evt.param1 ~= 13002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13002(context, evt)
	-- 显示id为203的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,203,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13003(context, evt)
	if evt.param1 ~= 13003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13003(context, evt)
	-- 显示id为203的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,203,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13004(context, evt)
	if evt.param1 ~= 13004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13004(context, evt)
	-- 显示id为203的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,203,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13005(context, evt)
	if evt.param1 ~= 13005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13005(context, evt)
	-- 显示id为203的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,203,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13006(context, evt)
	if evt.param1 ~= 13006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13006(context, evt)
	-- 显示id为202的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,202,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13007(context, evt)
	if evt.param1 ~= 13007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13007(context, evt)
	-- 显示id为202的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,202,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13008(context, evt)
	if evt.param1 ~= 13008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13008(context, evt)
	-- 显示id为202的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,202,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13009(context, evt)
	if evt.param1 ~= 13009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13009(context, evt)
	-- 显示id为202的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,202,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13010(context, evt)
	if evt.param1 ~= 13010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13010(context, evt)
	-- 显示id为202的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,202,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13011(context, evt)
	if evt.param1 ~= 13011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13011(context, evt)
	-- 显示id为202的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,202,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end