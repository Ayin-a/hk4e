-- 基础信息
local base_info = {
	group_id = 220013006
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
	{ config_id = 204, gadget_id = 70320001, pos = { x = 343.026, y = -27.834, z = 473.202 }, rot = { x = 0.000, y = 300.730, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 40, shape = RegionShape.SPHERE, radius = 5, pos = { x = 342.790, y = -27.850, z = 452.850 } }
}

-- 触发器
triggers = {
	{ config_id = 1000040, name = "ENTER_REGION_40", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40", action = "", forbid_guest = false }
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
	rand_suite = true
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
		gadgets = { 204 },
		regions = { 40 },
		triggers = { "ENTER_REGION_40" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_40(context, evt)
	if evt.param1 ~= 40 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end