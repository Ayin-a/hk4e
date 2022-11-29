-- 基础信息
local base_info = {
	group_id = 144001076
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 76001, monster_id = 20010901, pos = { x = 132.075, y = 120.000, z = 366.537 }, rot = { x = 0.000, y = 0.000, z = 30.593 }, level = 20, drop_tag = "大史莱姆", area_id = 102 },
	{ config_id = 76002, monster_id = 20010801, pos = { x = 132.286, y = 120.000, z = 361.910 }, rot = { x = 0.000, y = 20.665, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 102 },
	{ config_id = 76003, monster_id = 20010801, pos = { x = 127.835, y = 120.000, z = 363.625 }, rot = { x = 0.000, y = 81.043, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 76004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 132.065, y = 120.000, z = 365.335 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1076004, name = "ENTER_REGION_76004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_76004", action = "action_EVENT_ENTER_REGION_76004" }
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
		regions = { 76004 },
		triggers = { "ENTER_REGION_76004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 76001, 76002, 76003 },
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
function condition_EVENT_ENTER_REGION_76004(context, evt)
	if evt.param1 ~= 76004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_76004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001076, 2)
	
	return 0
end