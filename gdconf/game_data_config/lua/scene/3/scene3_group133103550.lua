-- 基础信息
local base_info = {
	group_id = 133103550
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 550001, monster_id = 26010201, pos = { x = 45.804, y = 232.628, z = 1114.421 }, rot = { x = 0.000, y = 234.100, z = 0.000 }, level = 24, drop_tag = "骗骗花", area_id = 6 },
	{ config_id = 550002, monster_id = 26010201, pos = { x = 40.243, y = 233.474, z = 1096.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "骗骗花", area_id = 6 },
	{ config_id = 550003, monster_id = 26010201, pos = { x = 29.933, y = 235.956, z = 1114.213 }, rot = { x = 0.000, y = 117.870, z = 0.000 }, level = 24, drop_tag = "骗骗花", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 550004, shape = RegionShape.SPHERE, radius = 15.2, pos = { x = 37.462, y = 234.127, z = 1107.651 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1550004, name = "ENTER_REGION_550004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_550004", action = "action_EVENT_ENTER_REGION_550004" }
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
		regions = { 550004 },
		triggers = { "ENTER_REGION_550004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 550001, 550002, 550003 },
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
function condition_EVENT_ENTER_REGION_550004(context, evt)
	if evt.param1 ~= 550004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_550004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103550, 2)
	
	return 0
end