-- 基础信息
local base_info = {
	group_id = 133102301
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 301001, monster_id = 26060101, pos = { x = 1561.755, y = 275.497, z = 368.758 }, rot = { x = 0.000, y = 276.128, z = 0.000 }, level = 23, drop_tag = "雷萤", area_id = 5 },
	{ config_id = 301002, monster_id = 26060101, pos = { x = 1559.785, y = 274.758, z = 367.193 }, rot = { x = 0.000, y = 354.736, z = 0.000 }, level = 23, drop_tag = "雷萤", area_id = 5 },
	{ config_id = 301003, monster_id = 26060101, pos = { x = 1562.213, y = 275.051, z = 366.415 }, rot = { x = 0.000, y = 303.248, z = 0.000 }, level = 23, drop_tag = "雷萤", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 301004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1561.137, y = 274.813, z = 367.591 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1301004, name = "ENTER_REGION_301004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_301004", action = "action_EVENT_ENTER_REGION_301004" }
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
		regions = { 301004 },
		triggers = { "ENTER_REGION_301004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 301001, 301002, 301003 },
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
function condition_EVENT_ENTER_REGION_301004(context, evt)
	if evt.param1 ~= 301004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_301004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102301, 2)
	
	return 0
end