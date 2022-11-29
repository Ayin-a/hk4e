-- 基础信息
local base_info = {
	group_id = 133222281
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 281002, monster_id = 20011001, pos = { x = -4682.546, y = 120.058, z = -4242.170 }, rot = { x = 0.000, y = 81.252, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 },
	{ config_id = 281003, monster_id = 20011001, pos = { x = -4682.469, y = 120.162, z = -4238.509 }, rot = { x = 0.000, y = 92.332, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 281004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4683.855, y = 120.045, z = -4240.325 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1281004, name = "ENTER_REGION_281004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_281004", action = "action_EVENT_ENTER_REGION_281004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 281001, monster_id = 20060201, pos = { x = -4682.088, y = 120.145, z = -4238.565 }, rot = { x = 0.000, y = 84.628, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, climate_area_id = 10, area_id = 14 },
		{ config_id = 281005, monster_id = 20011001, pos = { x = -4684.674, y = 120.092, z = -4240.085 }, rot = { x = 0.000, y = 81.252, z = 0.000 }, level = 30, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 }
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
		regions = { 281004 },
		triggers = { "ENTER_REGION_281004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 281002, 281003 },
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
function condition_EVENT_ENTER_REGION_281004(context, evt)
	if evt.param1 ~= 281004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_281004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222281, 2)
	
	return 0
end