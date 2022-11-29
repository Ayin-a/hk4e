-- 基础信息
local base_info = {
	group_id = 133307091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91001, monster_id = 20011201, pos = { x = -2180.023, y = 323.432, z = 4300.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 },
	{ config_id = 91002, monster_id = 20011201, pos = { x = -2178.536, y = 323.432, z = 4299.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 },
	{ config_id = 91003, monster_id = 20011201, pos = { x = -2181.506, y = 323.432, z = 4299.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 91004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2180.033, y = 323.432, z = 4299.629 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1091004, name = "ENTER_REGION_91004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_91004", action = "action_EVENT_ENTER_REGION_91004" }
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
		regions = { 91004 },
		triggers = { "ENTER_REGION_91004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 91001, 91002, 91003 },
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
function condition_EVENT_ENTER_REGION_91004(context, evt)
	if evt.param1 ~= 91004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_91004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307091, 2)
	
	return 0
end