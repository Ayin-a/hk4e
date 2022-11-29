-- 基础信息
local base_info = {
	group_id = 220129008
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
	{ config_id = 8002, gadget_id = 71700329, pos = { x = 279.778, y = 208.192, z = 291.333 }, rot = { x = 0.000, y = 21.915, z = 0.000 }, level = 1 },
	{ config_id = 8003, gadget_id = 70800107, pos = { x = 328.939, y = 246.163, z = 495.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 8001, shape = RegionShape.SPHERE, radius = 35, pos = { x = 322.612, y = 200.051, z = 493.450 } }
}

-- 触发器
triggers = {
	{ config_id = 1008001, name = "ENTER_REGION_8001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8001", action = "action_EVENT_ENTER_REGION_8001", trigger_count = 0 }
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
		gadgets = { 8002, 8003 },
		regions = { 8001 },
		triggers = { "ENTER_REGION_8001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8001(context, evt)
	if evt.param1 ~= 8001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8001(context, evt)
	-- 立刻切换天气
	ScriptLib.EnterWeatherArea(context, 10083)
	
	return 0
end