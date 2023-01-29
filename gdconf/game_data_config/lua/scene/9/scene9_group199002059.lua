-- 基础信息
local base_info = {
	group_id = 199002059
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
	{ config_id = 59001, gadget_id = 70360001, pos = { x = 316.918, y = 120.000, z = -433.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 59002, shape = RegionShape.SPHERE, radius = 150, pos = { x = 490.023, y = 120.000, z = -713.015 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1059002, name = "ENTER_REGION_59002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_59002" }
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
		gadgets = { 59001 },
		regions = { 59002 },
		triggers = { "ENTER_REGION_59002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_59002(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1018 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111183, { x = 490, y = 120, z = -713}, 150)
	end
	
	return 0
end