-- 基础信息
local base_info = {
	group_id = 133213252
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 252001, monster_id = 23010601, pos = { x = -3734.779, y = 243.568, z = -3032.565 }, rot = { x = 0.000, y = 62.644, z = 0.000 }, level = 28, drop_tag = "先遣队", area_id = 12 },
	{ config_id = 252002, monster_id = 23010101, pos = { x = -3730.448, y = 243.213, z = -3036.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "先遣队", climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 252004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3732.843, y = 243.489, z = -3034.579 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1252004, name = "ENTER_REGION_252004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_252004", action = "action_EVENT_ENTER_REGION_252004" }
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
		regions = { 252004 },
		triggers = { "ENTER_REGION_252004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 252001, 252002 },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_252004(context, evt)
	if evt.param1 ~= 252004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_252004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213252, 2)
	
	return 0
end