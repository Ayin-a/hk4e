-- 基础信息
local base_info = {
	group_id = 144001075
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 75001, monster_id = 20010601, pos = { x = 179.313, y = 122.527, z = 154.370 }, rot = { x = 0.000, y = 93.803, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 102 },
	{ config_id = 75002, monster_id = 20010501, pos = { x = 177.359, y = 122.527, z = 152.586 }, rot = { x = 0.000, y = 93.803, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 102 },
	{ config_id = 75003, monster_id = 20010701, pos = { x = 177.761, y = 122.527, z = 157.250 }, rot = { x = 0.000, y = 93.803, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 75004, shape = RegionShape.SPHERE, radius = 8, pos = { x = 177.509, y = 120.615, z = 154.500 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1075004, name = "ENTER_REGION_75004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_75004", action = "action_EVENT_ENTER_REGION_75004" }
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
		regions = { 75004 },
		triggers = { "ENTER_REGION_75004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 75001, 75002, 75003 },
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
function condition_EVENT_ENTER_REGION_75004(context, evt)
	if evt.param1 ~= 75004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_75004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001075, 2)
	
	return 0
end