-- 基础信息
local base_info = {
	group_id = 133222022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22001, monster_id = 20060201, pos = { x = -4204.406, y = 200.958, z = -4214.310 }, rot = { x = 0.000, y = 73.656, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 22002, monster_id = 20060101, pos = { x = -4187.281, y = 200.167, z = -4219.711 }, rot = { x = 0.000, y = 302.487, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 22003, monster_id = 20060101, pos = { x = -4186.997, y = 199.327, z = -4206.210 }, rot = { x = 0.000, y = 220.735, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 22005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4194.448, y = 201.239, z = -4213.655 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1022005, name = "ENTER_REGION_22005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22005", action = "action_EVENT_ENTER_REGION_22005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 22007, monster_id = 20010601, pos = { x = -4198.586, y = 201.479, z = -4209.505 }, rot = { x = 0.000, y = 112.916, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 },
		{ config_id = 22008, monster_id = 20010701, pos = { x = -4194.513, y = 201.248, z = -4213.437 }, rot = { x = 0.000, y = 305.749, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 22005 },
		triggers = { "ENTER_REGION_22005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 22001, 22002, 22003 },
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
function condition_EVENT_ENTER_REGION_22005(context, evt)
	if evt.param1 ~= 22005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222022, 2)
	
	return 0
end