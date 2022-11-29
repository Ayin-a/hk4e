-- 基础信息
local base_info = {
	group_id = 133001365
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 365005, monster_id = 20010701, pos = { x = 1539.004, y = 333.671, z = -2079.645 }, rot = { x = 0.000, y = 307.271, z = 0.000 }, level = 18, drop_tag = "大史莱姆", disableWander = true, area_id = 2 },
	{ config_id = 365006, monster_id = 20010501, pos = { x = 1546.249, y = 334.157, z = -2083.365 }, rot = { x = 0.000, y = 312.465, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 365007, monster_id = 20010501, pos = { x = 1542.525, y = 333.147, z = -2069.517 }, rot = { x = 0.000, y = 237.940, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 365008, monster_id = 20010501, pos = { x = 1534.613, y = 333.740, z = -2086.708 }, rot = { x = 0.000, y = 344.104, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 365004, shape = RegionShape.SPHERE, radius = 18.8, pos = { x = 1537.538, y = 332.785, z = -2077.212 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1365004, name = "ENTER_REGION_365004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_365004", action = "action_EVENT_ENTER_REGION_365004" }
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
		regions = { 365004 },
		triggers = { "ENTER_REGION_365004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_365004(context, evt)
	if evt.param1 ~= 365004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_365004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 365008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end