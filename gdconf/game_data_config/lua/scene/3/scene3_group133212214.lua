-- 基础信息
local base_info = {
	group_id = 133212214
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214002, monster_id = 21010701, pos = { x = -3593.736, y = 204.412, z = -2296.674 }, rot = { x = 0.000, y = 142.405, z = 0.000 }, level = 27, drop_tag = "丘丘人", climate_area_id = 9, area_id = 13 },
	{ config_id = 214003, monster_id = 21011601, pos = { x = -3594.342, y = 204.200, z = -2299.050 }, rot = { x = 0.000, y = 138.241, z = 0.000 }, level = 27, drop_tag = "丘丘人", climate_area_id = 9, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 214004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3590.531, y = 203.505, z = -2304.286 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1214004, name = "ENTER_REGION_214004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_214004", action = "action_EVENT_ENTER_REGION_214004" }
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
		regions = { 214004 },
		triggers = { "ENTER_REGION_214004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 214002, 214003 },
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
function condition_EVENT_ENTER_REGION_214004(context, evt)
	if evt.param1 ~= 214004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_214004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212214, 2)
	
	return 0
end