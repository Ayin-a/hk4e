-- 基础信息
local base_info = {
	group_id = 199004089
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
	{ config_id = 89001, gadget_id = 70360001, pos = { x = -224.719, y = 121.704, z = -508.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
	{ config_id = 89002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -224.583, y = 121.836, z = -508.834 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1089002, name = "ENTER_REGION_89002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_89002", trigger_count = 0 }
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
		gadgets = { 89001 },
		regions = { 89002 },
		triggers = { "ENTER_REGION_89002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_89002(context, evt)
	if ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.TryRecordActivityPushTips(context, 2014008) == 0 then
		ScriptLib.ShowClientTutorial(context, 1177, {})
	end
	
	return 0
end