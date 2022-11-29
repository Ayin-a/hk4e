-- 基础信息
local base_info = {
	group_id = 133104064
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 64001, monster_id = 21010901, pos = { x = 265.178, y = 236.368, z = 805.815 }, rot = { x = 0.000, y = 338.424, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 9 },
	{ config_id = 64002, monster_id = 21010501, pos = { x = 275.116, y = 235.090, z = 811.664 }, rot = { x = 0.000, y = 301.526, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 64003, monster_id = 21011001, pos = { x = 302.294, y = 229.600, z = 794.928 }, rot = { x = 0.000, y = 256.274, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 64004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 263.303, y = 233.156, z = 822.319 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1064004, name = "ENTER_REGION_64004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_64004", action = "action_EVENT_ENTER_REGION_64004" }
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
		regions = { 64004 },
		triggers = { "ENTER_REGION_64004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 64001, 64002, 64003 },
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
function condition_EVENT_ENTER_REGION_64004(context, evt)
	if evt.param1 ~= 64004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_64004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104064, 2)
	
	return 0
end