-- 基础信息
local base_info = {
	group_id = 133220537
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 537001, monster_id = 20010501, pos = { x = -2617.934, y = 200.000, z = -4089.104 }, rot = { x = 0.000, y = 48.415, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 537002, monster_id = 20010501, pos = { x = -2618.133, y = 200.000, z = -4091.466 }, rot = { x = 0.000, y = 48.415, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 },
	{ config_id = 537003, monster_id = 20010501, pos = { x = -2620.325, y = 200.000, z = -4088.137 }, rot = { x = 0.000, y = 48.415, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 537004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2618.194, y = 200.000, z = -4088.814 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1537004, name = "ENTER_REGION_537004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_537004", action = "action_EVENT_ENTER_REGION_537004" }
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
		regions = { 537004 },
		triggers = { "ENTER_REGION_537004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 537001, 537002, 537003 },
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
function condition_EVENT_ENTER_REGION_537004(context, evt)
	if evt.param1 ~= 537004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_537004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220537, 2)
	
	return 0
end