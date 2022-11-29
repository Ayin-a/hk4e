-- 基础信息
local base_info = {
	group_id = 133213455
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 455001, monster_id = 20011301, pos = { x = -3669.737, y = 201.381, z = -3166.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "大史莱姆", climate_area_id = 2, area_id = 12 },
	{ config_id = 455002, monster_id = 20010501, pos = { x = -3667.920, y = 200.420, z = -3161.854 }, rot = { x = 0.000, y = 266.889, z = 0.000 }, level = 28, drop_tag = "史莱姆", climate_area_id = 2, area_id = 12 },
	{ config_id = 455003, monster_id = 20011201, pos = { x = -3671.000, y = 200.820, z = -3163.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "史莱姆", climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 455004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3669.527, y = 200.820, z = -3163.990 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1455004, name = "ENTER_REGION_455004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_455004", action = "action_EVENT_ENTER_REGION_455004" }
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
		regions = { 455004 },
		triggers = { "ENTER_REGION_455004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 455001, 455002, 455003 },
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
function condition_EVENT_ENTER_REGION_455004(context, evt)
	if evt.param1 ~= 455004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_455004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213455, 2)
	
	return 0
end