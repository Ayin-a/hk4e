-- 基础信息
local base_info = {
	group_id = 133217363
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363001, monster_id = 20060201, pos = { x = -4471.246, y = 236.350, z = -3947.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 363003, monster_id = 20060201, pos = { x = -4475.722, y = 235.818, z = -3945.984 }, rot = { x = 0.000, y = 26.693, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 363004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -4475.813, y = 236.575, z = -3948.317 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1363004, name = "ENTER_REGION_363004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_363004", action = "action_EVENT_ENTER_REGION_363004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 363002, monster_id = 20060201, pos = { x = -4474.316, y = 236.575, z = -3948.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 }
	}
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
		regions = { 363004 },
		triggers = { "ENTER_REGION_363004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 363001, 363003 },
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
function condition_EVENT_ENTER_REGION_363004(context, evt)
	if evt.param1 ~= 363004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_363004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217363, 2)
	
	return 0
end