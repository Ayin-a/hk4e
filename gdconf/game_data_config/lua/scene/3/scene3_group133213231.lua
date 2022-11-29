-- 基础信息
local base_info = {
	group_id = 133213231
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 231001, monster_id = 21030301, pos = { x = -3398.225, y = 199.637, z = -3016.355 }, rot = { x = 0.000, y = 296.056, z = 0.000 }, level = 28, drop_tag = "丘丘萨满", disableWander = true, area_id = 12 },
	{ config_id = 231002, monster_id = 21020701, pos = { x = -3400.711, y = 199.661, z = -3021.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "丘丘暴徒", disableWander = true, area_id = 12 },
	{ config_id = 231003, monster_id = 21030601, pos = { x = -3404.367, y = 199.784, z = -3017.138 }, rot = { x = 0.000, y = 99.097, z = 0.000 }, level = 28, drop_tag = "丘丘萨满", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 231004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3402.208, y = 200.000, z = -3021.254 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1231004, name = "ENTER_REGION_231004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_231004", action = "action_EVENT_ENTER_REGION_231004" }
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
		regions = { 231004 },
		triggers = { "ENTER_REGION_231004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 231001, 231002, 231003 },
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
function condition_EVENT_ENTER_REGION_231004(context, evt)
	if evt.param1 ~= 231004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_231004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213231, 2)
	
	return 0
end