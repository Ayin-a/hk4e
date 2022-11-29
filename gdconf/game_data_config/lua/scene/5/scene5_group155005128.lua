-- 基础信息
local base_info = {
	group_id = 155005128
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 128001, monster_id = 20010801, pos = { x = 578.353, y = 198.621, z = 690.018 }, rot = { x = 0.000, y = 273.173, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 128002, monster_id = 20010801, pos = { x = 579.247, y = 198.336, z = 683.305 }, rot = { x = 0.000, y = 320.427, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
	{ config_id = 128003, monster_id = 20010801, pos = { x = 573.081, y = 197.694, z = 686.632 }, rot = { x = 0.000, y = 332.218, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 128004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 573.329, y = 197.988, z = 690.060 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1128004, name = "ENTER_REGION_128004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128004", action = "action_EVENT_ENTER_REGION_128004" }
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
		regions = { 128004 },
		triggers = { "ENTER_REGION_128004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 128001, 128002, 128003 },
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
function condition_EVENT_ENTER_REGION_128004(context, evt)
	if evt.param1 ~= 128004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_128004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 155005128, 2)
	
	return 0
end