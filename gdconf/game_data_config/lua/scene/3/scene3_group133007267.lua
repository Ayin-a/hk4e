-- 基础信息
local base_info = {
	group_id = 133007267
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 267001, monster_id = 21010901, pos = { x = 2786.203, y = 209.360, z = -34.031 }, rot = { x = 0.000, y = 149.706, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 4 },
	{ config_id = 267002, monster_id = 21010501, pos = { x = 2805.445, y = 207.266, z = -19.085 }, rot = { x = 0.000, y = 212.535, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 },
	{ config_id = 267003, monster_id = 21011001, pos = { x = 2818.335, y = 209.056, z = 22.328 }, rot = { x = 0.000, y = 194.125, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 267004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2794.301, y = 209.259, z = -40.732 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1267004, name = "ENTER_REGION_267004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_267004", action = "action_EVENT_ENTER_REGION_267004" }
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
		regions = { 267004 },
		triggers = { "ENTER_REGION_267004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 267001, 267002, 267003 },
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
function condition_EVENT_ENTER_REGION_267004(context, evt)
	if evt.param1 ~= 267004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_267004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133007267, 2)
	
	return 0
end