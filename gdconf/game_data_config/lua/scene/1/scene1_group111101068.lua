-- 基础信息
local base_info = {
	group_id = 111101068
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 68001, monster_id = 25010301, pos = { x = 2275.804, y = 206.536, z = -1124.679 }, rot = { x = 0.000, y = 74.967, z = 0.000 }, level = 40, drop_tag = "盗宝团" },
	{ config_id = 68002, monster_id = 25010601, pos = { x = 2291.948, y = 209.875, z = -1121.737 }, rot = { x = 0.000, y = 276.208, z = 0.000 }, level = 40, drop_tag = "盗宝团" },
	{ config_id = 68003, monster_id = 25010401, pos = { x = 2280.928, y = 211.579, z = -1133.214 }, rot = { x = 0.000, y = 23.533, z = 0.000 }, level = 40, drop_tag = "盗宝团" },
	{ config_id = 68005, monster_id = 25010501, pos = { x = 2285.190, y = 206.633, z = -1116.085 }, rot = { x = 0.000, y = 168.729, z = 0.000 }, level = 40, drop_tag = "盗宝团" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 68004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2282.280, y = 207.063, z = -1123.859 } }
}

-- 触发器
triggers = {
	{ config_id = 1068004, name = "ENTER_REGION_68004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68004", action = "action_EVENT_ENTER_REGION_68004" }
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
		regions = { 68004 },
		triggers = { "ENTER_REGION_68004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 68001, 68002, 68003, 68005 },
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
function condition_EVENT_ENTER_REGION_68004(context, evt)
	if evt.param1 ~= 68004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_68004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101068, 2)
	
	return 0
end