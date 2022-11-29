-- 基础信息
local base_info = {
	group_id = 133220530
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 530001, monster_id = 21011601, pos = { x = -2948.650, y = 207.621, z = -4125.521 }, rot = { x = 0.000, y = 66.682, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 11 },
	{ config_id = 530002, monster_id = 21010201, pos = { x = -2948.757, y = 207.621, z = -4128.793 }, rot = { x = 0.000, y = 66.682, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 11 },
	{ config_id = 530003, monster_id = 21010201, pos = { x = -2950.956, y = 207.621, z = -4123.197 }, rot = { x = 0.000, y = 66.682, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 530004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2949.401, y = 207.621, z = -4126.189 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1530004, name = "ENTER_REGION_530004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_530004", action = "action_EVENT_ENTER_REGION_530004" }
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
		regions = { 530004 },
		triggers = { "ENTER_REGION_530004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 530001, 530002, 530003 },
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
function condition_EVENT_ENTER_REGION_530004(context, evt)
	if evt.param1 ~= 530004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_530004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220530, 2)
	
	return 0
end