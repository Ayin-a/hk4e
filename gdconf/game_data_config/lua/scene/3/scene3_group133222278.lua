-- 基础信息
local base_info = {
	group_id = 133222278
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 278002, monster_id = 20011401, pos = { x = -4663.160, y = 139.482, z = -4239.230 }, rot = { x = 0.000, y = 299.828, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 },
	{ config_id = 278003, monster_id = 20011401, pos = { x = -4665.558, y = 139.634, z = -4237.886 }, rot = { x = 0.000, y = 76.845, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 278004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4664.033, y = 139.414, z = -4238.215 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1278004, name = "ENTER_REGION_278004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_278004", action = "action_EVENT_ENTER_REGION_278004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 278001, monster_id = 20011401, pos = { x = -4662.052, y = 140.011, z = -4236.387 }, rot = { x = 0.000, y = 215.076, z = 0.000 }, level = 32, drop_tag = "史莱姆", climate_area_id = 10, area_id = 14 },
		{ config_id = 278005, monster_id = 20011501, pos = { x = -4663.453, y = 139.396, z = -4239.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", climate_area_id = 10, area_id = 14 }
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
		regions = { 278004 },
		triggers = { "ENTER_REGION_278004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 278002, 278003 },
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
function condition_EVENT_ENTER_REGION_278004(context, evt)
	if evt.param1 ~= 278004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_278004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222278, 2)
	
	return 0
end