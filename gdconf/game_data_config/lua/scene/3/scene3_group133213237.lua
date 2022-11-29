-- 基础信息
local base_info = {
	group_id = 133213237
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 237001, monster_id = 25100201, pos = { x = -3635.473, y = 206.934, z = -3199.509 }, rot = { x = 0.000, y = 164.076, z = 0.000 }, level = 28, drop_tag = "高阶武士", disableWander = true, pose_id = 1, climate_area_id = 2, area_id = 12 },
	{ config_id = 237002, monster_id = 25100101, pos = { x = -3634.852, y = 207.180, z = -3210.084 }, rot = { x = 0.000, y = 336.008, z = 0.000 }, level = 28, drop_tag = "高阶武士", disableWander = true, pose_id = 1, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 237004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3641.211, y = 207.041, z = -3199.299 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1237004, name = "ENTER_REGION_237004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_237004", action = "action_EVENT_ENTER_REGION_237004" }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 237001, 237002 }
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
		regions = { 237004 },
		triggers = { "ENTER_REGION_237004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 237001, 237002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_237004(context, evt)
	if evt.param1 ~= 237004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_237004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213237, 2)
	
	return 0
end