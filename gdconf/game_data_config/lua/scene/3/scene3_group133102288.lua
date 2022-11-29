-- 基础信息
local base_info = {
	group_id = 133102288
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 288005, monster_id = 20010301, pos = { x = 1619.730, y = 223.443, z = 152.550 }, rot = { x = 359.640, y = 131.713, z = 359.239 }, level = 15, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 288006, monster_id = 20010301, pos = { x = 1620.982, y = 222.894, z = 154.552 }, rot = { x = 359.909, y = 150.801, z = 359.163 }, level = 15, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 288007, shape = RegionShape.SPHERE, radius = 4, pos = { x = 1619.628, y = 222.280, z = 152.122 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1288007, name = "ENTER_REGION_288007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_288007", action = "action_EVENT_ENTER_REGION_288007" }
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
		regions = { 288007 },
		triggers = { "ENTER_REGION_288007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 288005, 288006 },
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
function condition_EVENT_ENTER_REGION_288007(context, evt)
	if evt.param1 ~= 288007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_288007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102288, 2)
	
	return 0
end