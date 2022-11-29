-- 基础信息
local base_info = {
	group_id = 133222036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36001, monster_id = 20010601, pos = { x = -4148.214, y = 200.345, z = -4308.894 }, rot = { x = 0.000, y = 322.382, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
	{ config_id = 36005, monster_id = 20060301, pos = { x = -4149.543, y = 200.069, z = -4303.188 }, rot = { x = 0.000, y = 224.175, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 36008, monster_id = 20010701, pos = { x = -4157.627, y = 201.054, z = -4309.701 }, rot = { x = 0.000, y = 55.459, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 36004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4153.573, y = 200.797, z = -4307.105 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1036004, name = "ENTER_REGION_36004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_36004", action = "action_EVENT_ENTER_REGION_36004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 36002, monster_id = 20010601, pos = { x = -4157.846, y = 200.796, z = -4310.044 }, rot = { x = 0.000, y = 45.492, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
		{ config_id = 36003, monster_id = 20010601, pos = { x = -4154.570, y = 200.217, z = -4300.752 }, rot = { x = 0.000, y = 139.714, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
		{ config_id = 36006, monster_id = 20010501, pos = { x = -4156.834, y = 200.664, z = -4303.848 }, rot = { x = 0.000, y = 125.715, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 14 },
		{ config_id = 36007, monster_id = 20010501, pos = { x = -4152.099, y = 200.701, z = -4311.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 14 }
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
		regions = { 36004 },
		triggers = { "ENTER_REGION_36004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 36001, 36005, 36008 },
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
function condition_EVENT_ENTER_REGION_36004(context, evt)
	if evt.param1 ~= 36004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_36004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222036, 2)
	
	return 0
end