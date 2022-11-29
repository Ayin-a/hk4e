-- 基础信息
local base_info = {
	group_id = 133308644
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 644001, monster_id = 26090901, pos = { x = -1395.213, y = 203.405, z = 4180.622 }, rot = { x = 0.000, y = 194.591, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 644002, monster_id = 26090901, pos = { x = -1389.855, y = 204.842, z = 4173.489 }, rot = { x = 0.000, y = 317.513, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 644003, monster_id = 26090901, pos = { x = -1394.423, y = 204.874, z = 4174.514 }, rot = { x = 0.000, y = 8.545, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 644004, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1392.997, y = 204.063, z = 4177.995 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1644004, name = "ENTER_REGION_644004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_644004", action = "action_EVENT_ENTER_REGION_644004" }
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
		regions = { 644004 },
		triggers = { "ENTER_REGION_644004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 644001, 644002, 644003 },
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
function condition_EVENT_ENTER_REGION_644004(context, evt)
	if evt.param1 ~= 644004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_644004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308644, 2)
	
	return 0
end