-- 基础信息
local base_info = {
	group_id = 133312049
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49001, monster_id = 20011201, pos = { x = -3087.364, y = 328.350, z = 4749.361 }, rot = { x = 0.000, y = 241.907, z = 0.000 }, level = 32, drop_tag = "史莱姆", disableWander = true, area_id = 28 },
	{ config_id = 49002, monster_id = 20011201, pos = { x = -3084.427, y = 329.299, z = 4748.035 }, rot = { x = 0.000, y = 305.195, z = 0.000 }, level = 32, drop_tag = "史莱姆", disableWander = true, area_id = 28 },
	{ config_id = 49003, monster_id = 20011301, pos = { x = -3088.253, y = 329.426, z = 4743.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大史莱姆", disableWander = true, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 49004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3087.869, y = 328.974, z = 4746.201 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1049004, name = "ENTER_REGION_49004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49004", action = "action_EVENT_ENTER_REGION_49004" }
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
		regions = { 49004 },
		triggers = { "ENTER_REGION_49004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 49001, 49002, 49003 },
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
function condition_EVENT_ENTER_REGION_49004(context, evt)
	if evt.param1 ~= 49004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133312049, 2)
	
	return 0
end