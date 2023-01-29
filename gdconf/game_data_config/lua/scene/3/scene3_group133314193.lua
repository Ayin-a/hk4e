-- 基础信息
local base_info = {
	group_id = 133314193
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 193001, monster_id = 26090901, pos = { x = -947.330, y = -158.043, z = 4973.257 }, rot = { x = 0.000, y = 317.344, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 193002, monster_id = 26090901, pos = { x = -949.205, y = -159.001, z = 4985.378 }, rot = { x = 0.000, y = 202.879, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 193004, monster_id = 26090901, pos = { x = -944.053, y = -158.801, z = 4977.938 }, rot = { x = 0.000, y = 280.690, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 193003, shape = RegionShape.SPHERE, radius = 9, pos = { x = -955.349, y = -155.400, z = 4979.482 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1193003, name = "ENTER_REGION_193003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_193003", action = "action_EVENT_ENTER_REGION_193003" }
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
		regions = { 193003 },
		triggers = { "ENTER_REGION_193003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 193001, 193002, 193004 },
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
function condition_EVENT_ENTER_REGION_193003(context, evt)
	if evt.param1 ~= 193003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_193003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314193, 2)
	
	return 0
end