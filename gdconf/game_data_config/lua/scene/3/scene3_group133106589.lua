-- 基础信息
local base_info = {
	group_id = 133106589
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 589001, monster_id = 20011201, pos = { x = -209.554, y = 291.122, z = 1436.258 }, rot = { x = 0.000, y = 191.621, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 589002, monster_id = 20011001, pos = { x = -206.604, y = 291.978, z = 1432.355 }, rot = { x = 0.000, y = 265.141, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 589003, monster_id = 20010801, pos = { x = -213.671, y = 292.983, z = 1432.234 }, rot = { x = 0.000, y = 129.113, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 589005, monster_id = 20010501, pos = { x = -210.086, y = 295.372, z = 1428.548 }, rot = { x = 0.000, y = 354.408, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 589004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -209.307, y = 285.409, z = 1432.772 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1589004, name = "ENTER_REGION_589004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_589004", action = "action_EVENT_ENTER_REGION_589004" }
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
		regions = { 589004 },
		triggers = { "ENTER_REGION_589004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 589001, 589002, 589003, 589005 },
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
function condition_EVENT_ENTER_REGION_589004(context, evt)
	if evt.param1 ~= 589004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_589004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106589, 2)
	
	return 0
end