-- 基础信息
local base_info = {
	group_id = 133302583
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 583001, monster_id = 20011401, pos = { x = -965.378, y = 218.136, z = 2455.855 }, rot = { x = 0.000, y = 229.708, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 24 },
	{ config_id = 583002, monster_id = 20011401, pos = { x = -962.604, y = 218.568, z = 2451.182 }, rot = { x = 0.000, y = 285.608, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 24 },
	{ config_id = 583003, monster_id = 26090901, pos = { x = -971.648, y = 220.471, z = 2443.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 },
	{ config_id = 583005, monster_id = 26090901, pos = { x = -971.789, y = 220.006, z = 2447.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 583004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -966.908, y = 219.238, z = 2448.465 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1583004, name = "ENTER_REGION_583004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_583004", action = "action_EVENT_ENTER_REGION_583004" }
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
		regions = { 583004 },
		triggers = { "ENTER_REGION_583004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 583001, 583002, 583003, 583005 },
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
function condition_EVENT_ENTER_REGION_583004(context, evt)
	if evt.param1 ~= 583004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_583004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302583, 2)
	
	return 0
end