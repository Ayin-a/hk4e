-- 基础信息
local base_info = {
	group_id = 133310577
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 577001, monster_id = 26090301, pos = { x = -2640.625, y = 224.049, z = 4432.239 }, rot = { x = 0.000, y = 38.731, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 577002, monster_id = 26090301, pos = { x = -2640.162, y = 223.855, z = 4439.434 }, rot = { x = 0.000, y = 151.713, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 },
	{ config_id = 577003, monster_id = 26090801, pos = { x = -2642.465, y = 224.146, z = 4436.205 }, rot = { x = 0.000, y = 83.700, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 577004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2638.453, y = 223.993, z = 4436.865 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1577004, name = "ENTER_REGION_577004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_577004", action = "action_EVENT_ENTER_REGION_577004" }
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
		regions = { 577004 },
		triggers = { "ENTER_REGION_577004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 577001, 577002, 577003 },
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
function condition_EVENT_ENTER_REGION_577004(context, evt)
	if evt.param1 ~= 577004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_577004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310577, 2)
	
	return 0
end