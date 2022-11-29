-- 基础信息
local base_info = {
	group_id = 155006131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 20060301, pos = { x = 399.351, y = 169.679, z = -201.689 }, rot = { x = 0.000, y = 304.515, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
	{ config_id = 131002, monster_id = 20060301, pos = { x = 401.106, y = 169.054, z = -204.948 }, rot = { x = 0.000, y = 205.728, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
	{ config_id = 131003, monster_id = 20060301, pos = { x = 398.760, y = 169.232, z = -203.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 131004, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = 399.877, y = 168.288, z = -203.015 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1131004, name = "ENTER_REGION_131004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_131004", action = "action_EVENT_ENTER_REGION_131004" }
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
		regions = { 131004 },
		triggers = { "ENTER_REGION_131004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 131001, 131002, 131003 },
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
function condition_EVENT_ENTER_REGION_131004(context, evt)
	if evt.param1 ~= 131004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_131004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155006131, 2)
	
	return 0
end