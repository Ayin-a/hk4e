-- 基础信息
local base_info = {
	group_id = 133108080
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80002, monster_id = 25010201, pos = { x = -122.854, y = 200.661, z = -171.874 }, rot = { x = 0.000, y = 64.840, z = 0.000 }, level = 22, drop_tag = "盗宝团", area_id = 7 },
	{ config_id = 80003, monster_id = 25020201, pos = { x = -126.258, y = 200.608, z = -176.674 }, rot = { x = 0.000, y = 62.035, z = 0.000 }, level = 22, drop_tag = "盗宝团", area_id = 7 },
	{ config_id = 80004, monster_id = 25010601, pos = { x = -127.300, y = 201.173, z = -171.975 }, rot = { x = 0.000, y = 78.702, z = 0.000 }, level = 22, drop_tag = "盗宝团", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 80001, shape = RegionShape.SPHERE, radius = 9.1, pos = { x = -123.006, y = 200.644, z = -171.656 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1080001, name = "ENTER_REGION_80001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_80001", action = "action_EVENT_ENTER_REGION_80001" }
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
		regions = { 80001 },
		triggers = { "ENTER_REGION_80001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_80001(context, evt)
	if evt.param1 ~= 80001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_80001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 80002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 80003, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 80004, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end