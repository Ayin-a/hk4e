-- 基础信息
local base_info = {
	group_id = 199004036
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
	{ config_id = 36001, gadget_id = 70360001, pos = { x = -598.680, y = 120.000, z = -61.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 36002, shape = RegionShape.SPHERE, radius = 150, pos = { x = -846.142, y = 120.000, z = -175.510 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1036002, name = "ENTER_REGION_36002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_36002" }
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
		gadgets = { 36001 },
		regions = { 36002 },
		triggers = { "ENTER_REGION_36002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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

-- 触发操作
function action_EVENT_ENTER_REGION_36002(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1013 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111179, { x = -846, y = 120, z = -175}, 150)
	end
	
	if ScriptLib.CheckSceneTag(context, 9,1012 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111179, { x = -846, y = 120, z = -175}, 150)
	end
	
	return 0
end