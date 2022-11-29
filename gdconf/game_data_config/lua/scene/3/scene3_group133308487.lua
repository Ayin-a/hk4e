-- 基础信息
local base_info = {
	group_id = 133308487
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 487001, monster_id = 26090401, pos = { x = -1849.732, y = 323.352, z = 4042.456 }, rot = { x = 0.000, y = 301.994, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 487002, monster_id = 26091001, pos = { x = -1844.761, y = 324.081, z = 4047.821 }, rot = { x = 0.000, y = 271.416, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 },
	{ config_id = 487003, monster_id = 26090401, pos = { x = -1849.174, y = 323.378, z = 4050.343 }, rot = { x = 0.000, y = 244.224, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 487005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1846.555, y = 324.050, z = 4046.215 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1487005, name = "ENTER_REGION_487005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_487005", action = "action_EVENT_ENTER_REGION_487005" }
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
		regions = { 487005 },
		triggers = { "ENTER_REGION_487005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 487001, 487002, 487003 },
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
function condition_EVENT_ENTER_REGION_487005(context, evt)
	if evt.param1 ~= 487005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_487005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308487, 2)
	
	return 0
end