-- 基础信息
local base_info = {
	group_id = 133210193
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 193001, monster_id = 20010501, pos = { x = -3699.917, y = 114.169, z = -890.219 }, rot = { x = 9.246, y = 40.584, z = 13.451 }, level = 32, drop_tag = "史莱姆", area_id = 17 },
	{ config_id = 193002, monster_id = 20010501, pos = { x = -3703.507, y = 112.708, z = -885.030 }, rot = { x = 358.149, y = 85.924, z = 11.632 }, level = 32, drop_tag = "史莱姆", area_id = 17 },
	{ config_id = 193003, monster_id = 20060201, pos = { x = -3693.696, y = 113.169, z = -884.970 }, rot = { x = 0.000, y = 245.973, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 193004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3693.419, y = 113.390, z = -885.801 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1193004, name = "ENTER_REGION_193004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_193004", action = "action_EVENT_ENTER_REGION_193004" }
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
		regions = { 193004 },
		triggers = { "ENTER_REGION_193004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 193001, 193002, 193003 },
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
function condition_EVENT_ENTER_REGION_193004(context, evt)
	if evt.param1 ~= 193004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_193004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133210193, 2)
	
	return 0
end