-- 基础信息
local base_info = {
	group_id = 133213234
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 234001, monster_id = 26010301, pos = { x = -3493.821, y = 199.670, z = -2965.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "骗骗花", disableWander = true, area_id = 12 },
	{ config_id = 234002, monster_id = 20011101, pos = { x = -3492.288, y = 199.733, z = -2970.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "大史莱姆", disableWander = true, area_id = 12 },
	{ config_id = 234003, monster_id = 26010101, pos = { x = -3498.543, y = 199.579, z = -2970.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "骗骗花", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 234004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3494.358, y = 200.000, z = -2969.159 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1234004, name = "ENTER_REGION_234004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_234004", action = "action_EVENT_ENTER_REGION_234004" }
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
		regions = { 234004 },
		triggers = { "ENTER_REGION_234004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 234001, 234002, 234003 },
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
function condition_EVENT_ENTER_REGION_234004(context, evt)
	if evt.param1 ~= 234004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_234004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213234, 2)
	
	return 0
end