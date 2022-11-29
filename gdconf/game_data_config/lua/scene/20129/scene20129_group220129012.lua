-- 基础信息
local base_info = {
	group_id = 220129012
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
	{ config_id = 12003, gadget_id = 70800111, pos = { x = -411.880, y = -43.200, z = 971.600 }, rot = { x = 0.000, y = 0.000, z = 1.690 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 12001, shape = RegionShape.SPHERE, radius = 80, pos = { x = -432.230, y = -47.293, z = 977.660 } }
}

-- 触发器
triggers = {
	{ config_id = 1012001, name = "ENTER_REGION_12001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12001", action = "action_EVENT_ENTER_REGION_12001", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 12002, gadget_id = 71700329, pos = { x = -415.168, y = -40.603, z = 975.483 }, rot = { x = 0.000, y = 348.502, z = 0.000 }, level = 1 }
	}
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
		gadgets = { 12003 },
		regions = { 12001 },
		triggers = { "ENTER_REGION_12001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_12001(context, evt)
	if evt.param1 ~= 12001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12001(context, evt)
	-- 立刻切换天气
	ScriptLib.EnterWeatherArea(context, 10097)
	
	return 0
end