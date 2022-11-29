-- 基础信息
local base_info = {
	group_id = 133213232
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 232001, monster_id = 22010401, pos = { x = -3467.270, y = 200.000, z = -3002.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "深渊法师", disableWander = true, area_id = 12 },
	{ config_id = 232003, monster_id = 22010201, pos = { x = -3470.249, y = 200.000, z = -3004.052 }, rot = { x = 0.000, y = 33.723, z = 0.000 }, level = 28, drop_tag = "深渊法师", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 232004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3467.646, y = 200.000, z = -3004.496 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1232004, name = "ENTER_REGION_232004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_232004", action = "action_EVENT_ENTER_REGION_232004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 232002, monster_id = 22010101, pos = { x = -3465.059, y = 199.659, z = -3007.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 29, drop_tag = "深渊法师", disableWander = true, area_id = 12 }
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
		regions = { 232004 },
		triggers = { "ENTER_REGION_232004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 232001, 232003 },
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
function condition_EVENT_ENTER_REGION_232004(context, evt)
	if evt.param1 ~= 232004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_232004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213232, 2)
	
	return 0
end