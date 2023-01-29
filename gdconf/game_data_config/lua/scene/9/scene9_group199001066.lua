-- 基础信息
local base_info = {
	group_id = 199001066
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
	{ config_id = 66001, gadget_id = 70360001, pos = { x = 188.708, y = 120.000, z = 212.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 66003, shape = RegionShape.POLYGON, pos = { x = 444.210, y = 120.000, z = 294.576 }, height = 40.000, point_array = { { x = 408.417, y = 225.342 }, { x = 448.277, y = 205.021 }, { x = 468.254, y = 301.935 }, { x = 480.003, y = 376.795 }, { x = 437.896, y = 384.131 } }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1066003, name = "ENTER_REGION_66003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_66003" }
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
		gadgets = { 66001 },
		regions = { 66003 },
		triggers = { "ENTER_REGION_66003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_66003(context, evt)
	if ScriptLib.CheckSceneTag(context, 9,1016 ) and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.GetPlayerVehicleType(context, context.uid) == 2 then
		ScriptLib.ShowReminderRadius(context, 1111180, { x = 437, y = 120, z = 291}, 100)
	end
	
	return 0
end