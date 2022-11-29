-- 基础信息
local base_info = {
	group_id = 133102114
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 207, monster_id = 20010701, pos = { x = 1395.320, y = 214.780, z = 591.941 }, rot = { x = 0.000, y = 295.881, z = 0.000 }, level = 18, drop_tag = "大史莱姆", area_id = 5 },
	{ config_id = 208, monster_id = 20010501, pos = { x = 1394.555, y = 214.733, z = 593.759 }, rot = { x = 0.000, y = 208.765, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 220, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1396.077, y = 214.725, z = 593.392 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1000220, name = "ENTER_REGION_220", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_220", action = "action_EVENT_ENTER_REGION_220" }
}

-- 变量
variables = {
	{ config_id = 1, name = "deadMonsterCounter", value = 0, no_refresh = false }
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
		regions = { 220 },
		triggers = { "ENTER_REGION_220" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 207, 208 },
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
function condition_EVENT_ENTER_REGION_220(context, evt)
	if evt.param1 ~= 220 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_220(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102114, 2)
	
	return 0
end