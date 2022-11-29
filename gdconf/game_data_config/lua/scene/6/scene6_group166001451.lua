-- 基础信息
local base_info = {
	group_id = 166001451
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 451002, monster_id = 20011401, pos = { x = 416.090, y = 386.151, z = 480.819 }, rot = { x = 0.000, y = 198.972, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 451003, monster_id = 20011401, pos = { x = 413.120, y = 386.052, z = 480.912 }, rot = { x = 0.000, y = 198.972, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 451004, shape = RegionShape.SPHERE, radius = 12, pos = { x = 414.593, y = 386.093, z = 480.141 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1451004, name = "ENTER_REGION_451004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_451004", action = "action_EVENT_ENTER_REGION_451004" }
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
		regions = { 451004 },
		triggers = { "ENTER_REGION_451004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 451002, 451003 },
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
function condition_EVENT_ENTER_REGION_451004(context, evt)
	if evt.param1 ~= 451004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_451004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001451, 2)
	
	return 0
end