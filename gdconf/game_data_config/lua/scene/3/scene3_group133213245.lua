-- 基础信息
local base_info = {
	group_id = 133213245
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 245001, monster_id = 21011301, pos = { x = -3731.274, y = 272.230, z = -3166.329 }, rot = { x = 30.095, y = 149.821, z = 2.306 }, level = 28, drop_tag = "丘丘人", climate_area_id = 3, area_id = 12 },
	{ config_id = 245002, monster_id = 21011301, pos = { x = -3724.520, y = 269.501, z = -3171.985 }, rot = { x = 0.000, y = 284.268, z = 0.000 }, level = 28, drop_tag = "丘丘人", disableWander = true, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 245004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3731.127, y = 269.095, z = -3171.672 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1245004, name = "ENTER_REGION_245004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_245004", action = "action_EVENT_ENTER_REGION_245004" }
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
		regions = { 245004 },
		triggers = { "ENTER_REGION_245004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 245001, 245002 },
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
function condition_EVENT_ENTER_REGION_245004(context, evt)
	if evt.param1 ~= 245004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_245004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213245, 2)
	
	return 0
end