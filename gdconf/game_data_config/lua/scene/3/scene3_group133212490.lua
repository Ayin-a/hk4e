-- 基础信息
local base_info = {
	group_id = 133212490
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 490007, monster_id = 20011301, pos = { x = -3857.013, y = 213.476, z = -2100.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 13 },
	{ config_id = 490008, monster_id = 20011201, pos = { x = -3856.561, y = 213.884, z = -2105.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 490009, monster_id = 20011201, pos = { x = -3851.982, y = 213.673, z = -2104.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 490010, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3858.334, y = 213.525, z = -2101.130 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1490010, name = "ENTER_REGION_490010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_490010", action = "action_EVENT_ENTER_REGION_490010" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 490001, gadget_id = 70290009, pos = { x = -3852.424, y = 213.715, z = -2102.417 }, rot = { x = 0.000, y = 248.037, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 490002, gadget_id = 70500000, pos = { x = -3852.424, y = 213.715, z = -2102.417 }, rot = { x = 0.000, y = 248.037, z = 0.000 }, level = 27, point_type = 3005, owner = 490001, area_id = 13 },
		{ config_id = 490003, gadget_id = 70290009, pos = { x = -3854.648, y = 213.398, z = -2108.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 490004, gadget_id = 70500000, pos = { x = -3854.648, y = 213.398, z = -2108.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3005, owner = 490003, area_id = 13 },
		{ config_id = 490005, gadget_id = 70290009, pos = { x = -3861.050, y = 212.236, z = -2092.278 }, rot = { x = 0.000, y = 48.454, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 490006, gadget_id = 70500000, pos = { x = -3861.050, y = 212.236, z = -2092.278 }, rot = { x = 0.000, y = 48.454, z = 0.000 }, level = 27, point_type = 3005, owner = 490005, area_id = 13 }
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
		regions = { 490010 },
		triggers = { "ENTER_REGION_490010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 490007, 490008, 490009 },
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
function condition_EVENT_ENTER_REGION_490010(context, evt)
	if evt.param1 ~= 490010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_490010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212490, 2)
	
	return 0
end