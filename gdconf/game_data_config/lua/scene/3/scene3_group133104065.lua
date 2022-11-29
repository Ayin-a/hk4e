-- 基础信息
local base_info = {
	group_id = 133104065
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 65001, monster_id = 21010901, pos = { x = 61.757, y = 209.274, z = 705.196 }, rot = { x = 0.000, y = 25.116, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 9 },
	{ config_id = 65002, monster_id = 21010501, pos = { x = 82.115, y = 208.666, z = 710.667 }, rot = { x = 0.000, y = 279.786, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 65003, monster_id = 21011001, pos = { x = 71.230, y = 208.703, z = 680.599 }, rot = { x = 0.000, y = 21.608, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 65004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 69.307, y = 209.856, z = 718.281 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1065004, name = "ENTER_REGION_65004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_65004", action = "action_EVENT_ENTER_REGION_65004" }
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
		regions = { 65004 },
		triggers = { "ENTER_REGION_65004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 65001, 65002, 65003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_65004(context, evt)
	if evt.param1 ~= 65004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_65004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104065, 2)
	
	return 0
end