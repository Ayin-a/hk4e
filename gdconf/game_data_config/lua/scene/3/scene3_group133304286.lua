-- 基础信息
local base_info = {
	group_id = 133304286
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 286001, monster_id = 21010201, pos = { x = -1080.326, y = 181.295, z = 2928.451 }, rot = { x = 0.000, y = 120.134, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9016, area_id = 23 },
	{ config_id = 286011, monster_id = 28060101, pos = { x = -1087.243, y = 181.250, z = 2933.979 }, rot = { x = 0.000, y = 125.038, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 23 },
	{ config_id = 286012, monster_id = 28060101, pos = { x = -1089.039, y = 181.149, z = 2930.851 }, rot = { x = 0.000, y = 114.618, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 286010, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1078.349, y = 181.152, z = 2926.388 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1286010, name = "ENTER_REGION_286010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_286010", action = "action_EVENT_ENTER_REGION_286010" }
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
		monsters = { 286001 },
		gadgets = { },
		regions = { 286010 },
		triggers = { "ENTER_REGION_286010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_286010(context, evt)
	if evt.param1 ~= 286010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_286010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 286011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 286012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end