-- 基础信息
local base_info = {
	group_id = 133220596
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 596002, monster_id = 26010301, pos = { x = -2765.582, y = 237.196, z = -4401.122 }, rot = { x = 0.000, y = 65.786, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 11 },
	{ config_id = 596003, monster_id = 26010301, pos = { x = -2767.120, y = 237.196, z = -4397.424 }, rot = { x = 0.000, y = 65.786, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 596004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -2764.217, y = 237.507, z = -4400.942 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1596004, name = "ENTER_REGION_596004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_596004", action = "action_EVENT_ENTER_REGION_596004" }
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
		regions = { 596004 },
		triggers = { "ENTER_REGION_596004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 596002, 596003 },
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
function condition_EVENT_ENTER_REGION_596004(context, evt)
	if evt.param1 ~= 596004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_596004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220596, 2)
	
	return 0
end