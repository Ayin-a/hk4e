-- 基础信息
local base_info = {
	group_id = 133225268
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 268001, monster_id = 20060201, pos = { x = -6719.426, y = 202.011, z = -2649.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 18 },
	{ config_id = 268002, monster_id = 20060201, pos = { x = -6722.247, y = 201.712, z = -2651.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 18 },
	{ config_id = 268003, monster_id = 20060201, pos = { x = -6721.637, y = 202.028, z = -2655.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 268004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -6719.415, y = 201.575, z = -2653.283 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1268004, name = "ENTER_REGION_268004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_268004", action = "action_EVENT_ENTER_REGION_268004" }
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
		regions = { 268004 },
		triggers = { "ENTER_REGION_268004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 268001, 268002, 268003 },
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
function condition_EVENT_ENTER_REGION_268004(context, evt)
	if evt.param1 ~= 268004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_268004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225268, 2)
	
	return 0
end