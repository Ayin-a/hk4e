-- 基础信息
local base_info = {
	group_id = 133217271
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 271001, monster_id = 20060301, pos = { x = -4733.252, y = 200.660, z = -4047.503 }, rot = { x = 0.000, y = 285.052, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 271002, monster_id = 20060301, pos = { x = -4729.461, y = 201.479, z = -4049.115 }, rot = { x = 0.000, y = 285.052, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 271003, monster_id = 20060301, pos = { x = -4732.473, y = 201.759, z = -4052.350 }, rot = { x = 0.000, y = 285.052, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 271004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4733.266, y = 201.313, z = -4050.790 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1271004, name = "ENTER_REGION_271004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_271004", action = "action_EVENT_ENTER_REGION_271004" }
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
		regions = { 271004 },
		triggers = { "ENTER_REGION_271004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 271001, 271002, 271003 },
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
function condition_EVENT_ENTER_REGION_271004(context, evt)
	if evt.param1 ~= 271004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_271004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217271, 2)
	
	return 0
end