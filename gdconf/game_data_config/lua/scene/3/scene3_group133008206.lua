-- 基础信息
local base_info = {
	group_id = 133008206
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 206002, monster_id = 21011401, pos = { x = 1075.902, y = 379.997, z = -624.326 }, rot = { x = 0.000, y = 241.284, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9016, climate_area_id = 1, area_id = 10 },
	{ config_id = 206003, monster_id = 21011401, pos = { x = 1069.724, y = 380.070, z = -626.247 }, rot = { x = 0.000, y = 305.652, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9016, climate_area_id = 1, area_id = 10 },
	{ config_id = 206004, monster_id = 21030501, pos = { x = 1071.322, y = 379.992, z = -621.773 }, rot = { x = 0.000, y = 115.682, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", pose_id = 9012, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 206001, gadget_id = 70211001, pos = { x = 1071.856, y = 380.684, z = -629.100 }, rot = { x = 23.084, y = 10.595, z = 0.850 }, level = 26, drop_tag = "雪山战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1206005, name = "MONSTER_BATTLE_206005", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_206005", action = "action_EVENT_MONSTER_BATTLE_206005" }
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
		monsters = { 206004 },
		gadgets = { 206001 },
		regions = { },
		triggers = { "MONSTER_BATTLE_206005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_206005(context, evt)
	if 206004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_206005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 206002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 206003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end