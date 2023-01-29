-- 基础信息
local base_info = {
	group_id = 133313104
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 104001, monster_id = 26090601, pos = { x = -460.170, y = -9.538, z = 5224.559 }, rot = { x = 0.000, y = 355.573, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 104002, monster_id = 26090601, pos = { x = -462.123, y = -9.483, z = 5222.988 }, rot = { x = 0.000, y = 355.573, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 104003, monster_id = 26090701, pos = { x = -468.506, y = -9.575, z = 5220.209 }, rot = { x = 0.000, y = 355.573, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 104004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -463.578, y = -9.538, z = 5222.915 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1104004, name = "ENTER_REGION_104004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_104004", action = "action_EVENT_ENTER_REGION_104004" }
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
		regions = { 104004 },
		triggers = { "ENTER_REGION_104004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 104001, 104002, 104003 },
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
function condition_EVENT_ENTER_REGION_104004(context, evt)
	if evt.param1 ~= 104004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_104004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133313104, 2)
	
	return 0
end