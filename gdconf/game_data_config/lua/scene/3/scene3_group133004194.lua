-- 基础信息
local base_info = {
	group_id = 133004194
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 511, monster_id = 20010801, pos = { x = 2524.573, y = 202.479, z = -464.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 512, monster_id = 20010801, pos = { x = 2521.758, y = 202.462, z = -463.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 513, monster_id = 20010801, pos = { x = 2523.987, y = 202.838, z = -462.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 194001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2522.879, y = 202.500, z = -464.650 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1194001, name = "ENTER_REGION_194001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_194001", action = "action_EVENT_ENTER_REGION_194001" }
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
		regions = { 194001 },
		triggers = { "ENTER_REGION_194001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 511, 512, 513 },
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
function condition_EVENT_ENTER_REGION_194001(context, evt)
	if evt.param1 ~= 194001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_194001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004194, 2)
	
	return 0
end