-- 基础信息
local base_info = {
	group_id = 133104684
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
}

-- 区域
regions = {
	{ config_id = 684001, shape = RegionShape.SPHERE, radius = 8.5, pos = { x = 235.725, y = 207.359, z = 943.120 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1684001, name = "ENTER_REGION_684001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_684001", action = "action_EVENT_ENTER_REGION_684001", trigger_count = 0 }
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
		gadgets = { },
		regions = { 684001 },
		triggers = { "ENTER_REGION_684001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_684001(context, evt)
	if evt.param1 ~= 684001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_684001(context, evt)
	-- 提前设置环境区域
	if 0 ~= ScriptLib.EnterWeatherArea(context, 2018) then
	  return -1
	end
	
	return 0
end