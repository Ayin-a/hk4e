-- 基础信息
local base_info = {
	group_id = 133104830
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
	{ config_id = 830001, gadget_id = 70710102, pos = { x = 937.300, y = 213.527, z = 335.267 }, rot = { x = 0.000, y = 118.334, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 830002, gadget_id = 70710102, pos = { x = 936.693, y = 213.527, z = 335.251 }, rot = { x = 0.000, y = 159.541, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 830003, gadget_id = 70710102, pos = { x = 936.696, y = 213.527, z = 334.510 }, rot = { x = 0.000, y = 209.655, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 830004, gadget_id = 70710102, pos = { x = 936.693, y = 213.527, z = 335.251 }, rot = { x = 0.000, y = 159.541, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 830005, gadget_id = 70710102, pos = { x = 937.291, y = 213.527, z = 335.246 }, rot = { x = 0.000, y = 209.655, z = 0.000 }, level = 19, area_id = 5 }
}

-- 区域
regions = {
	{ config_id = 830010, shape = RegionShape.SPHERE, radius = 30, pos = { x = 936.375, y = 212.780, z = 333.592 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1830010, name = "ENTER_REGION_830010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_830010", action = "", trigger_count = 0 }
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
		regions = { 830010 },
		triggers = { "ENTER_REGION_830010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 830004, 830005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 830001, 830002, 830003 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_830010(context, evt)
	if evt.param1 ~= 830010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end