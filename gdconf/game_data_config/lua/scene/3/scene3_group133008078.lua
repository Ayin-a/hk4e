-- 基础信息
local base_info = {
	group_id = 133008078
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78001, monster_id = 21011401, pos = { x = 1159.968, y = 348.079, z = -1029.520 }, rot = { x = 0.000, y = 71.899, z = 0.000 }, level = 30, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 },
	{ config_id = 78002, monster_id = 21011401, pos = { x = 1161.856, y = 347.428, z = -1034.227 }, rot = { x = 0.000, y = 29.709, z = 0.000 }, level = 30, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 },
	{ config_id = 78003, monster_id = 21011301, pos = { x = 1158.136, y = 348.116, z = -1033.427 }, rot = { x = 0.000, y = 35.567, z = 0.000 }, level = 30, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 78004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1159.837, y = 347.897, z = -1031.651 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1078004, name = "ENTER_REGION_78004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_78004", action = "action_EVENT_ENTER_REGION_78004" }
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
		regions = { 78004 },
		triggers = { "ENTER_REGION_78004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 78001, 78002, 78003 },
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
function condition_EVENT_ENTER_REGION_78004(context, evt)
	if evt.param1 ~= 78004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_78004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008078, 2)
	
	return 0
end