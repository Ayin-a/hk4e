-- 基础信息
local base_info = {
	group_id = 133213246
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 246001, monster_id = 21010501, pos = { x = -3743.774, y = 264.881, z = -3163.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 246002, monster_id = 21010501, pos = { x = -3741.510, y = 264.968, z = -3163.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 2, area_id = 12 },
	{ config_id = 246003, monster_id = 21010601, pos = { x = -3745.408, y = 264.890, z = -3164.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "丘丘人", disableWander = true, climate_area_id = 2, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 246004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3742.908, y = 262.726, z = -3157.938 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1246004, name = "ENTER_REGION_246004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_246004", action = "action_EVENT_ENTER_REGION_246004" }
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
		regions = { 246004 },
		triggers = { "ENTER_REGION_246004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 246001, 246002, 246003 },
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
function condition_EVENT_ENTER_REGION_246004(context, evt)
	if evt.param1 ~= 246004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_246004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213246, 2)
	
	return 0
end