-- 基础信息
local base_info = {
	group_id = 133008215
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 215001, monster_id = 26060301, pos = { x = 998.721, y = 293.783, z = -923.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "雷萤", climate_area_id = 1, area_id = 10 },
	{ config_id = 215002, monster_id = 26060301, pos = { x = 1000.374, y = 293.711, z = -924.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "雷萤", climate_area_id = 1, area_id = 10 },
	{ config_id = 215003, monster_id = 26060301, pos = { x = 998.162, y = 293.425, z = -924.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "雷萤", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 215004, shape = RegionShape.SPHERE, radius = 4, pos = { x = 999.323, y = 293.054, z = -923.664 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1215004, name = "ENTER_REGION_215004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_215004", action = "action_EVENT_ENTER_REGION_215004" }
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
		regions = { 215004 },
		triggers = { "ENTER_REGION_215004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 215001, 215002, 215003 },
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
function condition_EVENT_ENTER_REGION_215004(context, evt)
	if evt.param1 ~= 215004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_215004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008215, 2)
	
	return 0
end