-- 基础信息
local base_info = {
	group_id = 133310462
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 462001, monster_id = 20010301, pos = { x = -2091.050, y = 191.551, z = 4550.262 }, rot = { x = 0.000, y = 103.016, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 },
	{ config_id = 462002, monster_id = 20010301, pos = { x = -2095.932, y = 192.074, z = 4551.758 }, rot = { x = 0.000, y = 107.357, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 },
	{ config_id = 462003, monster_id = 20010301, pos = { x = -2093.676, y = 191.600, z = 4544.427 }, rot = { x = 0.000, y = 37.558, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 462004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2093.019, y = 191.791, z = 4548.852 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1462004, name = "ENTER_REGION_462004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_462004", action = "action_EVENT_ENTER_REGION_462004" }
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
		regions = { 462004 },
		triggers = { "ENTER_REGION_462004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 462001, 462002, 462003 },
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
function condition_EVENT_ENTER_REGION_462004(context, evt)
	if evt.param1 ~= 462004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_462004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310462, 2)
	
	return 0
end