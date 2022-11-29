-- 基础信息
local base_info = {
	group_id = 133004072
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 207, monster_id = 20011201, pos = { x = 2113.000, y = 241.128, z = -442.025 }, rot = { x = 0.000, y = 207.674, z = 0.000 }, level = 15, drop_tag = "史莱姆", disableWander = true, area_id = 3 },
	{ config_id = 208, monster_id = 20011201, pos = { x = 2112.324, y = 240.224, z = -445.238 }, rot = { x = 0.000, y = 330.030, z = 0.000 }, level = 15, drop_tag = "史莱姆", disableWander = true, area_id = 3 },
	{ config_id = 209, monster_id = 20011201, pos = { x = 2109.677, y = 240.360, z = -443.076 }, rot = { x = 0.000, y = 106.007, z = 0.000 }, level = 15, drop_tag = "史莱姆", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 72001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2111.510, y = 240.452, z = -443.790 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1072001, name = "ENTER_REGION_72001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_72001", action = "action_EVENT_ENTER_REGION_72001" }
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
		regions = { 72001 },
		triggers = { "ENTER_REGION_72001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 207, 208, 209 },
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
function condition_EVENT_ENTER_REGION_72001(context, evt)
	if evt.param1 ~= 72001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_72001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004072, 2)
	
	return 0
end