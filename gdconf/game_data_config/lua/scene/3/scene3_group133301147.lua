-- 基础信息
local base_info = {
	group_id = 133301147
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 147001, monster_id = 26090901, pos = { x = -310.481, y = 145.073, z = 3963.977 }, rot = { x = 0.000, y = 17.231, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 147002, monster_id = 26090901, pos = { x = -303.640, y = 143.092, z = 3964.865 }, rot = { x = 0.000, y = 256.854, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 147003, monster_id = 26090901, pos = { x = -301.773, y = 141.676, z = 3961.956 }, rot = { x = 0.000, y = 304.813, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 147004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -308.691, y = 144.482, z = 3964.595 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1147004, name = "ENTER_REGION_147004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_147004", action = "action_EVENT_ENTER_REGION_147004" }
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
		regions = { 147004 },
		triggers = { "ENTER_REGION_147004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 147001, 147002, 147003 },
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
function condition_EVENT_ENTER_REGION_147004(context, evt)
	if evt.param1 ~= 147004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_147004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301147, 2)
	
	return 0
end