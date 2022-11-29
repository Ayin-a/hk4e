-- 基础信息
local base_info = {
	group_id = 220129009
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
	{ config_id = 9002, gadget_id = 70800107, pos = { x = 328.701, y = 246.163, z = 275.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9003, gadget_id = 70690037, pos = { x = 254.800, y = 248.200, z = 251.300 }, rot = { x = 358.850, y = 350.700, z = 353.100 }, level = 1 },
	{ config_id = 9004, gadget_id = 70690037, pos = { x = 254.800, y = 248.200, z = 53.400 }, rot = { x = 358.900, y = 350.700, z = 353.020 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 9001, shape = RegionShape.SPHERE, radius = 35, pos = { x = 321.226, y = 200.057, z = 280.882 } }
}

-- 触发器
triggers = {
	{ config_id = 1009001, name = "ENTER_REGION_9001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9001", action = "action_EVENT_ENTER_REGION_9001", trigger_count = 0 }
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
		gadgets = { 9002, 9003, 9004 },
		regions = { 9001 },
		triggers = { "ENTER_REGION_9001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_9001(context, evt)
	if evt.param1 ~= 9001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9001(context, evt)
	-- 立刻切换天气
	ScriptLib.EnterWeatherArea(context, 10084)
	
	return 0
end