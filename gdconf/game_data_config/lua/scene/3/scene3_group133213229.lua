-- 基础信息
local base_info = {
	group_id = 133213229
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 229001, monster_id = 26010201, pos = { x = -3578.066, y = 237.921, z = -3093.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "骗骗花", area_id = 12 },
	{ config_id = 229002, monster_id = 26010101, pos = { x = -3591.405, y = 224.996, z = -3044.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_tag = "骗骗花", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 229003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3579.900, y = 238.137, z = -3094.243 }, area_id = 12 },
	{ config_id = 229005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3591.405, y = 224.417, z = -3042.774 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1229003, name = "ENTER_REGION_229003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_229003", action = "action_EVENT_ENTER_REGION_229003" },
	{ config_id = 1229005, name = "ENTER_REGION_229005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_229005", action = "action_EVENT_ENTER_REGION_229005" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { 229003, 229005 },
		triggers = { "ENTER_REGION_229003", "ENTER_REGION_229005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 229001, 229002 },
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
function condition_EVENT_ENTER_REGION_229003(context, evt)
	if evt.param1 ~= 229003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_229003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 229001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_229005(context, evt)
	if evt.param1 ~= 229005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_229005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 229002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end