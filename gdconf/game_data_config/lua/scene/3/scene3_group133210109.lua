-- 基础信息
local base_info = {
	group_id = 133210109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109001, monster_id = 20010601, pos = { x = -3715.964, y = 129.017, z = -605.219 }, rot = { x = 357.740, y = 265.164, z = 357.868 }, level = 32, drop_tag = "大史莱姆", area_id = 17 },
	{ config_id = 109002, monster_id = 20060101, pos = { x = -3723.891, y = 129.061, z = -606.325 }, rot = { x = 0.000, y = 80.228, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 },
	{ config_id = 109003, monster_id = 20060101, pos = { x = -3720.228, y = 129.625, z = -608.952 }, rot = { x = 0.000, y = 351.218, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 109004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -3717.873, y = 129.667, z = -605.284 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1109004, name = "ENTER_REGION_109004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_109004", action = "action_EVENT_ENTER_REGION_109004" }
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
		regions = { 109004 },
		triggers = { "ENTER_REGION_109004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 109001, 109002, 109003 },
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
function condition_EVENT_ENTER_REGION_109004(context, evt)
	if evt.param1 ~= 109004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_109004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210109, 2)
	
	return 0
end