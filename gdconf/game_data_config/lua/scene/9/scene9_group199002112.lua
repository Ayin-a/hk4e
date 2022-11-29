-- 基础信息
local base_info = {
	group_id = 199002112
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 112001, monster_id = 20010501, pos = { x = 554.843, y = 123.521, z = -485.224 }, rot = { x = 0.000, y = 127.055, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 401 },
	{ config_id = 112002, monster_id = 20010701, pos = { x = 556.233, y = 123.521, z = -487.832 }, rot = { x = 0.000, y = 303.374, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 401 },
	{ config_id = 112003, monster_id = 20010501, pos = { x = 553.197, y = 123.521, z = -487.697 }, rot = { x = 0.000, y = 66.671, z = 0.000 }, level = 20, drop_tag = "史莱姆", area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 112004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 554.670, y = 123.521, z = -487.766 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1112004, name = "ENTER_REGION_112004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_112004", action = "action_EVENT_ENTER_REGION_112004" }
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
		regions = { 112004 },
		triggers = { "ENTER_REGION_112004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 112001, 112002, 112003 },
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
function condition_EVENT_ENTER_REGION_112004(context, evt)
	if evt.param1 ~= 112004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_112004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002112, 2)
	
	return 0
end