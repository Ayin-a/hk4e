-- 基础信息
local base_info = {
	group_id = 133222340
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 340001, monster_id = 21020701, pos = { x = -4900.978, y = 204.941, z = -4629.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", area_id = 14 },
	{ config_id = 340002, monster_id = 21010901, pos = { x = -4898.229, y = 208.854, z = -4625.007 }, rot = { x = 0.000, y = 227.130, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 14 },
	{ config_id = 340003, monster_id = 21011001, pos = { x = -4898.478, y = 208.091, z = -4635.187 }, rot = { x = 0.000, y = 340.090, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 340004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -4900.988, y = 204.941, z = -4630.748 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1340004, name = "ENTER_REGION_340004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_340004", action = "action_EVENT_ENTER_REGION_340004" }
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
		regions = { 340004 },
		triggers = { "ENTER_REGION_340004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 340001, 340002, 340003 },
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
function condition_EVENT_ENTER_REGION_340004(context, evt)
	if evt.param1 ~= 340004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_340004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222340, 2)
	
	return 0
end