-- 基础信息
local base_info = {
	group_id = 133301615
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 615001, monster_id = 20010301, pos = { x = -885.862, y = 295.447, z = 3115.452 }, rot = { x = 0.000, y = 109.572, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 23 },
	{ config_id = 615003, monster_id = 20010301, pos = { x = -883.407, y = 292.992, z = 3107.427 }, rot = { x = 0.000, y = 36.739, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 615004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -877.761, y = 294.715, z = 3115.104 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1615004, name = "ENTER_REGION_615004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_615004", action = "action_EVENT_ENTER_REGION_615004" }
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
		regions = { 615004 },
		triggers = { "ENTER_REGION_615004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 615001, 615003 },
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
function condition_EVENT_ENTER_REGION_615004(context, evt)
	if evt.param1 ~= 615004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_615004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301615, 2)
	
	return 0
end