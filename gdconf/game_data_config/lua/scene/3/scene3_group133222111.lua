-- 基础信息
local base_info = {
	group_id = 133222111
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 111001, monster_id = 20060101, pos = { x = -4765.685, y = 201.034, z = -4526.822 }, rot = { x = 0.000, y = 142.853, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 111002, monster_id = 20060101, pos = { x = -4749.372, y = 199.457, z = -4533.838 }, rot = { x = 0.000, y = 271.375, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 111003, monster_id = 20060101, pos = { x = -4759.377, y = 199.376, z = -4539.365 }, rot = { x = 0.000, y = 344.579, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 111004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4759.452, y = 201.813, z = -4532.405 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1111004, name = "ENTER_REGION_111004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_111004", action = "action_EVENT_ENTER_REGION_111004" }
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
		regions = { 111004 },
		triggers = { "ENTER_REGION_111004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 111001, 111002, 111003 },
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
function condition_EVENT_ENTER_REGION_111004(context, evt)
	if evt.param1 ~= 111004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_111004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222111, 2)
	
	return 0
end