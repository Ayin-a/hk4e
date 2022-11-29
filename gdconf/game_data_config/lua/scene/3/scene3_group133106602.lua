-- 基础信息
local base_info = {
	group_id = 133106602
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 602001, monster_id = 20010501, pos = { x = -563.548, y = 237.664, z = 1505.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 602002, monster_id = 20010501, pos = { x = -564.109, y = 238.269, z = 1502.424 }, rot = { x = 0.000, y = 32.166, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 },
	{ config_id = 602003, monster_id = 20010501, pos = { x = -558.856, y = 240.733, z = 1508.602 }, rot = { x = 0.000, y = 44.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 602004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -563.218, y = 237.578, z = 1506.417 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1602004, name = "ENTER_REGION_602004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_602004", action = "action_EVENT_ENTER_REGION_602004" }
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
		monsters = { 602001 },
		gadgets = { },
		regions = { 602004 },
		triggers = { "ENTER_REGION_602004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 602002, 602003 },
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
function condition_EVENT_ENTER_REGION_602004(context, evt)
	if evt.param1 ~= 602004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_602004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106602, 2)
	
	return 0
end