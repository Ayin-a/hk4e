-- 基础信息
local base_info = {
	group_id = 133103581
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 581001, monster_id = 21010901, pos = { x = 766.007, y = 325.258, z = 1437.650 }, rot = { x = 0.000, y = 40.245, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 6 },
	{ config_id = 581002, monster_id = 21010501, pos = { x = 779.106, y = 324.668, z = 1448.355 }, rot = { x = 0.000, y = 207.205, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 581003, monster_id = 21011001, pos = { x = 783.109, y = 323.874, z = 1433.032 }, rot = { x = 0.000, y = 313.123, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 581004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 774.725, y = 323.988, z = 1441.715 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1581004, name = "ENTER_REGION_581004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_581004", action = "action_EVENT_ENTER_REGION_581004" }
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
		regions = { 581004 },
		triggers = { "ENTER_REGION_581004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 581001, 581002, 581003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_581004(context, evt)
	if evt.param1 ~= 581004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_581004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103581, 2)
	
	return 0
end