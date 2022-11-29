-- 基础信息
local base_info = {
	group_id = 144001037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37002, monster_id = 20011001, pos = { x = -724.888, y = 106.622, z = 420.736 }, rot = { x = 0.000, y = 272.702, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 103 },
	{ config_id = 37003, monster_id = 20011001, pos = { x = -725.400, y = 106.622, z = 419.011 }, rot = { x = 0.000, y = 318.025, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 37004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -728.886, y = 102.600, z = 418.942 }, area_id = 103 }
}

-- 触发器
triggers = {
	{ config_id = 1037004, name = "ENTER_REGION_37004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_37004", action = "action_EVENT_ENTER_REGION_37004" }
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
		regions = { 37004 },
		triggers = { "ENTER_REGION_37004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 37002, 37003 },
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
function condition_EVENT_ENTER_REGION_37004(context, evt)
	if evt.param1 ~= 37004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_37004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001037, 2)
	
	return 0
end