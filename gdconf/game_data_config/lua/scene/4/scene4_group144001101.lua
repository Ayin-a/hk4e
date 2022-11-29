-- 基础信息
local base_info = {
	group_id = 144001101
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101001, monster_id = 20010501, pos = { x = 683.695, y = 123.287, z = 348.036 }, rot = { x = 0.000, y = 248.202, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 102 },
	{ config_id = 101002, monster_id = 20010701, pos = { x = 685.182, y = 123.287, z = 346.811 }, rot = { x = 0.000, y = 248.202, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 102 },
	{ config_id = 101003, monster_id = 20010501, pos = { x = 682.212, y = 123.287, z = 346.903 }, rot = { x = 0.000, y = 248.202, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 101004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 683.685, y = 123.287, z = 346.834 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1101004, name = "ENTER_REGION_101004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_101004", action = "action_EVENT_ENTER_REGION_101004" }
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
		regions = { 101004 },
		triggers = { "ENTER_REGION_101004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 101001, 101002, 101003 },
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
function condition_EVENT_ENTER_REGION_101004(context, evt)
	if evt.param1 ~= 101004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_101004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001101, 2)
	
	return 0
end