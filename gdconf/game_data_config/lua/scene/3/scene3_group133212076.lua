-- 基础信息
local base_info = {
	group_id = 133212076
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 76001, monster_id = 20011201, pos = { x = -3976.838, y = 224.029, z = -2137.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 76002, monster_id = 20011201, pos = { x = -3975.350, y = 224.029, z = -2138.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 76003, monster_id = 20011201, pos = { x = -3978.320, y = 224.029, z = -2138.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 76004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3976.848, y = 224.029, z = -2138.641 }, area_id = 13 }
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
	    ScriptLib.AddExtraGroupSuite(context, 133212076, 2)
	
	return 0
end