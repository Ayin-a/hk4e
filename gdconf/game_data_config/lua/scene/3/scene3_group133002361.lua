-- 基础信息
local base_info = {
	group_id = 133002361
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 361005, monster_id = 20010301, pos = { x = 1745.778, y = 270.883, z = -942.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 361006, monster_id = 20010301, pos = { x = 1746.498, y = 271.180, z = -937.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 361007, monster_id = 20010301, pos = { x = 1738.341, y = 270.555, z = -940.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 361008, monster_id = 20010301, pos = { x = 1740.634, y = 270.970, z = -935.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 7, drop_tag = "史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 361004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1741.939, y = 270.899, z = -938.395 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1361004, name = "ENTER_REGION_361004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_361004", action = "action_EVENT_ENTER_REGION_361004" }
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
		regions = { 361004 },
		triggers = { "ENTER_REGION_361004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 361005, 361006, 361007, 361008 },
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
function condition_EVENT_ENTER_REGION_361004(context, evt)
	if evt.param1 ~= 361004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_361004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002361, 2)
	
	return 0
end