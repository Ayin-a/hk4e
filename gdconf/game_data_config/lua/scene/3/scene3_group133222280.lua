-- 基础信息
local base_info = {
	group_id = 133222280
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 280001, monster_id = 20011101, pos = { x = -4676.164, y = 120.213, z = -4269.354 }, rot = { x = 0.000, y = 45.259, z = 0.000 }, level = 32, drop_tag = "大史莱姆", climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 280004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -4678.575, y = 121.182, z = -4271.259 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1280004, name = "ENTER_REGION_280004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_280004", action = "action_EVENT_ENTER_REGION_280004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 280002, monster_id = 20011101, pos = { x = -4678.680, y = 120.165, z = -4265.697 }, rot = { x = 0.000, y = 81.779, z = 0.000 }, level = 32, drop_tag = "大史莱姆", climate_area_id = 10, area_id = 14 }
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
		regions = { 280004 },
		triggers = { "ENTER_REGION_280004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 280001 },
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
function condition_EVENT_ENTER_REGION_280004(context, evt)
	if evt.param1 ~= 280004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_280004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222280, 2)
	
	return 0
end