-- 基础信息
local base_info = {
	group_id = 133225038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38001, monster_id = 20010501, pos = { x = -6257.387, y = 246.533, z = -2521.632 }, rot = { x = 0.000, y = 344.731, z = 0.000 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 38003, monster_id = 20010501, pos = { x = -6260.792, y = 247.498, z = -2522.200 }, rot = { x = 346.992, y = 289.616, z = 357.434 }, level = 33, drop_tag = "史莱姆", climate_area_id = 7, area_id = 18 },
	{ config_id = 38005, monster_id = 20010601, pos = { x = -6258.132, y = 246.794, z = -2518.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "大史莱姆", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 38004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6255.798, y = 245.792, z = -2517.812 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1038004, name = "ENTER_REGION_38004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_38004", action = "action_EVENT_ENTER_REGION_38004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 38002, monster_id = 22040201, pos = { x = -6260.614, y = 248.027, z = -2515.716 }, rot = { x = 0.000, y = 134.962, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 }
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
		regions = { 38004 },
		triggers = { "ENTER_REGION_38004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 38001, 38003, 38005 },
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
function condition_EVENT_ENTER_REGION_38004(context, evt)
	if evt.param1 ~= 38004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_38004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225038, 2)
	
	return 0
end