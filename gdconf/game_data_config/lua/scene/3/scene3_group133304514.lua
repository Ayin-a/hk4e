-- 基础信息
local base_info = {
	group_id = 133304514
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
	{ config_id = 514001, gadget_id = 70360001, pos = { x = -1490.965, y = 201.889, z = 2266.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	-- 切机器人环境
	{ config_id = 514002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1495.428, y = 199.206, z = 2254.857 }, area_id = 21 },
	-- 切根噬洞窟环境
	{ config_id = 514003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1498.996, y = 194.167, z = 2247.070 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 切机器人环境
	{ config_id = 1514002, name = "ENTER_REGION_514002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_514002", action = "action_EVENT_ENTER_REGION_514002", trigger_count = 0 },
	-- 切根噬洞窟环境
	{ config_id = 1514003, name = "ENTER_REGION_514003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_514003", action = "action_EVENT_ENTER_REGION_514003", trigger_count = 0 }
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
		gadgets = { 514001 },
		regions = { 514002, 514003 },
		triggers = { "ENTER_REGION_514002", "ENTER_REGION_514003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_514002(context, evt)
	if evt.param1 ~= 514002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_514002(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 4005) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_514003(context, evt)
	if evt.param1 ~= 514003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_514003(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 4007) then
	  return -1
	end
	
	return 0
end