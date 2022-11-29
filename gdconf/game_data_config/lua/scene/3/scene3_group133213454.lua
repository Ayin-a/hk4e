-- 基础信息
local base_info = {
	group_id = 133213454
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 454001, monster_id = 20011201, pos = { x = -3630.157, y = 200.032, z = -3154.290 }, rot = { x = 0.000, y = 226.636, z = 0.000 }, level = 28, drop_tag = "史莱姆", climate_area_id = 2, area_id = 12 },
	{ config_id = 454002, monster_id = 20010901, pos = { x = -3632.133, y = 200.714, z = -3157.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "大史莱姆", climate_area_id = 2, area_id = 12 },
	{ config_id = 454003, monster_id = 20010801, pos = { x = -3633.294, y = 200.314, z = -3155.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "史莱姆", climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 454004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3631.211, y = 200.179, z = -3154.622 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1454004, name = "ENTER_REGION_454004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_454004", action = "action_EVENT_ENTER_REGION_454004" }
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
		regions = { 454004 },
		triggers = { "ENTER_REGION_454004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 454001, 454002, 454003 },
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
function condition_EVENT_ENTER_REGION_454004(context, evt)
	if evt.param1 ~= 454004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_454004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213454, 2)
	
	return 0
end