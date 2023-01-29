-- 基础信息
local base_info = {
	group_id = 199004034
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
	{ config_id = 34002, gadget_id = 70360001, pos = { x = -330.892, y = 121.028, z = -593.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 34001, shape = RegionShape.SPHERE, radius = 270, pos = { x = -360.885, y = 120.000, z = -641.603 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1034001, name = "ENTER_REGION_34001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_34001" }
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
		gadgets = { 34002 },
		regions = { 34001 },
		triggers = { "ENTER_REGION_34001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_34001(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1021 ) and ScriptLib.CheckSceneTag(context, 9,1026 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111176, { x = -360, y = 120, z = -641}, 270)
	end
	
	if ScriptLib.CheckSceneTag(context, 9,1021 ) and ScriptLib.CheckSceneTag(context, 9,1024 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111176, { x = -360, y = 120, z = -641}, 270)
	end
	
	if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1026 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111176, { x = -360, y = 120, z = -641}, 270)
	end
	
	if ScriptLib.CheckSceneTag(context, 9,1023 ) and ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111176, { x = -360, y = 120, z = -641}, 270)
	end
	
	if ScriptLib.CheckSceneTag(context, 9,1025 ) and ScriptLib.CheckSceneTag(context, 9,1022 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111176, { x = -360, y = 120, z = -641}, 270)
	end
	
	if ScriptLib.CheckSceneTag(context, 9,1025 ) and ScriptLib.CheckSceneTag(context, 9,1024 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111176, { x = -360, y = 120, z = -641}, 270)
	end
	
	return 0
end