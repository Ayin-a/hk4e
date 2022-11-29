-- 基础信息
local base_info = {
	group_id = 133222290
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 290001, monster_id = 20011101, pos = { x = -4662.466, y = 164.777, z = -4223.970 }, rot = { x = 0.000, y = 131.693, z = 0.000 }, level = 32, drop_tag = "大史莱姆", climate_area_id = 10, area_id = 14 },
	{ config_id = 290002, monster_id = 20011001, pos = { x = -4662.143, y = 165.005, z = -4228.674 }, rot = { x = 0.000, y = 54.061, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 290004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4662.916, y = 164.777, z = -4226.513 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1290004, name = "ENTER_REGION_290004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_290004", action = "action_EVENT_ENTER_REGION_290004" }
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
		regions = { 290004 },
		triggers = { "ENTER_REGION_290004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 290001, 290002 },
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
function condition_EVENT_ENTER_REGION_290004(context, evt)
	if evt.param1 ~= 290004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_290004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222290, 2)
	
	return 0
end